Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3150817FE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735941954; cv=none; b=kIGAhrB6CWEjz1v8M962Mkd911Df11eZ5llC/3zhvQmnUsgGi0nyvL5Me7b5x1xcOEQ9bxzTKnyw373oxKsmnICgjMd1fBQp2hK3g/d7HVtHmd/Erkl33yJYgonEcCpqztNr4heCxAyAo80JWrpwwoaCHF/QM2CYJL3cc4RyVKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735941954; c=relaxed/simple;
	bh=ufTmLjIOJ+FQa0lZH1nwcCDK3ih1L+uZCmlgvAWt/II=;
	h=To:Subject:From:Message-Id:Date; b=LOk/xA9s3Idd+rryCvbwGhaZEJw8qrfIlQou/DcSHG5I+U40LlTvlAMusf2BT8Rw/tmyquQc0ny2PZN2vATM9X0UHAnNEQ/qadqY7R3goMrrb1ZZx+gEJzyHhLUq6flXH3KZ3bZu+CKvPbEeR5iCuz/ySMJYt5KP/pz3nR1I7X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hz3Mm6Rd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hz3Mm6Rd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3CDC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735941953;
	bh=ufTmLjIOJ+FQa0lZH1nwcCDK3ih1L+uZCmlgvAWt/II=;
	h=To:Subject:From:Date:From;
	b=Hz3Mm6RdIMpJFdASanDKvS2EL0dBX4qDFgEmXhTCwxpkESEIEw/U5uKh2TxK2ri4Q
	 kQinfnYyi2vgkDfytmJsXgD8G1dQ8wO598jSPbd5TzH4RUNv4x3O5bIlV3m2RYMRYy
	 5QMpZ/6VbgMyzQZhOaYosbpzaBq/+zoo5LhnEFtw4HKSOZhvNHXLVuYTAM9dnTKPG7
	 E/QTfvXV1zCZi0dIlMopQyZSIFtFTF9wk08tH2aH3H53W2tv0znMyMg+/7U5qcTq7V
	 Ab11ZBD5hGxXPOfz/Ym3chdB1XGBqJF6X2b6qvdsN4HuMjUQGcUFdJr+T7n+/qf+ZF
	 i0Be8w3uu72Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45DAE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173594195363.14362.234438524523318872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba44b3622780c06bba9ec31e5810ac88b0ab340e2ba9ccbcb393adb76745c95
Date: Fri, 03 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735941953
