Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1FA205E30
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 17:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713633623; cv=none; b=C1gVI39jYALQ0M+OHa6RsVvW7JqKRsoVsCKG4tyDu8x9ePq28ZgSCiST7efxru1LxdtHpEIKFJa/EWx+bzqKza9MI25ckkOLk4w3idrFjBm9TWsiiOpmDE3t2djeaCc+NNItxglJl5O9i+SEJHm17Q9Gs0qD+SWF9qAtyiiOprk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713633623; c=relaxed/simple;
	bh=G/HDbF8Gc1JY9AFB3CbxpVwat2h6ceieoXF8qgjRVGw=;
	h=To:Subject:From:Message-Id:Date; b=gTlv00o3JjQWAjdW6rmNqsDLBRfde50BgH8uxcZi/foQJmLwZavUYU4cjdMsHDoTr80qBIqOr5tNAJ9aQhr/BFPrXCOAVf64mujy8/8IV+AUB7Y085sbmqxJyXXJgfVoZbkF0Bk7Z1LJLDVoogAuW5oiycp5hELqrljupHIpqTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gt401FQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gt401FQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73F3C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 17:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713633622;
	bh=G/HDbF8Gc1JY9AFB3CbxpVwat2h6ceieoXF8qgjRVGw=;
	h=To:Subject:From:Date:From;
	b=Gt401FQBLFkEfHADPN6TkbsphffsRv1Nq1EpznPjbg9ePyqUw7GrsaznJHSjeXlCH
	 pSZRwr+fU7/RVLrsTKTsShfaF1lsRj2BOXPb4joL7fs7+DHD7eM2N0XpwlXgXGTMkX
	 XngHpNV7ftmTSr2rnYvQGmwINDwrXRQMYBdNl5MOyC6rL+VfXDzcRlK+fyxNVWcRis
	 Fo9YzE338bHHnwirzDZldn/Xd9VkNWC91XVPUaNToXbzwUCZxzgyhzBUGmLYfH1X/Q
	 BU4SG4JWgMzby5foM3MXX9WUPTP57LzAUhemxYUQ6262sXi9Hj7PrcITMu6NHU7Ptt
	 Mv2ao857/fW8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6EDC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 17:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171363362275.8370.5390477630618520531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452bbcf6be3dd95d8ced34142f02d2f4c452f14f450fb4c4aac9d2ebcd28a942
Date: Sat, 20 Apr 2024 17:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713633622
