Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E81DDD2
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751776794; cv=none; b=g9guT3Cr+30FX5iPYraNBuxN4BMg/s8HGgtGmGeX55vYIeUVIuIpb3gYteCrYGSEYw3QTSG4ybkUAwaFN4NFQl1oVLvg3eeVJa6MAc0WG1E9cWZGbYPWLGpwJDveHypcyFjldYaJ1+WDevlfMvRCB1DCgpDrsAPLdyg2WCqfgZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751776794; c=relaxed/simple;
	bh=tohqYTohu43W+gMwjwbJJsUZf8nGtm9osuHWarqMf80=;
	h=To:Subject:From:Message-Id:Date; b=T2lYUqiVeBoiCUXOOGnbddqoj5ag3EusXUodJ/Ok2XMPXn8kvSzbkq10SvV7I/Dlidf45TYPZgkkTRscAN3zF/OVwNqCxUP/ILz9tsLMoqRf9JdrRtrDfFT7POT5okaV4x0SIHqIkqMBbmCS7FP8YWKrgDaVEeseOvt6wqch6tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICBQz5Up; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICBQz5Up"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A542AC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751776793;
	bh=tohqYTohu43W+gMwjwbJJsUZf8nGtm9osuHWarqMf80=;
	h=To:Subject:From:Date:From;
	b=ICBQz5Up96GfWIkyXRn2E7ryuomC98MgHy4gt7R/8r6yXXYHVbIJYx5n6GQhAXO7q
	 ewNtkDL8RT8tNykKvXxGfxcIzlbOJAj9rMy/OWkYwgezx49KRS/7S8jyzDUt9FvU6d
	 27WN6mqBaswYnODw3Lmd63goIkv1075CqFAhEFO/tK3E6ihUJmdkRJjRBvrQcu2m4q
	 0yo/jA/ettGu/tW9aTnsUM1raARTZDMu2phpS+kxB2VKdqHul6IOysE7759GIfLlgC
	 +F9WVigWitMOo/fvxtGWqowhSMddVn8Yjr5I+iKqtwVRDOO0m2brP+TtAXc4W78g6c
	 A9hTzhSLz4yHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB5C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177679358.18125.15203673979915868903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3731d42b1921f1d5edfd22e3f3eb5e1084058ef953f0ed06e49662ac04008380
Date: Sun, 06 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751776793
