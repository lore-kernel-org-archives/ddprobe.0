Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321041D7E42
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748639994; cv=none; b=VQed69WNfjyQNt4p7/DW1gxh9UMrz2Kg1ZGyk5A85ycKxFpmnnrza4s1HNBGW+RobR8d2gTSeh1P5VGATShhNPrDjH9upX4YNuS0KjuzGNVIgVmEvtSSrKtEkU0H1EWi4h2QMWnI0+kIZ8Oo1Coth2fxPJH7ekjL9CjpkFsKahY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748639994; c=relaxed/simple;
	bh=PqOCjJ1Jd2ct/HjwuU9t8V+2shPRuQWOslS+kjQTrwY=;
	h=To:Subject:From:Message-Id:Date; b=WGFmyzUfWzKZPvvhUYVSVwnqVImMaBPZ4qWt/KhzM/ljkq7njlZpgDcVMuj1zKzORHBVOYmhAdjmWeQ65DgmLdWWm2sCWDLlYbDm5PVWFsRsEigAZLFFvCln2tSLLVtk2OV8wNjT5tDcOCsIfHgo7rP1UW550ACtXEJWBcpmXKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dx+H8KeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dx+H8KeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A284EC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748639993;
	bh=PqOCjJ1Jd2ct/HjwuU9t8V+2shPRuQWOslS+kjQTrwY=;
	h=To:Subject:From:Date:From;
	b=Dx+H8KeBcrOEyZ1O2RjLsaMu72RX/QuldXyeANVCXpJfaHHodut+p9SMXXRFbeQch
	 Vt8vpmb0H9Z2ZJSO1SB37uDEr6SEYjAUmYzKBtUrSFuvSwJO0VAx3vjy4VlGfpyea8
	 JVnttB4IZp0odI7ueNCOdjThMQ8sJchVczlvw4lNnNzZXU93RxLR7MuncGlT51+MCM
	 3yRwmbq3TLuJHSX4DciMLFj4stLuGMImtX5LV1+dzLBiOnf7cNFT28WkwZfcGGGK/k
	 JZRMGz5FKHHWuCr5lJESowGMwFXcCjJje7k1of7MGrElWCMZgv5nFTb0GoSZWCGZC1
	 +PTS3cYZ14wHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B5C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863999357.32551.12406290530672359420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e740ee337d77e91c18ac35f9a95e8831b2433e5f372542e5472a898b1f9850
Date: Fri, 30 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748639993
