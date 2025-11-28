Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184D71391
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764309774; cv=none; b=O9dYEfOshhu7YAWQAeKVGYuVu3F4GNC8VO8NAhri2uBfaAAgOrVatFTjH/o0dDXHI1T8Uh+AK7q3p7FR3ID0BKLEa/Ni0lU1UwfcIR1wvrH8m9H8/7L6avLG4bemZPoCdPQv7+6o+aAWCzLqwXOX2kljbIvIGwKEzI6+Uo+QHPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764309774; c=relaxed/simple;
	bh=rqhmAmWTjNzq318yv6BKuCyPOjA0IGaRXzuqw5HxPh8=;
	h=To:Subject:From:Message-Id:Date; b=ZnQZ/l0CQF6u7yh4HPJVze20FaYQGAgAJ3x6jk6+xFESwEL5Jen2Vq/qGlRn1dM+IObYVOrZYrLO3jKvZZNk2Zopvyz+kXyWoNpumAaG/tiNJaAzHOvI8l54rm8Ld7ZzM+W9XEPu3ereWbqoEZ7dpqscTfBdp7EIVAiZWLa3qr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOqKTAsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOqKTAsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26FFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764309773;
	bh=rqhmAmWTjNzq318yv6BKuCyPOjA0IGaRXzuqw5HxPh8=;
	h=To:Subject:From:Date:From;
	b=WOqKTAsdL3o+wN1CE1Tyl983qBxXlrjk1gLBKiMCPiZDDgVnKJwT/nC2tgHZKygqe
	 xh0bgX8YKXbHdTpAfYTo+U8FdP288g57dwQglTklFzNiTOE88YIG6HktU92EGiBcGu
	 cy0x6tp6M2EcoBLsOCAJ/vyDTfmMi1FmbDk8ZQLbI4F4yEtHTymlwU6Rj/4WPdB2tf
	 OSCuwdGhvweDDvzPzAgnPMgP9EVXIoav9jf1NW/ebz2C74chIlA/TWPuofVWEknn/y
	 h8UhnJg7fW9zhNPKEDcHkS3xJ0qi1nM+TV090ejBhiPtRQ0ARnu3oPwYczTNgMkN4x
	 rVLGBUxATvDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD7D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430977358.12143.2362927861449060384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577c9d097218e7b6665472c8d103fbc6a31962c35e1aac4aceb8f073388f462d
Date: Fri, 28 Nov 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764309773
