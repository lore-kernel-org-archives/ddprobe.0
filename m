Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453C73C98BE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783079914; cv=none; b=kCU3atZE9Zrx5UHcc/QU8ZGmdBrNIbnVx7xNGFyy22j9Bpm0qnbEGMGi21BBAaYsAUvmERlXLk8xZRbhOFz+QC7cjNuTn3O5OFB3EDHzBxC+LI1yIzo5akeqycf3ZmtXn0w8YcO7C3xk2QZu8bED/4K86q9j4YZx94+fmApUPcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783079914; c=relaxed/simple;
	bh=XSdr8QXTCbTGCKXFxtTNi4Hj4MLHCoD9oJEez8jXGjA=;
	h=To:Subject:From:Message-Id:Date; b=QZ6l5bdxCUyFgey/AgOESINk76OhiWCpvNnFs/u+RUz7H6/GwR1q16Kw1sl6OVuY37pid3rrs2+3ppbpIgMf8XZE82SrDfFXfMUXeyEi3u6MsbDLVHpvjaHLfrVvyr93xMwHskPnhTRc+9kfAc7oea1qs3UzVxnKZ5g2SBHcew4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFbF3K5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFbF3K5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0DFC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783079913;
	bh=XSdr8QXTCbTGCKXFxtTNi4Hj4MLHCoD9oJEez8jXGjA=;
	h=To:Subject:From:Date:From;
	b=UFbF3K5BqTkmAt4X30n6KW6k9KX46U9SBDJbMrcKvP3vqXUF4GKAl+JAqcfhPn2SC
	 GkY3BSmJ1LMT9JJdRgFYSdcYOgiyXV0W8Kl1bNxwbcknzc2Tbxvcr0uS5IwI1BjU4+
	 kT3uh3KD2sQj6aJgyWI18VRm4PXNfZPVXcZVCr+/5bWRMFEU5L0PBHhK2rEgbjB08n
	 oVqhm8Kvry9Mj+RKHWan5d4hYQ3M1YVydtKDRPosgB8PM5rSGqp4oGA/u+Joi6X04H
	 AiXPdeQI+BlNM9+d2u7svCOQAOV/1M7O+DrY28nE2OFrg51t+R7bRITRXrULutp1Fi
	 kmUOhR2gzlMQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9457C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307991368.12402.8964103955661143220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7516a3f136dec46b7390786d1370242c32c529c86dbc1c27525ea79af4bd7fc
Date: Fri, 03 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783079913
