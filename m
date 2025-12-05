Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDCE8834
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764907374; cv=none; b=arrqs9q8alEQXb7ONet4oayMiZ1mFaVxzugynMvkL6yUvVi57S+cJoLKDLgdt5cl9GK3zd4zv7AedZSJwI3y9XWFRQs3w2L8Wtjqls7FH+cRaV5ifxXb58Aus3Qc1kTxDAKXTOzemnLfHadqGLPn5/RKEuz4mEAWosj3416apv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764907374; c=relaxed/simple;
	bh=SZrsFw7hzE8VnP4osrUSYlEEXzC+QZQKFWDsf8aw4wY=;
	h=To:Subject:From:Message-Id:Date; b=BHR6ACw6xPIjqKnPJw6eEBDy6Ualu9plnKevWbWLlsYhJjnhayX9r7cLQCh2c8vN15bsmX1/SM2m94adtmv9RRIWvYJTJU8W8+J/MG3YqBbqt3GPmohHxTFxDV6dAyd2jeRhEvGFx3bacMpD8GWYo7XgIbneNbUDP8qh52Vo6WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuVPEYTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuVPEYTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCDAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764907373;
	bh=SZrsFw7hzE8VnP4osrUSYlEEXzC+QZQKFWDsf8aw4wY=;
	h=To:Subject:From:Date:From;
	b=NuVPEYTwYvxTuHcPCxFRihxSV9SXzCP9KGJRxQTx3iosupaDUmYxuZTa3MLBxDk1E
	 1PDSbcnne/SkuUiX65RaczsnF7mvS7FIawHSyUT7kbm12QBV1j95DUi187H1TrFraw
	 58bQND1RLsBB37xotr+X9n/Hq23lMS9ZsvtY2Gp2pRnrLXSLE41rTDiRmQsl6DBW9O
	 aEzAz3HvAUvttHpLv1kGZW+xh6GBiwS0WbYJ7jFtcwSI2qMVnXTsK1cpNE42ERekkp
	 hjB2Mkrcp56duVSN5KGFZr4UG/p/NZj5SJIhgFXM8hvQHP1mjuo5wDhxXds+WMSgYE
	 y1+Uuwt2F7L8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985D4D2CE1B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490737361.29822.6458449384945944621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d74e55adfb856a2f6435bf1a765f80a8a157e79141c98ef64523c121037089e
Date: Fri, 05 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764907373
