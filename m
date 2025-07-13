Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368F91FDA
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752375594; cv=none; b=INs3DEvhWeuR3M+8naq9FjF9+r/FDAGcJE0AUxEvYNm1qow09dnpL5TY+SM9Oe4cg0tJ4cBs9syLjTMwAtxaVEAv1SNIlJPz/GnVoS85TgX33PEnmQsqaan1YfJjqQ6Yu5B9kP2hpbVCtd+2kldRHO0PgOxPtFK8zLVhdc93LCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752375594; c=relaxed/simple;
	bh=iY323I2UJ28cF5XiOOAtG7UrgciLcETYNdmIyk9AVe8=;
	h=To:Subject:From:Message-Id:Date; b=OfqQX8dy1XzqeJcVbvuFIr/nbKJwqhFOiGrBtyaR16zBgfWg8J3kJLNbsZWkBZc15cuaq0NMLTqC4xHotvslb2Ey4wv2ilPMFkOf2zCoeHdzGDUUf2bfMq0LmFqRwGZz5PduPhKNCEsXTl9ZRi5pvZM0sJcAooi/I/TVgbhec5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvdzvsob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvdzvsob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC6C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752375593;
	bh=iY323I2UJ28cF5XiOOAtG7UrgciLcETYNdmIyk9AVe8=;
	h=To:Subject:From:Date:From;
	b=rvdzvsobtaMeZrceV04kMw+M6BeUvuMTefttFr7lA6KmIP86YPoTFK7AtrOD+nnPX
	 sxUt96OrsCCSBs0VbyUx/+k3Bu0HMim4/EsLKf53kwJp9EZTC3TUP9AUAwe9g/jBmF
	 UFTbbK0WH7rdkXx8e9DstCc4AHxDAEUn2FAC1d+ty0nD7xH1DnKerazfe5cUZ7fW/C
	 Du74C1jxo8QQG/wVSn0E7oKwZr0mw3WeK8lAqC+dQQfHhhgnK6kWPRnBGFzQHsI67q
	 BYdDHLpY1zn3jjMJtUA3xfyHdEVTQoG833hOpWHuJEgWyknU5NtDnNgApXytE+ghba
	 I2XyMKOMknJPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F4FC83F10
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237559358.4695.13427538739447258019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a492ab7d01a1d0c1e0fda00efafbe19ad13dea17c59017094fa7b7cacb73ff1c
Date: Sun, 13 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752375593
