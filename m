Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7277633508F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763641914; cv=none; b=jQJJhXQrwBhjrPcnqr18aGdYIt1CVpzrVRWDfqoSmqUk+/2r+98EX3VHZP+0Jw6yessiE7YF98aGc3sVaujafb4rJqgXSARHWdXBqbdLcP1rkTvVmJqRxlXgn+Ad72s02mwM/6fgm851McBQjSkmQLQ6vfWdMvGEMfMQW78udEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763641914; c=relaxed/simple;
	bh=I2QikO+uuL3GhQHqc2shk4hbvY6CbXDglqE+6mBwIcc=;
	h=To:Subject:From:Message-Id:Date; b=olpFt9uj7SoFRZGUIAQCwQAzJk+N+kSChrOnCTmZxSE6cQIIO5shERd2fLgfZv9EX/AleTlC6bk81liQ40M6EVad8KqgqfGI4Jgm7tIjVoGWzR7DktfHNV4zy9r4F2qf8gZRVAO2bPgwxAQrjOarqOTdlbHA3mUI/Yz+3lQO/0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATdhaKW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATdhaKW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72DEC116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763641913;
	bh=I2QikO+uuL3GhQHqc2shk4hbvY6CbXDglqE+6mBwIcc=;
	h=To:Subject:From:Date:From;
	b=ATdhaKW8UR0KdarAe32hGnNtn23HBJo6LUBKBwuJBtdPU4eYibx5decmz9nsqh8s+
	 eqd7Q/Esjp4V8tPXagQRAcWvWIg7rnzaFVPOjmMDZKqT8XMtkebIYKBPQgAasW1Ahw
	 w0oqFmsAA0VdN2cdeqI8qYBA4sORiIfLv2pcrcP7rogx7JYgjln2x559S/nYtgM3t8
	 jx8dxvlLyBAzd7taQApH3VTBJ03uMFsQBq7lhdmslzNudeCWjEZCoKwwLjSkApfPX1
	 lAuuOMtH71wd7rSA1Kb3OOgkWooG8OvMJ7w/SE7ub72HVvHXBRNZRoc9lxeFQcL+k0
	 jxTshfkCoyGBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973A9CF884C
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364191361.16813.16202109925859241366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e4e9a7976bc41aeb4c5170786d0ec7fddeb8bf657761fab6d5d1f98cfe0c0a7
Date: Thu, 20 Nov 2025 12:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763641913
