Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3910910E9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753748394; cv=none; b=SKoqonSVp2caP5EVb90AMC6B5vPLpn6NaIpw4cxibd5zpj1U0GoNRmxoBjiQ4uOjvD5j2SOyeLhmx9cUAiaXDztuCH2lo7lo36BI51DWRTHtltwQKsRY5KGfMGEC+Gez5/eeh/VlwBS9TuoVJnN1BgCKXgGCjF/XnQN2JiXVyoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753748394; c=relaxed/simple;
	bh=WCVOC3cqVl6o3iN3EMT6RpP0k9ZGC+xVR3VglfXxakY=;
	h=To:Subject:From:Message-Id:Date; b=GcLqByMEFRqR9245Io8AT7zdqXaJssGHyq3G1unJ35zQijvBVYubftRzus1QSV6sQ3AMyfTUbwVeQaYTDfyz5vlHLrup4TyEe5TgJ4Xj0jpjyTomp29L0I9Z4KP6fZSMZ3JiMmJIB096yeqpQ4jUUnn1m6QqGwWQYxBzmf01qdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNIX2xTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNIX2xTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F38BC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753748393;
	bh=WCVOC3cqVl6o3iN3EMT6RpP0k9ZGC+xVR3VglfXxakY=;
	h=To:Subject:From:Date:From;
	b=eNIX2xTbB0Rw7Fgk5YJ4JCh8Vn7F/fTXBTy/8DvNr6CCw/wnfjC0rgXo/SMvZcLgS
	 GIXOGLqE2ZDCAbUW6Lh9Lf8Ypjg5KhhI3lAU2U7ZE7st3JZVWB3g5RQBEqt1ttxoaf
	 SDfX7/+m+8SdkwJrDzbMGtYu+xqTjX3VNKR9DtzqLtUhNbSBWp45ToFnz/W1kuTVKW
	 ByjYAk8XKfE3elHNZzpXTKBiCUsf/4R6YWiUWnmMcAK+g9ghE0X6IKVP9kStY69Q2Q
	 jigoZ+nJUVcBYRM7a58HqI8aq0iSuW4Y1laxeknyMasp8asxUXzYyBRDf0/vINRlP3
	 HsT8I1ExpZaNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91527C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374839357.15995.14514975010642093743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de3c64291f737030d1fb65faf1c1e54c04ee5a5b5364dece8a02d3091dd5769
Date: Tue, 29 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753748393
