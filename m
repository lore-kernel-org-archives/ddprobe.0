Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084371EDA0F
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757191195; cv=none; b=mXmf2aaXzzU1Ci4mInvEj0QO6AlKVV4HW7nXOGRrPcXhEa9yhrSu/0RYx4wZbYgSZNBwV6gvG6e2NJhjAq9iJIr258kFEKy1QDdQJppVk0sjf/T5BlThot0VR/VInDMNddr8A6KC2m190f5yLGGdLr0ZIlZP6a3PLGVv7G1kbMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757191195; c=relaxed/simple;
	bh=SNb/1vKFLAXszfYbLAd7rd0IRPXZO0W3akGH6ZWTi/Y=;
	h=To:Subject:From:Message-Id:Date; b=Tkj+fTUNKfLLKhtJiURe18B8VcZOWnI+TETNrO6h7FfP1b65S0mqpwW37dKqeD2pOYO7pWiBNopfJqd6GZOEiE+/RKqgpAaWXTPVXwoG/toRPBjkjw5I9a/xmd5zOjqBZnbvqceVwkaaVOJbK19MY8EBqMTYBwQJn5/3LvsRqKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gk6yXvOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gk6yXvOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A011EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757191193;
	bh=SNb/1vKFLAXszfYbLAd7rd0IRPXZO0W3akGH6ZWTi/Y=;
	h=To:Subject:From:Date:From;
	b=gk6yXvOcpo1eaaOY4WBFeAtrEQfV6Pesgw+Bl3eMKJQyIwA+T/4JLQ4ZpDC0DDSVV
	 UchCraN/xWn4UANGPK+jvtTXdB4jsPyNZa1T5al2qWlBkquv3xS0qTX28MtJDBqJAh
	 xg7eKBlpBYGTo+hTEBlSh0nVbXaGzTT7Q7xDeGenn3+E6ITg5f81q6cWy9FGiMxPq0
	 82VL5c4RASmOwUgggF11SBQ6WMOb+/xuBV45hUz4GPFluJEfBno9aVkovX97eTqb/a
	 KnHLRePyL/6bHfYZgywP6a90p0cX5EL+AKkOlOQIwJ/awA66vghTyumZ7+ZTumyEf3
	 vr3ul0qFErOoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E74BCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719119357.8008.16857702745990687250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c9c5ac21ecacb8b89cd9a10e9d0078ce399004c1837bcff22664235d4f3f33
Date: Sat, 06 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757191193
