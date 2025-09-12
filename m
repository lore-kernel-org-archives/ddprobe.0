Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B20428EA56
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757661594; cv=none; b=iZ3Xj6AL/s1YcU2UokgkKvgywYJw4m+8R5VBe3pa/r7eb71AkC5n8xJkFt5ZZ5WyhvfjWG4+2WNzMYdMsm967QMnKaSNkeXPWwEkjrByw/lFUzXYqMCOaJfd+XdtPhNmz9VYElCkB/io5qXiDki+m8IL4UW+pMi5C+FMxPgI1f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757661594; c=relaxed/simple;
	bh=/fxEaX3JYwohLnk77zFaQidDvCnUS0n6ZRtn2K4nvJM=;
	h=To:Subject:From:Message-Id:Date; b=gkgTfzBB5c5pAoqEFDb5tJB5SkP1tM9VTB58KW5imXBmSBXJWvtIggyjIDshYPTYk3xH/gHfujF31/uxf4L5MFJl//bHRbYg6q0OYQO9kUrvbhMfOBadp53+G5vEpAt3eftWSAxrIQOeVFrTRuSdXBD8BU+YttPpW2l7jTi/J34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsR1DF+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsR1DF+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F8CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757661593;
	bh=/fxEaX3JYwohLnk77zFaQidDvCnUS0n6ZRtn2K4nvJM=;
	h=To:Subject:From:Date:From;
	b=qsR1DF+XkX4JgJqBJuNHe2kQAIzy7wLHy/9+Pij/0fQZojpAyIX2Q0CJanLPPS84D
	 GSOmrNGUJkzRn6tqPB7E6XJ44I1ACK/rz7OY2VF8LU6mfRUdP0kH/q53RLNxtRbwqI
	 30JEChME+GDKnbL6f8jwpb2aqiEtI0caKMiFxtUWKO0Cp4FeBxQrlLehamtixw3/gR
	 DBdAUeJAqOMvhgcL7fofo1XR3iwHqMazEyGwwavsaPWDOpuq0VzASXd5wvVbn00Hui
	 XaTtFKdnjEB8UJkuvmbIgIgBtrHarJhSLqjCYLYxHZ3S7p2PI0a/24MRYQFwlVIOnm
	 qWlgP2zNkhJ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA90CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766159357.11995.6915469346581450987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2cee77ca83bc7778881dfb56b7a69c2ca68a7e726ebcf7ac816628c41071e5a
Date: Fri, 12 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757661593
