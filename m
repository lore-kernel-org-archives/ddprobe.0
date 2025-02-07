Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B823238D2E
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738940154; cv=none; b=d/aAgV9nNRWIIvF74uJxqB0O7gnBo38oJNvBahLgKrTdSNu8Ulx9roOVALF/4Omauz2o4Cbb0dqF6r6hZdG6QjWSrLKSTaV4iz5Bhm4umlH5ay1bboZTwvOOXO8zwdo5SjuLWVRdcDv1J1ZSXoEccIZcNvEz9+DshKMH9rc9o6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738940154; c=relaxed/simple;
	bh=nBVeT0ONEfFpJgrfoLNnX8ye5Igw/YXfDOjYCWgOcOI=;
	h=To:Subject:From:Message-Id:Date; b=fdh49QqrdQCp1oh/SzYREY240uNDl4W+v3R0D6jveH5SHEFM7DusVeESOqt9HHTfB/bajM02RYiOStMHLwJSJJv5FqP49De6Nt4ypE2ZLNzTGcFLTF8n73+NIRWdyKDBG3EOLbCfWZIy8WWL18hKnABGbKEKpn2li/cRxeguRBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3z3gRCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3z3gRCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CAEC4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738940153;
	bh=nBVeT0ONEfFpJgrfoLNnX8ye5Igw/YXfDOjYCWgOcOI=;
	h=To:Subject:From:Date:From;
	b=W3z3gRCq5xlmqNpnXMIA50fdFsCc6Z+XyX3PjP+FQ0bzKAHSiwVkphGDYdDfaeyz3
	 d8LdQ5Tk0kP5WTFflKtw+a6PByCHu29UFUczrytiAUFrIoOdOjQgmiy/y9+WIiffyw
	 jXmJ4wYCReOTuUdzASGza9oPHEmVY8mOsog77N1AMSlChkdYO8l9dnSvH6XrCXSwvT
	 ru4oSlGWfVPlkUgccyPxlIgg/Tzl7QKafnPU6YwT06X+/UQJ5fkLOfBawxLQS3mW/3
	 sueqPeCbpgqdnv7IjH6rMtljnr3NDa9FsIrko+WNJmIuujeE8sPCyV/GELYLLt5aDx
	 Ytt2Qjap7xDeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0FBC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894015368.28241.9617630723465865687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfafc5ff9f050dc49c1c8d611b25ce63ea136d7e9137441a97ab41af5cfb997
Date: Fri, 07 Feb 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738940153
