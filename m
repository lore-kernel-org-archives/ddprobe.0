Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F720249E5
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748555394; cv=none; b=B/YGYkMa/seIRMX9m8qkPIhmJd6rtrkXgC6sFvIZiLRo5AdU0TDsDGgzM7VcAXcp9kcZLp2xby5HluwoQBQy1HQc3Ik0R4KiGS9AzNO4uqhCAiiCZnpq2bRsYnz0UTj0We+kZyPQqBBbCIA9GYyOJZSY7CGyFG3/wsSz1bXtOW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748555394; c=relaxed/simple;
	bh=myUPKLzIGQMK2Bt7FXxUi9o4jDnnXvOZCRwx3fpe1MM=;
	h=To:Subject:From:Message-Id:Date; b=gvvK5q82lWRBL7QGVi+fFkhTWilMc1AMx+VFntpF0BmLS+XQi2g3SYW2oi2chYepBu5J9SfOHSPAcWzPPGzKeUptGXNOBNS+AXQl8NXlBl887c1jcIk4PBNBDpooy1+TPUft7YSoT5FUswuDFPeOWIK63KQlBl4pPqZk538vVsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QR3Iwr6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QR3Iwr6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D45C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748555393;
	bh=myUPKLzIGQMK2Bt7FXxUi9o4jDnnXvOZCRwx3fpe1MM=;
	h=To:Subject:From:Date:From;
	b=QR3Iwr6qzJGCsX6FIF+fAaCeOxSPx5KgTyl+bIdFm78tjCaXsk4QYLBErYUfRn3dS
	 OjTMDgY6ZyLMTcm8bpXL1WAjDZkOcDuT0af2qeajsZbVNmXTOKYT6Odz6euVJbMkT4
	 BsDE4B/3Wib9hJcdIgPjGEy4t9F3IvIt/GH69hRD+x/m8bP0IK3HshLu1f4t/5xhSP
	 Q2J+xWADOjtBknpcgR46UbGGbLfbxDMWvxd1OQ9CTVew2rwcuDeFZhFSzMbb7zFNKd
	 Cb5ksoNaww6W9R47EwXQna7utIjypaFnJ0eT9y209j8iMBT+W2uirufhfQx9hUf0zK
	 M0hg4evP/jpKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900DFC5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855539358.24020.1522671143706803916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328cad529935cc58250d4070bceb132d5aec94036239cfd71620613c7c7876a3
Date: Thu, 29 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748555393
