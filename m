Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA8B3D97F
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728024354; cv=none; b=TKAPeSKLSFvOd0m7mcTRFvyDj5Szvygzod88XBD153zgU4llCQ1oMXgMr3f6isYegmE2zRZPOExFcsTkKaDERQbE1z0V8RN7VQ8733c1BnB4xR1SK2UE6ZLAmnZUKqImNK4eX7lbwRnPXjnSXsZHUgJzQSmlTiP4paU9dfO9Ahs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728024354; c=relaxed/simple;
	bh=PtB/bUUfjmzDVDxsIQGCiqDJXK89k2tfiZ5BRMfLFhs=;
	h=To:Subject:From:Message-Id:Date; b=ZH8vfFjRnUOA/cyws+DmIFPB6bsgBm0nJ5loqEpImYBo6dwtF5TAsfvrRU9Jv3x0BeN2IaA3ilFBLnyWTNjXTtAvj6PxpI548KAHSaPueATEdoo/pVT1OzTiXTITpws1qdKgB4JDFJBBjZPLA2yDOr4OdcINn2eHY94h/H06yBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1hVyFY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1hVyFY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2125C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728024353;
	bh=PtB/bUUfjmzDVDxsIQGCiqDJXK89k2tfiZ5BRMfLFhs=;
	h=To:Subject:From:Date:From;
	b=C1hVyFY88vWYVCAtt6eL2Dp7yn7ZkXO+FVnhwKbvjHl6/H1b8KKZNGeB1jRTEHOQo
	 RIo0uxVSBbfFJkZwBAbvjZC6LLiNQqtwjV8vMHEykY66OeeT7J/juQ38a79KeNd0Bf
	 SOvy5xOiidRV+2HYk44u+ZQUMU3xrgVfFk3JsTrwoH7kBYdAMLFqBygHA8+drII61n
	 F4Z6xV78Fdj0w67jnx/fEdMlh5mZlv7l5ubnXSY6JMXKvwmgqs0QhF7icrEf6uCNHb
	 0E7HKn8s2VoasPa8ugsiwx8RV5AY6WSBVIzbhF4MKP0ss6sHHAhkajyB+nwBjFilhW
	 +9+VyC1FjIdWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF13CFA749
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172802435364.11150.2641048860979822008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29748875aa4a5e9dfeb30d0a66a3286f8e5d6ae611b288be9c047269112723b
Date: Fri, 04 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728024353
