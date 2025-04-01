Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DF52036F0
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743515394; cv=none; b=o0D7txm3wMJkAreZryHTrYUv6t/jEOWcaf7QV4gggFaSddvbzT/UyeR+m6WFpf2WJGu98sxKDr7UIoM9Rw8FigDlwKU9AJh2N8UKI1Bk/IHAajx6KdwkcWsW5pClk108HMuO91eZpGBVzWuic8Y12BhVpuG+fJeiFuSMXm/2T+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743515394; c=relaxed/simple;
	bh=0eETlxerqf5QFOR5qrmktgx7bpCuufmfPhFb00uR+A8=;
	h=To:Subject:From:Message-Id:Date; b=sRGUy6YR3HqsbtKObyD6aWMmn/hES0Nea9Vv9CFE1W/34JtSDZM1024ZuGwV80YIZ5VmbJHpA0vcpq8EUoGBmUOCqNea1eXb/adztTrrAfo3GPJP+ie2d7bFr+/3jpMwz91k2eJiPkfjdRQEcfS/++GKY3Js4yfA4n1SofMWoUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEfolXkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEfolXkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F0DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743515393;
	bh=0eETlxerqf5QFOR5qrmktgx7bpCuufmfPhFb00uR+A8=;
	h=To:Subject:From:Date:From;
	b=VEfolXkArUDlFUWsz88L4mUobGwl1UgVkRUW0m1eKwT25sw024G9Lwq0uG9hnTJWL
	 vlWJjZrRFRtBZTHt2NyYV8SriRU9wF/vqFBBM5l8M3eNnS9YU/2fwhnnD8v41M3PH6
	 W/SLd+I8jMZ1sEpshkrHkSkqbxS62cbMJtx7YLbDlMbjKggWj7vVvgpwV/ljLxwL+X
	 EllXObku2hQI5Omic4Zo7iHX7bg4DH3xTUGqFdoobLkw/lTdTaPlmzspUrP9oRYMrR
	 GcVnMn4wvmk8x4yGZL8L2aBa49qe2KJAo3jnqbenZm6NQ5BQUHhBmxTTNB9UkiDvFK
	 ikCwU3tnhLfsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9270AC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174351539359.9831.7784384761317360280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555ca2b10c5138b68e6405c0281486b8dc1d2cfbee185407925a3e65e9602532
Date: Tue, 01 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743515393
