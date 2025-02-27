Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450A1231A30
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740663534; cv=none; b=AlqaM/RjU2MaMbxUJOM0YqHu+BJhKoHNAstQmGx329Kp2vUvKC78U1Y/LAppzGP95c41B3NB9ZC00IiW5BhccwyqjU1FEg5Wwzm3F5yceI5FqICdeI9goaRaBFPbROtGKYPUx24zOlwCr6TM+h6FpLRpa5Z9eoy3SCfLOIGpN7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740663534; c=relaxed/simple;
	bh=XM9zCviKmHCfr4iWfYEG0GyNpSjYXnaQB8sfuuL4QeE=;
	h=To:Subject:From:Message-Id:Date; b=dOQvSGEw0dIw8q+QbmZP+Yru26hQ/3C8cXzm0g8DFmUntvcbhvtr0PoXRGoJ0O17PPDB8snafRE0zOn7pca8UX93jIczqWk6Yt2fjf2kBetUjrVAdUDySFsdAthQyq4MQQRrNFQ3mNk+4QIKP9ZwMCs4FTQ7KksB5xhPNwLSQ0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsyEg/SZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsyEg/SZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9399C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740663533;
	bh=XM9zCviKmHCfr4iWfYEG0GyNpSjYXnaQB8sfuuL4QeE=;
	h=To:Subject:From:Date:From;
	b=fsyEg/SZaVhp+k9PLfWV39aTAcoXBUY14CQDuT9VPq6ceEh78S8Y1TimTIY4r7yHR
	 0453bSZcMd+OFysozHy+aukct8UpHtB6bJrqOPPywg1ntl3V2h/tc2UzpYaJ+clLom
	 asC4pC29oL08URKDlpw/4qaJO7Hsa7mH2r9hh6XF9sYqOaoampdQrE7ji6LdrCfXTO
	 TwxjBlYqQdZ6TqHcOYRReHK8S/5zJWPcIOapY86mTar3GWT9hAgXxsS8ySSX1Kzk5g
	 LIJpalnB6DF/Vxa9PBAuPfcjf9QzKMAegXWimX1VjGNuYPXsuQtvDtirAqtSsuTQWF
	 guNOSCcXuqo5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F46C021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174066353359.23348.17117844738657820161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34cccc1d01c06543acc0dd269b41517cedb5a97c10034bd408ef5a49242f18c
Date: Thu, 27 Feb 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740663533
