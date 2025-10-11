Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7A9DF59
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760209194; cv=none; b=NTE0VZm4ys6rn3qWzeQw37ZZ5UDRehho83MTTXTcrQnglY1g7z/oay9+c6GV3Otpk/DjY4eK2P2Y+OhvWUgJWw7i8MqJTAgDGjyrXjijgQp+iDEGbnuUEHCG0O51p7xNnXLvOGohTICgKDB50TBAR2nWSXaI8yJOjhhp1PooYcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760209194; c=relaxed/simple;
	bh=LJLE9uvlp7IT1gl1cPoTCdSrX+mmc9m+h3nH635n96E=;
	h=To:Subject:From:Message-Id:Date; b=nX7dJsPg12EVuF1pzPZ7kpEXxMruVFZGm/9FplSHRXHjMt65TUgjmG61t1e2B/YRZu9AIrjuRusMc2Od7VgLfhgoFmxPPDZ3YfbMX57P3uLaCUb3+oVxWA4n5RepM0xamgDT2Q4/9rU/swrfSNeCZmTnCstySKXxo6GjopnI2QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnNRT8aY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnNRT8aY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4432C113D0
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760209193;
	bh=LJLE9uvlp7IT1gl1cPoTCdSrX+mmc9m+h3nH635n96E=;
	h=To:Subject:From:Date:From;
	b=AnNRT8aYXSasf5wgnZHgOdD3auqIfPJA0tbYwKbRseZXQ/WUraQk/6Q8Vukr1/WA6
	 N5X3zdjMIEziiexIA8b2PJehdcDJ3DNhphoLLc0DUJIt+wXcJYNpiXQrSlaMjVVs4s
	 CY3iU9a9V6DLNukQqvjKjEUBlCjh4fDCTYfFtVHAMXcdqhUO1A01ueVbPxQe7PHZCH
	 ULvHzMKx8dc6M6NhbFlK+mHbjtBAzDrI42IULC2MiUbAgUC0B2OACI0TQstyZoKE27
	 Zta9dPIP21K6tIVzJ+uFY4hZG8/w2ujP9odzG4G6sH7RSKLgAcDEkhoM82/aGyYB33
	 ya8HhhTaLzIZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91759CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020919357.10710.12150722347184230134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9292bf93355fe5332111028d48c3b0c8937a54ad9e7f82ccec5b4ac64917107a
Date: Sat, 11 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760209193
