Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDF22C9D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705582697; cv=none; b=KO4Cf8XVZVOdMs1aGTAUcld66M9gbskEeudof74dzjPhaZ0kIYoKv2DqL9lv4TwEi6rCoMyt+1BNKicyqzi5wEv48Bvd5I3wxqHmzMo0yArzqgwws8u/+rA8iBN5kQ0oBvbi6Tuz3KPb15xWZn01L5eseicy57kE+W0n8d+imfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705582697; c=relaxed/simple;
	bh=B9BI9HleBpwmgvN0HV5RP6FvBXk0zS23splr4oTRKTM=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=NA1tFbEQW/7/HwXz6GVlpgfsFF9hXQmVNzVZAOLSDWt9s50wsaB678keZ6I53vSwwMPjXY3G4rEu6WJ2Q29nJEMPnICMWaTD6o/uPQqD23YW49uew3hARx1yNj8KBoRhWLUrzJvcK2oU8OHtgo29HtPVGD0OANjFE0uYmrUba/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlHzElgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlHzElgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7173FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705582696;
	bh=B9BI9HleBpwmgvN0HV5RP6FvBXk0zS23splr4oTRKTM=;
	h=To:Subject:From:Date:From;
	b=KlHzElgBc+iu7XvTUsWtYgUAZ+vpp/LUg6J4eRa3DsiNQZ5xCu3XvE8cNp4fWbRPi
	 JdS/WIPPGZRlWmvVCZLGq6l9W+s+hV8ZGVQFR0NYyHnGggp4FPIz3WwKiHCTDWMsz6
	 wZxJtBzU88DRTxg+iR3VIRVe8RyN5BjF1qN0Doqqj7Pcqgs+45FMFRfOvN3gGgIk2q
	 S3GGnn2XVD9cp/YwJ2RQwP4Zo76xGsZlo+hux8JRr9fAMiItDjoq6hrLA7g5cUFK9+
	 2GEKFlcGsjsvmswUpCEfegkkrOiMEJR9US39vPFu8ivtzQT6y9tQtZouXgixS+8prB
	 QrZKTJEqb5D9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C5B5C4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170558269637.4067.17868312061422605963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 416483a63ecd2289d1b972788336369c9a69134f4e139a93d63b1bd1accd40df
Date: Thu, 18 Jan 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705582696
