Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C256241C2E8
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770220433; cv=none; b=DkbnKE3+gOHCydL2Iz4czCYsKYH6i0+Fo6Uone+yUjpErdBWndOsL3msNAZdy0W/VEfoG29rDN8ksgoDb9Ct1PLQfWE+XngxnBjTprvH1sZS0+kGT9VQRRRSJB9GfYhY+wW+zWXr6EVZ6hu0hjDyDqrgTDo8O9hnMlhaHpvYu1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770220433; c=relaxed/simple;
	bh=6oKw+wsYzbM8EXkobpO9JjyAkZY5j/13Rsxbm8tTqZo=;
	h=To:Subject:From:Message-Id:Date; b=sfQ/M2QdNuFZqiH08+LhMqQnscEgp1cO7VmF7eG/zOD5BP8meo6CpoDjIfthvm+PM46TqjP/39tzzqDgpMotuPnBZsOlCKxBdr0bGYwKNmgjaOvoq4tRJ7f0cmWeu6ifiGVmxVDfTyd3ekuIn66lOYUDGRoTCgy9ya4/cknvcsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WU9BTkOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WU9BTkOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B93C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770220433;
	bh=6oKw+wsYzbM8EXkobpO9JjyAkZY5j/13Rsxbm8tTqZo=;
	h=To:Subject:From:Date:From;
	b=WU9BTkOdyPtfy/Tdg4Hy5hCf7VHeEjIGoRRbRRCuD65POBkm85NhqJT6+xhompb2f
	 jk38V+LngeWt725t38nBvMT51RmoQKzLkC6L+zPohY0kbr15htempeTZC2/YwRI5LP
	 hlHJaogh8QuY0qGn4YMPnpxD5MFuH4bx1Kuz/xctxk8O/mT9ClanfTkEPH7zORV2L4
	 X9QkMR1+4EfF8PQIug8eYsEXSN+Vg4b6YkzoN9LPfpJM5Th3icBQoX02OR2GJ8yNdE
	 gvieefm6DNyGI0HWnSXD75r2z1CvDEZN/7hzSO9+Uo5mah3w/UfQnQBLNBCSaS3mnQ
	 XGpk/1MDzQbDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95603E9D405
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022043359.11877.14320143638199758510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37e70fba1f5de731aa0651e88d291739c4e1cc68cc05f667bdb492de931a094
Date: Wed, 04 Feb 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770220433
