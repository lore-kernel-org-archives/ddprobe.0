Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259422E36F5
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754789394; cv=none; b=uS6lQeICAPg9Hk4PDS7R4MROyRAJuCV53OgEjiI57KKhj8D5xkWwnB51cRvu9kHprBzkvx8CKXgrhUGm5EPz1APbviRTkobW2JUUyyvnTVUBfUTHKNcmIQ6CkoVC6aDgo3XKpDoyhExt7OXPUnK5mhVxV0CYXLcYySZAwewj/1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754789394; c=relaxed/simple;
	bh=vw9AxLwPtOyoFvujQl1Z4E0+0IbyHkOyaToADFBpvVs=;
	h=To:Subject:From:Message-Id:Date; b=YUW0Ml3rWK6Ox8kYcFJxZp+34ChnYyVQ5YHVPYAM2ae5xCBqVHDKQw63S3UVd8aguF69zdSaM9pqoH1ZP8insbjiP2qw6mMVvmDRUDjre6iujX18tPT0hIhUGYTa1r9BDLTmn+JooGAQGppL6rFrylayVvL+aMTw+tGKb8SIBBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqkoluhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqkoluhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754789393;
	bh=vw9AxLwPtOyoFvujQl1Z4E0+0IbyHkOyaToADFBpvVs=;
	h=To:Subject:From:Date:From;
	b=kqkoluhzsLzocuVoGG0fcvhM9N62m2ePHbfowvui8f9/mscdA/rCSEzJUQCQBVOv6
	 U1ghCQ5vbzO/jMm18WQcg6KWLfgL4Y3gLr9+I+csnRE+gNNleLJmab6QyHXFrxq/vg
	 agEArdIR3Qd5XhU3oL7TrZ9w2/AvyH5wxpRkjn6z3Z5dkW67K8J9iIYLpnnpAdyE0M
	 ignS4Qo+nnZhG+xXFr0DcHa0OW5Xr/Gz7L2Al3XA0/G20JY4HOJMit+hWZSmYvpozY
	 JskPZ0Y+/Fc+3KJ7fwxh0T0FP6CqkEj9xFyy6ep+QmKxYE2qP9ZfDmWMOpF1XdiNgF
	 pPquZd9x4dWeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CACC87FCB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478939357.1184.9260380468233534999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618b4f0cd82b61907a9214596805f80cd3d48f28290efb3b94bd7eb9bd91bdb1
Date: Sun, 10 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754789393
