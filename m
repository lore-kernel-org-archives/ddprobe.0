Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A698225A2
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723059954; cv=none; b=l4faIEokH2obDGcTSlDlKgkPBT4e0axdj/vpC6fW+MZJ9fiQFAbYYWpdK1ypa1dBVciFREhc8VMOP+dbRMbB5WkN/QFN++r8fX5ydXtRH39pjvobNlujHLJ/vR+xjLZ01SZdtOUZAaErmlfKMo7SSWPPX7Cba97nqcJ97sNtlYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723059954; c=relaxed/simple;
	bh=n+3d20iL6duZDZdPa9+Itp+vrXRSPnquPs8taD150Dw=;
	h=To:Subject:From:Message-Id:Date; b=sVnXgabWkLuscx3uDIzF0TD/cJ67qjC2WVeYZRhKnWR0HoVBhXVUohDKNTsJFzBLQl4yyH/fdv3IMOL8Dn3GVplpJAjKNa5cOou3xjIMRx2AdjUUuTr2n8UGXCb5OeK5ItSpeay/zpy3GJmUiyditrRUQGW6ILTHAKtOAK98esE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a89qLzus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a89qLzus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE15C4AF09
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723059953;
	bh=n+3d20iL6duZDZdPa9+Itp+vrXRSPnquPs8taD150Dw=;
	h=To:Subject:From:Date:From;
	b=a89qLzuscwLnPHAqFlnlgnZ6NHk+t2XX6ldKdWaPcE+QRux0mh9z6iZtO0p4PcdQb
	 1gpxPcFWrZ2ykdPj78YgfuiKUwYLstz9olsYqLKnJ3ZTqNQEd9F4L7Zmgb50hQ6N9I
	 2NahfWoq4Me1JcutfrLDoL3/EnsRiQsaaoxDoJ3ZDvm7y2vcPkMu/6xVXzHFbjuxXj
	 LF3IiZyoBQRQZbIpzQuK839jmnMoMUWJajrtLp6VOgTTX7r0HXlSkoeBu5ra2ktIdu
	 qDBeqrjIaw9ONcUoJsUg7fVIBfafnXSh0aHYbJVdZrcnCbbuYQxxecprfoyc6cz+YL
	 t8h7bCKpsBlQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B2FC52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172305995361.8060.12957318717021273027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7776823aab59e442df063db2bd5cb72471ff95875b4bf812b96c8a6284586303
Date: Wed, 07 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723059953
