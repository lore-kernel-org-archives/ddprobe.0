Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2323D13210F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723329354; cv=none; b=OPrw0M0UqVwTXZh4PlwfmrciI/lqXeDghV4RdSquW4tKYlzaeFrYWekDyV66qOh+B69fwmmiycmysOvYmuLKfHyxyL6/UXNGzbq8pNJ6rucxw0X8t17whO3hacCuPsE7hVHqtNQ2EC+gb1XovlzoJtRwL+OEc5LNsYOIqFlzscM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723329354; c=relaxed/simple;
	bh=gb54O2RIiesXhOm7A+2Cx8+pCK3+OalLH4E96favkf4=;
	h=To:Subject:From:Message-Id:Date; b=RxtBnWD4wIWwnlIFQZfrkSH+fN6kmouTFTSTD6SAOfes77A+oUBmeLpcvIfF7tMZOfdqAiIIkqvvJ9+WjB+GTUCnq2wd1KVo4pA5xrW2VznKR36VYWp+0o1aM6rDgKSl8IDa7+Jhzzi5dhi2rjXi0LgnhiLceVGLtGGlgONyhYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mb6R2i3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mb6R2i3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79BBC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723329353;
	bh=gb54O2RIiesXhOm7A+2Cx8+pCK3+OalLH4E96favkf4=;
	h=To:Subject:From:Date:From;
	b=Mb6R2i3rqQH8ogQhTQIjw4+w6uXfvvsm2PYm/7Zf9irInC6MoUuEZR6pPnwgN0yPr
	 qgTd031ARZIQDniwjOti+FrCq+KxFyHiX9nwYcqdVDvypXcZH/imuOZEB4r9rEhGag
	 TOB0rgvi9HOK+31MYKpPyHRLd6+KtsVMm8TI5uSGMpiJRekU2gTfzDdob23C6be1R/
	 Qma0C0NJr/tNcTzVA5BHvlykmps1cWbbOEQlEgYmy9N2DGCffy3g+ySs5n120ReP20
	 WHSVnMilPSkm6fJOa7aFCLDnInMeAn7hSbLsYptQk2zFNhiuUI38TXhSfA1jvNgON4
	 KxQ30453MuJoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B91C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172332935358.30836.1861942031978967137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59741ede69e928eba2b8d8550399de1d53d0752d088d8425c6114e37a210a3e1
Date: Sat, 10 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723329353
