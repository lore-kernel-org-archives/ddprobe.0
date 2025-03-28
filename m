Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD2B14D70E
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743205194; cv=none; b=Q+OVvNwZL/3EyNuzS918tP7COiJiKEjvcrNPj4iP/QYgX+2DYSTEyRQWzRC+/50KCOZDrG/rhrSbx1tLecmkAfH8SgKrStE6Bni8fWz7a7pFvAzEHlB+FZCNmZb45i58y6LOqXMwucjKQMM2TMm/K2vRokYQzuMK4Q2tlC+A624=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743205194; c=relaxed/simple;
	bh=8yUMBYI02IfE3vOsmn9RM+qtTPTVWjLx4aFQAeLoTy0=;
	h=To:Subject:From:Message-Id:Date; b=c6PWTP4XwozQLqw/o8leVoLXF1RKF1aRXL8z8wNYPhAxHLYA+wO3Mm5RGR7vjO6vBVnsqAHclrV89vR9IqZpAGlOZVLMBQjqa9Ar8S7BzC67hO/68xa1ad7C4h149QmDkMxdhj5Yw38DKTRVodrRLLQDKHmQ+fc8OF3Squ8bZB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXPX92H0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXPX92H0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE691C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743205193;
	bh=8yUMBYI02IfE3vOsmn9RM+qtTPTVWjLx4aFQAeLoTy0=;
	h=To:Subject:From:Date:From;
	b=PXPX92H0ZXmQW0vBSFYTTYTwcp3XPbv6aln9+FLjvSVs1xbcyXtqpARCJiV4zn/bg
	 6KVs/Yv1K5WrByjTWGxptVVJbDsv+Hkp3wq3xwqUwQThO999WBzJAP19o7E2FL7k66
	 DiEI0zBqqss3O992W5gVFZoHA/btto7sJ1maXGLc6aBGoAnwU04Nb42jhr1XP9pq2x
	 OBEBlTnAUsUQ8rSRg+/Fl9hHXGcNdNwUHcT0iHOFGbEHIOIKHUBhWXr8yDTZevoqGx
	 DSk+XJJJ/iJnysdMVJlpliQ+4B8YMgfhoi840WMFKoROzH3ltc5Hpc9IMt+rk6DL9Z
	 vFEOatmWs9rDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98342C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320519361.18285.276576053305073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7abb0fec93d571ac3d76c224d9540908d1ab0292a7f94a2074062f1ab2e736a
Date: Fri, 28 Mar 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743205193
