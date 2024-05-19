Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6370C39B
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716087143; cv=none; b=TJIzUyVk7e83BlrfmI8/TDkSXYWMuznIyIX+cUh+L70m5IKjSd2c0MO8nClk8BQ3kTE7DsEcQDQizQtyh6Ft0oInR7OlRHsbDHPan6dApQ6EXECXpRDEM5hoSEpACkKcpSZSZOYZCBg0/YUTg1yrg9VszW8UkVTixcu+l1wYCvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716087143; c=relaxed/simple;
	bh=aS4eIoQuMwGdetre8pEbYBtR2R7n9czt37WqhRzdUYg=;
	h=To:Subject:From:Message-Id:Date; b=VmgMutqUEKcVGanQOeP3kxvhmywISrcM5ZaHnZnYwVk5HK+ysK6r9k3Zxs8Oxb0ndYB6gni0a7dy02WqsI83bDz52Szqz1MJVmXVN73+KavSN72W2g0c9hCSjiqynpViD4kwK+sVoDUPkDEUIaO8KswCascUgiyrMkUTDlnvkTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7Jp3//e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7Jp3//e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE8AC113CC
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716087142;
	bh=aS4eIoQuMwGdetre8pEbYBtR2R7n9czt37WqhRzdUYg=;
	h=To:Subject:From:Date:From;
	b=k7Jp3//e5jHBwX3AHmUmm8IOdcINzcYH9qTGMWSOUrULxQCSM52b0lHnVHrFFVGR2
	 XxN36ZoGGaZ47DCXa6mbeD/CCvSLVpTpuCGtZ/MJKeV0nkr/axWYw0+mlaWm7j00N9
	 j1ScEDHaMQ3Iam/4g4vqiEDN36IfDM6IvM1UIDkENCmfeu1Xt9Pl5938kJZ+O5i7w7
	 nDP3F2oOwjbdlrorBZILYWHIM8OwSzsZQGn3rSYkeSbqtmHdx/+ODAH4wi05839/mk
	 YvoJ0yYPmDH8h5zDWaEQ+ZIk/rp7ysGk1YHqStgDJSGxum6u/plOo9dGPi6rUjw5MZ
	 vzcAC5Mfx6Z/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49DFC25B74
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171608714278.13299.9686339959329292216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c581133d1c92822e89c34229a7bd6c5ebeef0d2927e975435bb9222f7e56150
Date: Sun, 19 May 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716087142
