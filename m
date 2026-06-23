Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECAE14E2F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782176794; cv=none; b=ueQevyJuG9jrSiSfp0H3ruLbUboaIETXac5KsPECXK7pYOS1PiQrVVVuJFORarR5hvGj+0PK3nl1zyPcLVpvKfN1eSQwUV9HUsyTApRLzrKbNZtc9IqezmaiMqP15v7E4kXKlTlnDQsyDGVpHN7Y8Px8iSP3ISh+Et90CJDVFmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782176794; c=relaxed/simple;
	bh=x50ZCYV/VB+U33cnidyZooDN9Q9LZ7qWXYewxBRZEfE=;
	h=To:Subject:From:Message-Id:Date; b=vC2kc4kliGM791F60Biv9wvhxSPBXdlG0mHO4wSVyA0C/ZlZ/Gl3i4fBpH2eb6LXrqGzCiE37mzzMrLjrrEIhRB647ZGbs4XVhnLxr8CaQSVW9YwD0hi/e0Sunoj2i2EUhkMHFQj41jOtuD5gSEmasHCL3zYFri0ANK3cD0P3iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKyazc8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKyazc8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A63C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782176793;
	bh=x50ZCYV/VB+U33cnidyZooDN9Q9LZ7qWXYewxBRZEfE=;
	h=To:Subject:From:Date:From;
	b=qKyazc8xKqcyP8muNNrK7JWqKpXXiE3AXoDNWA+pFLyzzwP/Szg/NWA+YGq/IEm+i
	 RP76DxmZ6zf1n0CllJhuW5VCwepC30EQOnRRGSEBhs029GHBU5UpHB63rwyVyVZQJ1
	 +Bvm71E6VU7fe8VgRG4bB/E6peofln6RVYNT6hW9kclkqOTIZPxl9DatoZoI230LW/
	 SUcA4vzZJbAfFIwvjgdrq3gNv/rYxZB4QmoVn8GvO20MvAMQHLZaza4Noy5Lsd2Ir6
	 lAXU9hloETgwmtPqFobso+aSgjF6a+qCXI9J6oAszXmZwJXKVDVzZaZuzfsw95SiCB
	 eHGmOmmlC3E5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08EFCDB466
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217679369.27449.7934251781539219886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f8b0a09be84e3ccbea0b4c807620723155f9aadbf12bd4d6f8d547c295f0c3
Date: Tue, 23 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782176793
