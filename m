Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25589175A5
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759256394; cv=none; b=YXd3X3c4kYNvlxVT1sXNfWEWf+S3XNAmgY0dNzreozrhWwyORIlTNS5Q6rTXDRGCjfiGWSLr/BLh/wORpoGdv3Wohd6syPySEy33fHOJnQ9512e/Pzj2tJch722oiZZmGyyHkibQ9eotJUOJ8rVnmPuvYsgtnVRXPMnaGVOkekg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759256394; c=relaxed/simple;
	bh=vNV60GM5jfVfqVFzos5BF4Yjpr8WFjW078E+x2O4/fg=;
	h=To:Subject:From:Message-Id:Date; b=WShGujZyzX9PEoRtw7/sVE7HmkclH8M83T71VCgQ7Dt6qoAumZYNb0iZf9Wq9cTs7mPaudB1hAMW3dQh6QF99LjR5FdNoWGBaYW+kPfbuvFfGwuZ49OFHaQpCNjHkvdDBN+0qZjypJBsWUfX59xv8fV1AOIjwNRdmnGG5P1BBbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiHNoyka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiHNoyka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3228C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759256393;
	bh=vNV60GM5jfVfqVFzos5BF4Yjpr8WFjW078E+x2O4/fg=;
	h=To:Subject:From:Date:From;
	b=IiHNoyka71ndXvBBmJMOTuXcQ+hl+8duZpXuBmzeA9gIv6qz2yC8A66npoIGH4NFn
	 h4gP7PeP52ZMaqXxPbxycIYnUMuFE94y9yhzRRMc3nqMccWMCFIXkv9UGDZwddnfin
	 qyZ3vOlqJkZwQWpQr8oMM8WIzmpBepzzGyIIYsHOuwORbZ81JClKnP/PI6vKB2zslK
	 4n2cJ0u1nSj1LyU1MhYrCtGI2CxIRG4QAJ37oYNf16+wtpT4f4jwCD2S1gcpPy7nHV
	 Hf/FZjcsEHwASxh2XmtCqTwyQIuofnXvgoy88lziVR5m2/k7kdlR1RXjTXDJCofeP0
	 6/I36ap/EjAug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA0CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925639358.18410.11247802548088022454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85387d76a251e0fe97f3b5722de56bf8cde7ce7cbc49e2f90fccd86e0cec6967
Date: Tue, 30 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759256393
