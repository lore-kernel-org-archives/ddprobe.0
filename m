Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B83C14AD29
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740867536; cv=none; b=JQx5vMBImbPKlIbiHE1ZmPdHakkMIO+7Ta7Oc9wcfG0DpU/aJc82O8B9kL2tvXnYWvMFUOSWbeOmTVnpvlUyDob2hOKRzCsLM5Ysx0Ymhh6wiZfLEfeE8M+kNNjAkrlTLTDhH8/aMjzZhKJiKhTQCxbu8f32bs7xqeKoxqcKbAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740867536; c=relaxed/simple;
	bh=/F+VsXuRidszibpLwTVwIGRbp41zRZ8HWtQRAB2Mxyw=;
	h=To:Subject:From:Message-Id:Date; b=nnZ1obKOZVbs/4xUzKSIKIZaP5T161rld/c78D/2jq/GzR0YvdenRllwE3JRk24wSVYUPM2m2qhg5q7agmLUxBlq86gJFohMIVEkSYAuGN10JH+q965ydyx/upVLDGlrT90F4yDp0WdDuvqQOjORctdNshcpPtlyaxEYEJXORe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuPAEN0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuPAEN0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A417BC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740867533;
	bh=/F+VsXuRidszibpLwTVwIGRbp41zRZ8HWtQRAB2Mxyw=;
	h=To:Subject:From:Date:From;
	b=uuPAEN0L5IMmcEvm/5kzzbwq/mlfnWXbAaraeXd7m3XOaPmDLDsNned4PaUZvXSbZ
	 qL+ayeLYvhYcIrra0P34QNUTO0PLbF7ivfAQENYJi/gAkaaKx5/S1jZTlVL94YubUT
	 ACsqkfEhuGNLCkVdJzy+XuZ2gbFeUpUZRWA3MEcspklCUk+eHUCeDh8zB53F1Rdvnx
	 gAButxosq2RTI69wNMNJQwnX3tT4rYpDpZEoef9GZm+MlVNIUu1vZnEjnrbM06v6Dy
	 DXsUhURvm1WG4wM/NEJqFMVEioKj4nPaHjro8BCKAt34LVHWf0H1nkMaeoFzF1hkQ8
	 cEAEWvTabNToA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DF5C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174086753357.30789.7559836100402912976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ce68069d54636738fd06289ea2b60b020b3fe5792a42d32fdce263717deca8
Date: Sat, 01 Mar 2025 22:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740867533
