Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC951A265E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750506595; cv=none; b=UJc+UXNjzrBljCM3rm8ZuiTMfJc17XunBDHKkNEdLWVPmP3cVA67lAPQQdqceVNjJVjvcNfX+4mWHsBPHCnTG8ccCE3tx04SqHFc7MiVSHEMEX/I0QCixNfMzKyG3Lrw6liySExz90cPOfepPb6o62aQF2f4WmlvblhycZ/oDD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750506595; c=relaxed/simple;
	bh=28j152Jwqz1mE574ZP1Z14BkLIvoILoRgyFAuXqu/8M=;
	h=To:Subject:From:Message-Id:Date; b=J/HUFsGE2REMotFdGJTbhUSS6JreVU4KmsVDMkvi+6uBRJ37hbXyrD3e15aZb4QwqZ/FWhqvXRSPwuBVg3MNCA9EkWaYz05hg86QBF64+dBzF/sEVQx/qOzvYW7YdYze0LmIkPt2b/cW7/z5NrNpfI23j7zuJQcXn2zRAbunVDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntdR2KVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntdR2KVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A625DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750506594;
	bh=28j152Jwqz1mE574ZP1Z14BkLIvoILoRgyFAuXqu/8M=;
	h=To:Subject:From:Date:From;
	b=ntdR2KVpkZw02gJFEGaYWTQTNZrXXLa8sHmlSDZBwY2DpMzKzo6ISPDnOegOmMWnv
	 0zJwvp4lF9mB8asU+7IGqGMYKR2i87n/fXFnowlAB9Q4IJqOymOzwF/4wrej8ySFu9
	 BpOaIL3FByXWQxCi84xZDHlwQL6ftPMInmZRoXoxQ44D61FazE/VmuYChWCg2m7T8G
	 yeT4djxZwg21lNqekcHtdjnMbDA2BwiwU8Trid613RkpU2CKeG0I5Gcjd/lEmf9Nzd
	 RkxogkowbCrHS31s7+xGHty0Lgl/neuGfdb5PnbyyKEdeuTEqxUT65usnRNky1ZbFR
	 0belFQJe0zejw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94041C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050659357.6406.10474588803959308430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd9ea45cc14250d432108aab228e123912da3e88a27a02d7fca8e8e6c717228
Date: Sat, 21 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750506593
