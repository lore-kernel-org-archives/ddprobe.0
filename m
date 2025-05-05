Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2263D1DB546
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746476394; cv=none; b=TvF6Ge7pT3B9ikD+6fht1azNBIz6ACOWfGcr0xE5WbaNKsBm5XScxwDcs/oCGIizNY3k6jtoR0cmEH0Rv1lrxtPWtK6lVHbSzvJMP7yZulCs6Q3bcX6LHif2tK4u6lwCc1HwSe3ZTKzGqBMLGsFpuipuWwpRFiobggGxJUt5kNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746476394; c=relaxed/simple;
	bh=PqICHVI4oKMlXDWfZ05z4FsDKg1GBEoQAboN3yQSXus=;
	h=To:Subject:From:Message-Id:Date; b=CCSAvJDerKlop12gKpshNVhKwec8JqgYCbuF+odKaQAP4Hw6FyVGyNFJfpJxFBk463ATWFmyKbfOQ7yVR31GAyY8aZCnY1KdaUcDVfTTQztd5duFy77hdZCkaAr3JNKOQDhOhwm/eM98b88P8O+15ByncPBhePhLKrc0UupvNm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzspibwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzspibwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE83C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746476393;
	bh=PqICHVI4oKMlXDWfZ05z4FsDKg1GBEoQAboN3yQSXus=;
	h=To:Subject:From:Date:From;
	b=tzspibwckV5XaELpX2W7Uw8q/49UdNd3/Dxvt1cnV1Nr1QGYJIdZAztwD+L+jKkZH
	 N8PyIVat27dJVw52hQ8pvBNDQEBXYDrP6zgoq7dDE9tMrMmT13sjIDcu8MDxw0jRHa
	 tt0GnMhwuykXxwBD13kVNepZ0AvabzjSWyZIqidYd7d9VAaYf23EkVXCfLOZhQNKxJ
	 8IXg75dZ9y+ifJl8j/CL9S0HE/Sqi9+jiRMVf5L/LYVxobjiCynhuI69I/v88yd2pJ
	 pDZjht7svn3oDwSaVFrbyZQvvW64U2Td9NJPUvPfkeH4/qkY1bxcilessIxDNV9w9t
	 UdNFzoPRQ6WjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4CEC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647639357.28585.8535024042754086597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf41ede1f72e2aa842c38fca88bc2cc3dd1147b78d1cf9bf4299aa8c2ed52777
Date: Mon, 05 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746476393
