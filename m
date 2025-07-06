Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27539282EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751779795; cv=none; b=ZA3oZur1X4cfg51uZkla326DtjnX6OghgySgRKOkJqKzTgECo9kWg2Lk4bmc5K3mksvvOOhdTLb3uVg2u5Hu+2RtF2gBvizRVwu+TA2fP1dz3m7T7NSOTd32Hi+aJG4sOC6+HmDXuvocJGws/FfA3wDIThWZ/0B/3jzvJTGnR4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751779795; c=relaxed/simple;
	bh=2tPr3QQrjm2LAB2lUyMTZx4ywUxCXO60ezZaJDRRn0w=;
	h=To:Subject:From:Message-Id:Date; b=iNsDS0bZwzlZjX29rYHPE/Xiz51UFuJuNuXAHWI5z2TCCrNnDIvsPiIjXj64jLLa9byQ7HrAZ1FHmf+2jckCbO39SOyJu9GkpzZOj982WX75N8VCTVU8JSrJdT5odEfbWIWvnKaYBX5SeUql5YyHHnmXRPbIKZCj0sm9HIIFHIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kz3ArgXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kz3ArgXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F27C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751779793;
	bh=2tPr3QQrjm2LAB2lUyMTZx4ywUxCXO60ezZaJDRRn0w=;
	h=To:Subject:From:Date:From;
	b=kz3ArgXgS01o7GXHO5v/FHUfUNIfdMDOXWU/KeFRIFT9CLOOD3wG7MXVCDgbAOWDk
	 GLC/LUed52Qcngq4cgFgXh79+DrRfEO0gKje2cC0UIxzS5Kn6sxsR3tX9jO3F7a7/B
	 VBu4nkC6hIBC4lTstBvGaiy4VCTMU8tqhXQcX8MwllXqG2DooBO6VeY3Yf3ALFKrGF
	 8mbfSE0kyuupprjcCasPC6j/b6xS0xgYZ23opsEiGJI5OVgHD3GrptW7AKttV9yfgR
	 1tbdUW03zBRYccnjj8FP9i3FDp/vvQAJsaf6jzOah0OPobRoJLleU6NtjNECNoGB/d
	 dLsV65NwkWNDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB0C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177979357.19414.365086010311443661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eced73b1edc6836853ddab553e62454c60eab4808bf37fa6bb4c98c4608e27fb
Date: Sun, 06 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751779793
