Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAA925949C
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734770154; cv=none; b=l0tJwxJAqm604QZEflU1GZokmEZYBKzGLkCzShVaBj50X2IzucTlRY/xC7bdUye3g/RGZE6mx/B7osTwArWIVD/gvxCUs1MTy5OFJfSLBkLfTe9jCR3y2ZNzR0UC0jGn2hhYgrMuqgNio6OFXIeqzplm94RMWvkkLX+KmqQB9WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734770154; c=relaxed/simple;
	bh=A/ybaRCeTItIQbmwm6NoYQ30yrLYG8MHp/bkQp9lQOM=;
	h=To:Subject:From:Message-Id:Date; b=QhNu576VhOVCE5DaEd33v7mzSShcbQv5yG5lObgg0ubOAWggpIdibluYoC0ha8wJ5he432dsGhGLkkbmTNOnU45TJLQmORjcpB25DPQ3xcpGK7SJuwiGFEoBCVUuYaOJO1ZVIIO9Rdjs+ySM5qVLvoOCnImnlrX5OeY5mI07XA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvzyHb3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvzyHb3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA85AC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734770153;
	bh=A/ybaRCeTItIQbmwm6NoYQ30yrLYG8MHp/bkQp9lQOM=;
	h=To:Subject:From:Date:From;
	b=lvzyHb3y9ruVzpt3iEMdPsiyHr/P8X0iEXZLYMBQX9JCPvZLYDsA1UNk3N1xjZXt9
	 XyBYIU4C3AxYr7StLDvwuxocOhwmgaM22GM1gALUVdkwoC0uwwU6HSe82Q2evKDzSQ
	 2F3NtDf4BgEyfJn9GFR5jiWX6qjnGBKcwmtgdsgRKEeHJCsV18valqj5G4asS6T3WQ
	 RGMBPbyIWALhx0Rewf+ctL8mnruNFosbOsnU5XFJ3GT1h1CjSeJP5SkMvla4l8Xmwn
	 BNykM1A2OCLVr5gkvfRjakV27euhlM1gHolTkqJX35SLUPuR5wZCZ+UKjlLqv3HyRU
	 hPK42SLDIxk9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C0FE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173477015359.19496.8329981535039679445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0935f182503dbbc69a0de966842ba37866d4632713be8ae7d79d863df7b3cf31
Date: Sat, 21 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734770153
