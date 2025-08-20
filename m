Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1217228134F
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755655794; cv=none; b=eQXOwyLs8fY4/J7ObIKI4kOwDkNYLTtP+Ur7tbT3Qkx9LTnKNv6g9LUZDJnR6YAgINjYA6iOcUQ8dgM7pNuxoS9N0aCrKOgb9PUZyc3mbOagSQWiqJgGVbmFzJY+UB4h7hde8R1GqVNw1a++BRnzu4VO9rGys11HmOkrEld/pgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755655794; c=relaxed/simple;
	bh=SSzi2/jRMfeksmsCSXV+XAvf+2w3xFt8Lby7R/p0Rq8=;
	h=To:Subject:From:Message-Id:Date; b=D0ucxMGEywSoH8YbSax/li9In9Rj1Ko1rU+68t4TXpcvqm7o/2+aUREEbyuNMxXlOcQhTWUzoOy77mqdjUjUlLTyiDZvk7lcMf9MexT3vYy/vtNoIUHnFBmDoNO/24S/d/dY6UjL84pHRnykQcZ68nhmicT714hZLzGTYHRwmSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaLrQMnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaLrQMnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1583C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755655793;
	bh=SSzi2/jRMfeksmsCSXV+XAvf+2w3xFt8Lby7R/p0Rq8=;
	h=To:Subject:From:Date:From;
	b=qaLrQMnqmdw3nN/g0sDJ5rO19rA3AJPIz0lnfIi17nvytjZL9ncSmFYX1+TowMfnT
	 fjcd5gbCjtawbt+OatGMKDtnv+puR0sDQ/jBQJhwk0naZBvlfVUoAVaWTSprENaY7I
	 F0ngnlcW7A8WcKJA01fHMJfSglLWSLdcDWoTLHfdzGCXEGfJprtohkYqlFSCBA0wA6
	 fUNDdf7dQk2K7ml8R9BMld5oXtKWfeeEVgdjH4n6sD60QwSctk5J3EF5QXamtZHVXY
	 kh/Tb5F1fTx4kqPeesoqlUSQzlVQk9d3epJM02ETrdy0BvEowlFf96sNrzP+9kO54B
	 zG0udi2munBiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F165CA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565579357.20690.9379080405237530948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a049155ef8e15e9921ab95e5a3072152451864063532bc2e2a03f9004fc7e0e8
Date: Wed, 20 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755655793
