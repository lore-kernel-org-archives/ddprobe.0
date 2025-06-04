Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F97B1CAA82
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749081594; cv=none; b=kMFbDCDVZ0fBQ2PIwoTZf/FlNb7AYxRZnzCPH+jQlSyXOR99E1E6AMQ1nG8Ls8swdRAcwHNQ7F/LjpUcaW/GbMkTOyZl68Pmq8vfu+cldLCTi0rtqjp0PKcvFWwi3bvQ4uBRMOK4V7HOS/twvM7oSYt6vZF3Gh/YRvJHJUW/RQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749081594; c=relaxed/simple;
	bh=Aeu0GJTlizmF5h0wOrmRhbLApa5saPGKaYNfk60hmQA=;
	h=To:Subject:From:Message-Id:Date; b=RGOBsD/xdJyY+1k7iljeaZfS5mR4qwhOaxAtey8/BFjXzK6uXblB/Iu47NqKbBdY1977e8MNVyejN0L5x/oSfXK/FYKv6278S2LpWDCeFVJWjgQc5RjAvm3A0++j7YR0Nv92axtzk9CR5IhFqCgN55n6RrfwFQ24VYx9//SxhSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYVeSnvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYVeSnvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A4CC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749081593;
	bh=Aeu0GJTlizmF5h0wOrmRhbLApa5saPGKaYNfk60hmQA=;
	h=To:Subject:From:Date:From;
	b=MYVeSnvf6fFnNz44nx3t2qZEDA/R1S6rEiJ1wVLr+HOwOiqfLfIZ6YLshcVGqIySU
	 5H9tP6LpcBEEqaWjwGXGQEu0sCeeUxJA6F0w6kql807tdLPCGwHKhCUPS+oFZX1kqT
	 RCwp34CxyP7flXg51AZE2dTcbrD7D94qjRj/MwhOVWBRvUS/N3kFpFNJ0k+FeKO+3/
	 rN78FhyJeqMsswZJdUgWA7T8tj4kqH/K6uAu89+Cqd3IZpe3Q5dRqvVWXyBWojm/fM
	 2AHLBli3iMCV8Oh1bm0QUr/zVnfX2aB0hC96x7/wgjtJBc/bhW7wI1eo5g1zDQT+jA
	 Ig0R+4OS8FRag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93388C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908159358.28029.501368451553773091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5b00e440adaf1d790e7c37510b0384eabf5a8a70ec06f66f0e44c731e4d4c1
Date: Wed, 04 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749081593
