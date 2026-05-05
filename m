Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61373382E1
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778024254; cv=none; b=dGPE5X7Mw9KGe+kez3tEBhPQyN07Z7imTxkZ5RukioP59q1z6BAOzEwiF9/GrW1NnwYARQGcMplj7PHPJWexnvbgKjEntAwOHERWDPFwHeF66nuAkuoLAIrGfHtzXKr/OnuoI7Vz2sq1TfayV1imLEucHEg5osOyvZ6rb3OTIrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778024254; c=relaxed/simple;
	bh=5CgURBIWp8gWo+lQ4DNGFMu5tHzMOwmxxnrTzjG6ghg=;
	h=To:Subject:From:Message-Id:Date; b=brrMeIW6/2K7HVYlzGfNpUF/epM5SQVbcvBe/AmjCtUXVN24Cwh8T+xHtA05EiufdF5xFX3F267Y4sce/Bp00iwghElni93hKobpDA7koII2iHoMkYsrLF+kdp5hiax+E8Np+bCjJo6SAm6L0+ylEeV7AgddAwXPhCzABZQe1xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+BvDylW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+BvDylW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C9BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778024253;
	bh=5CgURBIWp8gWo+lQ4DNGFMu5tHzMOwmxxnrTzjG6ghg=;
	h=To:Subject:From:Date:From;
	b=u+BvDylWt/5sCCABkmAlUtOwZ38g9VOaorC707G3azQx9RLyxXuOrPgA54/ylnWJh
	 PQvXJKy0ReNBVcYd6LGbjfUBE1cVQwz9a7wv5RM/MrW/Gu3MuYsHC4z6qAYlYOR4Cr
	 MScNWXB4i5vQQM+eOleHiiUHUjmsIprq2z37fp3hcK4P8RdFT45+renNge92p53ow3
	 GEICIsmtbl+v4EF0S/QlPjvpZVQH7FJos9nkqnhGDoBJFuBoDueWDAswLOYeHwlNkV
	 x5vf5Zp36Mo4F33S6LImuSbbj6lWSh2n0Y575i+HCRG/+19UIgaWctK5cJwbPjDzN+
	 e/5kx1x28srQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BCECD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802425371.12858.16973732673449590465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93dbae1677a15359e9ba73777b336a40f891f28a8761a1913230d5595eb30251
Date: Tue, 05 May 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778024253
