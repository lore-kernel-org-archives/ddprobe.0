Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0047E192581
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725963954; cv=none; b=ZkVS6u6sYNpcLuNfHFERaEY1CgOFhibgmsO9qmuXhqV62RPN1m/LxmcIsk/biG2ESHmGGf43RU5D6TO++WVET+5YMcmqnZugnknbmk0UGixikeBr6LTnOBlgXHApX/FKuzVwTLPJwYT5lVUGsfhSTCdF8A68rtodtv4ogNal3Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725963954; c=relaxed/simple;
	bh=Q+wJlTAYgVanVziRTYEJ+3u6FKFI/ziRXl6rX+ab8rU=;
	h=To:Subject:From:Message-Id:Date; b=a5s/tFotcdG8vEDcj1iUN0UULnX0VpyIv/57DhPWWbKirQW6YUpwN1rpKVp0qapz0kT/wcPwyUg+CKZOUn8uhoJEPvCIJPOn6ecAGUoHHOEDwQZLVGx/HRyM2eNqjv+B4Wfmg3MWiSMZvdBbCI9Tva0Cegg0rU4+oFMndEyWuiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7pvbebN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7pvbebN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA22DC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725963953;
	bh=Q+wJlTAYgVanVziRTYEJ+3u6FKFI/ziRXl6rX+ab8rU=;
	h=To:Subject:From:Date:From;
	b=k7pvbebNVsxIwepubh/FK6+YMOl1zrkT8AWW+7N1lhOVqpIJZMYrGnfkiSjI3nEfH
	 CvONNA5X4pcbP4L+bbt2dzyfn3hdV3iBC9my8Tka7HIvUuwKhNomf5QBRg4cXF69CT
	 obSpCTrxiT8JhbEtl2C1+b4ZAV7qywi5glylw82NKjjgcnH4ki+4hRebu8urV5NMI+
	 WYDwxX29iYn+aO8RzI1MrmMmoW2SGyzcaYc2GTk1OxviuLGZlQxcm/72ctpiZTfd3O
	 TrY3NHJvSANmkD+mV/rD7b3R9DbSzyyYdp1mxEeQq+vwolugK+8G/MxgcwsvQvOVov
	 WCqjeFsikY/Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C4EECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172596395365.24865.12272752926848196479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc73d42d734a5ed39db2a9715b3a4e20d8fa092e33fbba536f17f7053e13c74
Date: Tue, 10 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725963953
