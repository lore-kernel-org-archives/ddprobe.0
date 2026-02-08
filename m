Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179BA1A2545
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770557634; cv=none; b=VAnq92gzSIBRhFFJYTHkqxdpjh/LDHbPzMeusSE/YJWBnPkZb15Iyp32UqUZ+kr9KMX1p/xbzm4IfDqW8k9AztZOrhTmi2McEQ0OXRZ/glCKjywKsLlTmKo2mpcU+sxBjcPXTlqwf5Z6xB/7BkLKMwnfhnOOUgwyEX2jI5b5QTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770557634; c=relaxed/simple;
	bh=oeZduwEguyS4izKyZfHFvhihHJLIcWKNqhFwRostoFc=;
	h=To:Subject:From:Message-Id:Date; b=boZwBD8A+sIrCjG0dwmvzGJzBd9yTLpFZwQMhmx+RXnbDHqMIVkm8CBcBSJ/lxiMlRxBRcbAln/HqPc3kEjPPE5EII+6oQEOqKAko24wSyvnW1t9WZa72/6UyJsz7QT96s0vED56ZyMBB47cAUrAhMA3BiZ6NXFqk8F3+2i2Bdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ernahdHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ernahdHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE966C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770557633;
	bh=oeZduwEguyS4izKyZfHFvhihHJLIcWKNqhFwRostoFc=;
	h=To:Subject:From:Date:From;
	b=ernahdHlXsbEZdXd/DKZrjTFg4EBIkEkx8IvPSC9dQtcchgYIzqkqqDCnYT+ggsPs
	 Wv9UL2+97M1LTVqnkOsQsLX4VZvNcPaxKBGtmeabtg6tAkiRS6Tw13QSvMzEYz/cIq
	 7Azo0cT9PpzJvwaeHrlASn4IPUI0dI60FmfV7nfy2IU929lIq3tNOCswvs+2uq6qYk
	 CM8DAUPc+3U+NglySZDNO6XlKTN8bYphPDxsznzDerFHvr/NR93BvxrAc0Ocm+U7Dm
	 M0eLf+Ot3+te39wxeztF3OjNuoYprAvHFg3o6O2GfC+HYOkeFGNFUTgYmKm7STwm6p
	 SYquUfWfDKzqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98018EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055763359.17703.8845825511382328677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce1c33ebe4f9c7bcde7bbe851bea4c8522f330646a3d0ce8af17f9cbc36b502
Date: Sun, 08 Feb 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770557633
