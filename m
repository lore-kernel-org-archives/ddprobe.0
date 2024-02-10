Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A23C36AF0
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707577697; cv=none; b=XpyWhwrUOQ8fQ5ZADjl0gGuCZdJ3ZkoKqTGyfM3emYtBiEuZRqrVjk72y9yZcBZPaGobJDV1Fr6iubUjIqzMEGZdquwXhCaMUt8GMOJ81cII/r7OUxWIfMy7sdj1s28vftWJWPLcZk/i3cAaWpOqYp8TrtWS3sNUM+pgV8cc5is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707577697; c=relaxed/simple;
	bh=Iw/F96eS/dnWvpT8vJqeQ4V92dpMm2khxnIspFYNao4=;
	h=To:Subject:From:Message-Id:Date; b=D/Fmn7DUeidC5Aazc/NQdmBoVpSLhOffuyFgY8wdazh5AyPg8jXwqvI9Mc/zmeKhiRCKrphgloHQdk2i/VUeNBtFdT/vKm+UKEa1qhTTG4bZYLi1UTu1bCJwLOJTWSslOg+hdY1iL+kSyYNwa5vVdtaiLJ5pM8VCYTQzvAIJDDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hK3auHfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hK3auHfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8945CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707577696;
	bh=Iw/F96eS/dnWvpT8vJqeQ4V92dpMm2khxnIspFYNao4=;
	h=To:Subject:From:Date:From;
	b=hK3auHfjeTAFEqSU1dw+dgLt2sjSslo+iEB9yGM3Z3n74yqzsFpBzegRp2TEnuQg3
	 Dhd9nfInWkVvrG2Max3HbtRtlvIjsPB6xVMy2db38uC/cNvOkTKs+cwPbJJ9mfCSzs
	 877D4dVLmdRF0b+AKdvWQf0g8RM8uTdjZ1UGxqdt3+IyQJtzboNz8BAmyAnG3SQzKK
	 J/ytdOAU9o+wbUorXG4btZF6DXSbpQmDFLGrbCVpcihHMipbwAL6z5IGLj/z8I3cYM
	 NsCFazGe1jnd7ia88Ti/sSRm+Ih4eBNZK3UAcLFv5eJjm3Mibl6AGar4aSV4riKzC6
	 wNcmoDwL8FVXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B6A0C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170757769640.7190.117241933529653123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170e1a56c522b5eea0fa260b2def828f45f3f75af9300a50d08de7d084ea03be
Date: Sat, 10 Feb 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707577696
