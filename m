Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA902475CF
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787531434; cv=none; b=FKyq/r+l2H7Fy+Fbsnny0Ir3FQ8m1LEVNGb08FDstgqFmJOCbGFUDgXuws7WIIPRi9k7o48+F+E1+fhzPs7eUvKSQjeepwpnswaHuVoohsaQDTFTlLyD4uYZGpOQjMU2lImETZW4yAlPiR2S8QXffsDO3nTO2G8QRMdyDCHeIhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787531434; c=relaxed/simple;
	bh=heLPuAxI++ypQR5bOCyfofoYVZSax4n2o4lSkdJyYYA=;
	h=To:Subject:From:Message-Id:Date; b=A+lI1lbKEAnmuh0y15Dhw6QxN/YQO72AGFemAed0EaTIPw1O1Ja/QRcVSA7o37Fwj2/dL6tA0tOJ8EcoOk8bAgbkuT6WQM/SbeQRa+/LXzeCeOaAl1hzFdTeJkdL8PIePhmPIb6tXb0ble0EFRnOaY3TE11XQHYYagkFJLyACDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhYy+B73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhYy+B73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA52C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787531433;
	bh=heLPuAxI++ypQR5bOCyfofoYVZSax4n2o4lSkdJyYYA=;
	h=To:Subject:From:Date:From;
	b=rhYy+B73qsyBMcb87HMXbXjegPaJGEbyQHP0lMCMZstOlJ1Uc7QobY3AjEr9ZSXYD
	 kzOtUUJSEYbNjm8tG3GyY+l3eMcEE4/zj/H4YA2NOyJqYf4yuCs2XPXtTGSF4n7wT/
	 66aV7P+qMG7KZCsggL8Ou3MEk/vwgaCPyE5UfT1ktA211nYP2YGZ8vjt4VFnw6vg1F
	 NT5exV5cI+ZPiRID6xToeiqdSqel9O0y/AaI9tAElnUHM5zRwOKFErSiF3Xm/NlDBp
	 kvBrvNJQauI4Yj7gKdon/wkoVUvdy3PCgvHj2/In0PgieFfn9Ow41SZ1H7h+xoBhIO
	 zcmJnVeGNwoXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F0C5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753143368.27578.15822671946467640328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b8f5e185f6ffc38f8bc30ce0977463b75fec1b57a3407839a8c0d78460ba61
Date: Mon, 24 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787531433
