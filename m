Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E883FF1
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750986594; cv=none; b=Hm+MU3k1/ekm6P97Sws3tQvrVjHxpNlRn3YSvNc111lXvQYQ/CA/FT+HBSY7jGULZlMAxnEmT/a4utY8uRfDDRW8uRwyu7LyiMUalQ64AuV+IIw1w2o4y+fu+s/yVqNSqjFzlr4QdiFgpsrBoJKHe2hEglki7ROkbMJb3WnIV88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750986594; c=relaxed/simple;
	bh=XGBWGs15P7Fth6c6j4FmqXSDPNm4C2iJjF9YB336Ars=;
	h=To:Subject:From:Message-Id:Date; b=oZv7Oe97BsAOEw08LcVMlRHrrcjokFp7jzEO50zce9D8nbTJ2JY6hj/AKgtsy1P+JBACznc1Nyf2QfeV+3t3tCUYz+7e5CXTaxUyI9de8WB0bQpOPBvZr2dahtKDQK+OHSMjLXgnlaTy9GqhCzcOaSeGThJAv06Mu39L0LS7QpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6d4Vgp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6d4Vgp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4D5C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750986593;
	bh=XGBWGs15P7Fth6c6j4FmqXSDPNm4C2iJjF9YB336Ars=;
	h=To:Subject:From:Date:From;
	b=O6d4Vgp5qiD0P/eAKa7aNX2x6Hy3+b8SGFTpYGyI5DP9vjgdCeVdNI3xeEb1KWXhZ
	 435GWZ+HZs37h9gAJz4uyUFVU6R4Db9R2Ke8UEVpaYaJZMjT2+HbFOjAniVML6Ar2X
	 lHIU1ZE1WZ2M5h+NLr4J0CE5fxREFlTm6fQLuEeIuE8i/pEqef6ZLSXeeVERN0i0+K
	 hUCcfglhKmaZTZrEsd+Qoj8jwtFgdCWWooG2mSUO7qatFAmm90FEWowtb+5RwooAre
	 FOdXnfywdZqFzKyGdhfq7g/0TUjQ5/6UkKi2b20+6cUZxo/c/ChMb6q0R5uHzqWs47
	 mXXmq4YNBqvFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ED9C7EE33
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098659360.2905.9204976461933186928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d2c432a4ac2db1debd43bb35fc0aceab153f9f63663513f46d1aa897f5b965
Date: Fri, 27 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750986593
