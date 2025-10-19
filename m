Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E05E354AC9
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760881794; cv=none; b=lVcXP8Is1Z88HHsDDcerpzfGbdPBf2RHLNBVrTOOfzErfEuWB3YA6dkw1GcMgIm2WkYsEKtmIdlh0cq3jp4a1Lj/VX8Qz4vkv8proX5UjE4i8hYGOvFAP7avVWDpKzkKyJ3s15ow340ozV+eu+joHHWNKqWPrBFWnkpTKhWqO9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760881794; c=relaxed/simple;
	bh=o1kukqEL7H7MAwRYH9Zn1J/9dWJmVvFSkjJXkMDrueI=;
	h=To:Subject:From:Message-Id:Date; b=ZvEvj3VHKZezelIHmSphxHx/1Ma5t51n8PVau0pTwV2A3DARK3a50sZJRxujJFArLpfix/bdrJcQJCx8g/AAWFLzHy1dBw4fJVqpKUNVBjwHrMQ5kEeBFl5ExQ5yeoE1P5J0uZGCzF4BP2TFuuBfiaK9BQssepLO9TteQ6RlNd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7r/72dg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7r/72dg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5983C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760881793;
	bh=o1kukqEL7H7MAwRYH9Zn1J/9dWJmVvFSkjJXkMDrueI=;
	h=To:Subject:From:Date:From;
	b=R7r/72dgpUsFAE1G2O9C1hGoxcOjsaBV7hlJtJHOagp2WCZbkVyTXVcc41jkuoz75
	 ixYixktHFrHjqJ0DXAVSu+PUZ9daXULc/QVsfBxL1Y9DlI+2PdIuJqpCVb7ybVEnWQ
	 XAje0WZ1ybS6Sm1AAXs1CQIJwll+foJqDt/dvBruTtK4ZAnqLC0J6sbAOZZiUKWVSw
	 moZCyddTVzno1CtYAUvFcKGXQkOdGPXIRODqL3jVHx3RHC2i8ZEGWIYy/Fu6ctXHGb
	 MkomcJ7IB8n9FQJtOdFZbPfEHlHWxnfGkgwAdXWo5JYAtj9Z67afqQrnv867uoqiVB
	 lqo7PoZjaOIug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93615CCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088179358.1368.6442007088465100120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2718680b27763b7c888553f6e96980a4a3bb9b8856982477be30a64585d6b193
Date: Sun, 19 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760881793
