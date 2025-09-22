Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427AB30ACF9
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758545394; cv=none; b=GRxQHfTDkDq5X4ck0MPNBzjlMSQMDam0eodHgMag7QyOdN34eCw57gwBYdSTnZ1jqDPh2UF3DEhPwtSAnFzza9ePsjVyaYRGeVHI/I367xjXqKD4k/nSpKThaoCFK0Z3CYxx4fIMtwhHVBXsq6o3m3lPhg6rJggjHdvgCPbg8m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758545394; c=relaxed/simple;
	bh=/yQoUQWOQh9LXfD7+E97lW/IBPFZvg45FPOt4Tdnfec=;
	h=To:Subject:From:Message-Id:Date; b=UDxkeX0hSgVZL8MwCom+KkYNI9P7LQx9L6Kn4C0mPcwNVaDSJY9r8gKk6DqyL+BoQy0DDkHfGD+g+XAJb+OC2fIZGXahsKaakamDtK7yMj5m2sPJBxa9y4ZFOjxUyW/KmpyvKkqTEHfR9raY7HTHW+Pah/NTAUSpX6ccO7srME8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNnDeWOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNnDeWOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BE9C113D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758545393;
	bh=/yQoUQWOQh9LXfD7+E97lW/IBPFZvg45FPOt4Tdnfec=;
	h=To:Subject:From:Date:From;
	b=lNnDeWOMB1Vc15BA5skMHohcxbHgtI/tu73AO0Grt1s4XknKQTgR4K6+yfoliPF7i
	 xSJ+AjqRS2sr+kpqrmTaZIxyikxBqDzyl8HuMZeA1VPinTAiU9QnUkFw4YaPiSalr6
	 O9dSVeYw8YghWsZowOum+CozPv9uRnAVYoyCdd8mXS5M6KgGPLwRF4pT0ds4c4Fgxb
	 WJQNS8TyNnUJmRgMq0YTvmLfw3ZQjVigJzj3RgE6NPQMGT0Iq2mIO0luWQxpWA3fcx
	 ny0iZRP4dasbFUmP9wIe/cPWMKljI1GgbeGBZYfpfLxWMwpnsDdIOgHeB8qm7h98Hs
	 KzAsSqJBS0Q4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3CBCAC5AC
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854539370.20677.7534156029760251209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9692d55dfeae2626e34cdf939ddc67073451902948ab2f39c4d7a64c1a9e0204
Date: Mon, 22 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758545393
