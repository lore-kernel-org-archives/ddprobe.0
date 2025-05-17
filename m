Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9684B1E7F
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747484995; cv=none; b=JuxTqxE2NiWrjjmYT8Bo29IWjwuFobQ4zHcCYpmPVC/BwlVv+vDQWiDnCXUlik91/PYb5EAd0vhrMtyp/ClF8VbetQ2VuJsXNwQCwWSlni6K9M+0wvFbkqGPLgUJcJ5HbfR1oru/+qXnGH6u8dazC/jBYkz91XCogVR7YgtHaWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747484995; c=relaxed/simple;
	bh=FVJWQ7SuDddpq/3tzwhOS6Or+GIgKDo1zhqKkgWa1Uw=;
	h=To:Subject:From:Message-Id:Date; b=bQi2rqJKyvaRAtvW8kMlAX6iy7mOBMAX0mXwVoVPQQwNEAeCZBlk80IJxD5CEVTczE/9ep4NCnNkaU5s2p1+ME6azJLHjHwKzxy69ap+KVWaL7liEEE4/YZS9eWl9bWQoR86pqzFiqPRzRAktHidXM+ykchyoHTD7IOA4ARTpyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFAcc9sK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFAcc9sK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8894C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747484993;
	bh=FVJWQ7SuDddpq/3tzwhOS6Or+GIgKDo1zhqKkgWa1Uw=;
	h=To:Subject:From:Date:From;
	b=FFAcc9sKgoeoMe4OfIofGN6O3/BXvkw/80FchdYa7mZMI2XOtv2qCUf1QsvI9dJVE
	 UaO/piiTPbMhOM763JGqS+8MY5Pe1WJNq+c2ud0G2/6nSkBWfPbVzSJrvBDSyUcGQi
	 w+6onowcEssdvCtKhy6xIv5c/QebRfbA9vBp4TNkllMHDuXbdaQtbvRJsGOY+CkUXb
	 wlrD8vv9zET4WChHfQ/SSfVyFMXJ0QqEFrlHzKvxmpPbX0AEgAve2n++tlUWJhaoHN
	 Y5w7hOP4oOF5BOjXqWUPR+h2vrU6tKLbUqsXCCkLDdYi25alWFfDsgpteLNJRAgQK9
	 9LsSMU5ImUhow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9522CC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748499357.22592.6115826823638461165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826daf0348ac556dc2c9837872b524ec2087cc09718c7c8ff48dbd6c9327ccef
Date: Sat, 17 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747484993
