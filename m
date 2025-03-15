Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C81E202982
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742052594; cv=none; b=ngmq3y9v1tK+te7qoxJshhUYCKncjyCiwzSg4GW2uRLirs5E5yNEPGIOCwO/Y15xl2xCMszcIprXSKKv/yhQXE/FTCPRhdxu2d1LfZgy7lYqLvn8mmH1/n5Jci/v7sKc2+FGy8SnTQAwMLa/vhRzAT7yHDe2cw8vyqAZWYPzHv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742052594; c=relaxed/simple;
	bh=7sK1Z3YMVbud8QeCcTWWGZG37R1CasFZKjnn3eloJDE=;
	h=To:Subject:From:Message-Id:Date; b=gf6s6lNRD7gf3ug7JzJQlV1w+4ya2MDiiqS9mn18RlUpZnIUaTB2rrh++5RTm8qZrD6b2uD7c0OIaHTd7R3y9STreMI840HS8BAQsGRklT3s7RtWfMKmHiJwdCyRqqeEQe1icwa+/6ImlHmStzfquAwLmCrwV2aDaRHl8jWYbM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Na9nP8Jv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Na9nP8Jv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FA5C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742052593;
	bh=7sK1Z3YMVbud8QeCcTWWGZG37R1CasFZKjnn3eloJDE=;
	h=To:Subject:From:Date:From;
	b=Na9nP8Jvstq3X66g/HKgXt1SznIL8+7FHaM6cXvAuVeF1uDXf2PNBq/b39pnt96j5
	 DAZ0uK/a1oO6Dl/qUvrhc/a7uCG7kZ1eXDmD6Mva0wpl+D5DOH6wVJ1QhS3TRhJnxJ
	 5Ds7K8keAkFS9ZEkqKwcPkREhzLnBMZV4YHgaEJJpbK3Yaw7ImYb1MRQCMdkYp9hop
	 eRuJsY6q4CmsFo6xwh5frfw8xDsV3zWMToP1aFtaW/0SjyF2HjN5ZayyOGlKPoy5Xc
	 hPCLFZxXY7fPpiTZWH6c3feBWbZEglGvYsKt0pfQ9g7Xde9tx+MQjh0Ak546u+XJyD
	 ZklrsbJNH8MPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAF1C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174205259358.7707.18206816915734294594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9966905d826a48b570bd67324d4eef1d24caa7c2e2daf5c751a7010b0ac8f99c
Date: Sat, 15 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742052593
