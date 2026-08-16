Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7CA1F2B88
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786899034; cv=none; b=eEaVsV71UoW8jieoXIH1G59W9HGW+DMnYQ//PxA29wmJIb2IHLq00Kr4CGwAsL3iEHv5ko2uz2dX/Fuf85MBfPishYs8ye3GYHqHoyuIc7yHc0OFNwqlVdr6eiLPJhscuOgq4RLaY+c7xjyIAFY16jwsEQjICh7RRCf6d2x0EP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786899034; c=relaxed/simple;
	bh=4II/0xUMWK5TPTg27/uwaX2hP8JZihufX+J/A2T5mY4=;
	h=To:Subject:From:Message-Id:Date; b=bMWlxtnhn2tjmm2YAAE8zIvAEjZiPeuyhwJjQ2sWpT2M8ixBUwz4YD/9fI6n0p7RnUC9XkMDacQhfgSLst/c9MLz/5KOqK/lmMzplswlqnKMOh67vQCkhWFfTBQAKOmLbqeDf8qAlqLbrNhJG1xD+BWfQ02aRPOqMQ+YFOejvpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPdhhvcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPdhhvcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA94C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786899033;
	bh=4II/0xUMWK5TPTg27/uwaX2hP8JZihufX+J/A2T5mY4=;
	h=To:Subject:From:Date:From;
	b=cPdhhvcAXVH4VBD8kegdaQcDulTzpNOU/jV4EfdUVLEeHi3E1/TI4Dcml70i7szVJ
	 Q3c+6phgygqKjBQPM6bbJre/E8yUmCKIHnIIC8N9xldfmLCafIY7AiqtzKfWJtYuHJ
	 ZOJgGs+mVl37aHh8gdHDoA1+zmPJwtwCiXbG2qB8exFQBcS30ulU7TFxgGaeCY0vHr
	 B9zhqWO1citXbdf2amVrHd5XnkFIDFIVuhWub/VvJo3wQch2pxF0UI3alJi6LYw+gn
	 lCzrPVjkRF+p2K3AbUyndfaDc95saZVi2Zx6tG/c5W93u4P/h7jQ3UNaPJ7KFzMHrS
	 NG6MeYuYvVqGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA268C5DF6D
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689903368.24812.6242901652873752213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6910bae7d3b2e3c558476cb36305f60f62b9365438beb457ae2fd73b3f64cb5a
Date: Sun, 16 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786899033
