Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EAC16F0FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740206934; cv=none; b=bcD27v3A/7/06a7+FHv6TdhOok/F9t2AL0p7Cv+UqU9c613bG9u7wdT3JCaSEs5woRlNRi9Zw+CyGTkahVtvN9KxmCqiPSWGtLN7gLmfp55mhgwFw6hNIAyOD340ao71mmaGjZZcA+9S3QyrX5IunZ2GuZW5ml2qZ+W6vZsBfck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740206934; c=relaxed/simple;
	bh=Iqo3UBXqyHkSzlkMfAMJvoOZVBymor7/WcqAz3r6K6s=;
	h=To:Subject:From:Message-Id:Date; b=Jn9U9jdMjO9C9DqhcPU2Tnwm17udAZI4EgauSC2noHi3yddXATFvws1ia8hV9K4+V9n833vs4363Qwz3fDP+mDI/8IfRm7pYyXhwN1RRVMrcGAb+U+pCg9tbCf2Q3h/GZXuWkPb2BvkqKuaMiFtnPfedSfTIWIB/2sYD2MfEiQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NT3IkSIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NT3IkSIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AF9C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740206933;
	bh=Iqo3UBXqyHkSzlkMfAMJvoOZVBymor7/WcqAz3r6K6s=;
	h=To:Subject:From:Date:From;
	b=NT3IkSIc9Ge/EWQlTAhgjk0H35dWa0XubIGLZhMyPcn7os3CpdnQwO57HOspJGJyG
	 0gPAy4HtN/L1nyhG9xSb23QPCBiZYJlI931/EdqjBBaw20KdtrP3eTm0RLBfPbUij+
	 JB9ccbWrvty08RWOhG1gdHFigqu+XjR0I9lllFfXBL6UZt9vyXSXLgmpAD9hkJC5m/
	 3s5kkq4Qvw+yrm141COvQBirTVMbe1SghCh9c7pMmVGU7UoUC3OPIzUAbjFRTYxMHO
	 H6BvlKhD5IGzlU3aB2pWn+ErY7Hd5Wj1eQNrjdRbpdnV/WUVDKybgQHpI0goGPCQeE
	 Y1Zh4jzBDvhZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F21C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174020693365.10738.6449472134301401677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0d79d490bcf1a9942f2047e47ffd78d94e092c2cfa59ac613de4213767033f
Date: Sat, 22 Feb 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740206933
