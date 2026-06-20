Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4708F1A267
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781942194; cv=none; b=ZnQ1moxdW1otq+PdkOdxey5VphOap5lQZ1gmbY1G/S3ScaCF0skxJiwjrdEFPW170Y/SCZVDLSbGI6bhiG7N/guvTat0tL13wCzZ/JFSTraVZph92SBzjYx/uSpeYabd6C+At6HQEjA4vrdz46fdbES+F57psaOq7iOZAvuEx9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781942194; c=relaxed/simple;
	bh=Zem3oTQZORG0MyJaIYt3SB22eFppUrpa0a1Iiojl034=;
	h=To:Subject:From:Message-Id:Date; b=XPJjw4iMYAPOTrG+x2ii6eHY4e8ctOQHSR0P1soN2G256nU4xZrMLewXPSUqvv6xTDMeF9XA5a+wieLdElMAjA9Kpe1G58tWHGeVHiOAQ/APh90mJ0/gkrUOJpr/fUPUArLd88Cai0SpnwgpL85y7OcmwY/LkFdq4CLWRVJZQuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgLJe2MA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgLJe2MA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64ECC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781942193;
	bh=Zem3oTQZORG0MyJaIYt3SB22eFppUrpa0a1Iiojl034=;
	h=To:Subject:From:Date:From;
	b=TgLJe2MABgB5cCdHjp4h80J3DyE9pCRND6OW3gg58/y6eLU8N2RYLa1mwonHqEo3q
	 dQ6EA1IJBikXZ2MnOXiMmZe12oHHHGzLKWCWVEdOREzPT6WyUs6QQNopmp7+F3oAfi
	 tnVTK9DlTmCpPhWH66V830kvBQngDNqhAR7IIH81liutdR0DYmFmAJGYluVHDTMwre
	 4zUgQrcJUU2JNz1rUiA9wnj3U5s/mjDFGq9rgzmreT5Uyo5JfiGfJAbLz/CYFNMbkx
	 xr87RzaX7Tmk9NO1IARY0jC4yzEIblqmuzBDFI9WgbkIoW2D5jBGXrPxAjDeVsTd26
	 gOjmA/Wb/uVCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B667ACD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194219369.1952.8088236723110393904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dbb00ff417a5a80839b39c3b3cefc228bb442ba7a5acc6af15b55e095be79fc
Date: Sat, 20 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781942193
