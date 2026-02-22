Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E447145348
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771749894; cv=none; b=FpAKVDOEkk54IGD4QX/5qhQUklOOc9+WgevDTsjoJeVayOU/eStuJyVxU80IA0t8EkTAurWpLq/aPNF8Wzo1Ygf38M9ym7ixGzWbFu8LjbvfYxdBjimgATHbSz07/mYdtzLqb0tsjXDnPwtPlWEw0BcQY91Ff3iFknCFXHBc1ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771749894; c=relaxed/simple;
	bh=CwoGTcnHR0iaY486vLi1kmxqcyXFHNHRBvh7jA8G+5A=;
	h=To:Subject:From:Message-Id:Date; b=ntmRsx2MfoVcPV5gQ97U0rvWf6PT6s2zL5N/FIF9fkKdVbp0ueVNFjfQofQ0uteUxDOqvBO+2rmwZOFE2vUoJyBk9NgX0Z/AAb2dypCKBxt8y426rPwAaF/wdnLpbbok2k5ppfftd1sEpIbU7H9t0m2HWqwZRBpE617KFu+dzGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCWK2U1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCWK2U1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAAFC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771749893;
	bh=CwoGTcnHR0iaY486vLi1kmxqcyXFHNHRBvh7jA8G+5A=;
	h=To:Subject:From:Date:From;
	b=FCWK2U1FCheJs9xn8fZ51nT8Z+ux93o12k9Hr0pWT9M9vjeeze4bsdUxxh4jc+Emq
	 SBQ4ynjLNFNYZ+dbSXi1u8KZmB4A+2Ft+VdGsmSUsoaSCceYUC1zaa1li7ZCTp5OZn
	 x4lvvxPoq/YvUE1G1vEBo7p1XI1K8jNtTb/PsDqQZZNPrS9dJiWOUIwhBeg542Zv7S
	 8/X4W7gyQEjQIUKdht94DzlOYBnimHu5YqfhqO8mxPFEB/CjXzQRZTwBhFVW7oIskk
	 Zkhs8a0IKL1tqqbrUe+E1o8K/e9ALO0J/fheFtFcsd/mVKkhC4HF91okIh1qCLp3AV
	 l4aRXN729L3rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FECC624D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174989358.4141.17010052077183080569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f5348063224d8e1a3cca882c80414125ee4a67b7238b1e53901685905b2d368
Date: Sun, 22 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771749893
