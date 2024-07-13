Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDECD1CAB5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720873223; cv=none; b=nAesECXNWMZIcsEWzg3BjwHtW7vVm0xM6dXcu3YLnwYXfkwSuONJ2cRYhuwqmO4jehLc20ivxe/UP90vhjdNYoix+We1JspzhcZBD+7ZeKDh1lVVdwZo64rWUDTR5pwYXIXhwiAZLnz2WM0418+9MrC9wo2ooMAb41knBiylekc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720873223; c=relaxed/simple;
	bh=Ht60jR/X7BYroTr9w2DhUOsEXUw60Ers9kQcPJJYFx8=;
	h=To:Subject:From:Message-Id:Date; b=KXlJLyZWzjpgQOJsjON5MwhuZIiluhOTv9ZXak/UPi/Wb9fdSoKXQrIk0xMS6KeZM9YmFsgwcMMMkPKHe5f8ZkInDsiqhQaEHrQtHQ8NyWZ0ajEcVxywYx+r43EG3n7Wf2sm/tk7KQP2wuLn0XfonnL4RfN72TC16YuhbyJ4cyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLEvcfFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLEvcfFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 227EDC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720873223;
	bh=Ht60jR/X7BYroTr9w2DhUOsEXUw60Ers9kQcPJJYFx8=;
	h=To:Subject:From:Date:From;
	b=WLEvcfFGDpW5DuvWrctlOX6Zt9zt4FHSpwIbxlyoh/gzq7QrBv92YieFFCplg2hUh
	 GSt/X0WVIwHG6HJl6fsalUgm/vk0rZc7cDO6dz9AQrIcThaMWzOseRFREbioMAi6XE
	 uUl8UhKF3OjMssanyxl88L5sNfwqiY+CxMfDtaSt/PF0qU+ajFK658Ug0qcoKGyiDn
	 3lIlblkyhb0FLJeXmPSx4ESlNsHFq39BltCBF1WFBw3WvKdQXPge9iM2QD3J0io4ul
	 TcIo03WapMfS+J0B6F0QqH2fSiLcAz0buK68F6aUcK1u7lEoT05AgY6P3c6UxQvBA1
	 2RBk78CnO77SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF275C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087322286.29653.15638447041477494170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d4c5e4f69b2a1000ec3761a9077cca4511f35081583d7f24148fa0f6ccb8b0
Date: Sat, 13 Jul 2024 12:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720873222
