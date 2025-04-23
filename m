Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263C413D2B2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745414994; cv=none; b=DyfzbiPekvEc5oM7GnYHMIOnhwSsT8uoFrhQmwbNlBpeZGFLynezXBcaW8eS8B8Uzkd//H0eee4Ez7Gfzq4u41taf7XXwsxwditQbcYOxUjPQ+KNFZ12y5ene8BTln5OYCYM97lOX2ZyXt4J27uPtCuP4MIlc0nIWF5pt901ZG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745414994; c=relaxed/simple;
	bh=F3WNBowLz2PATac15txQEaHj8cVXoalba4Bf/xoDhsc=;
	h=To:Subject:From:Message-Id:Date; b=DT0jra+/SeXLByL+PdKyBrticbCedYOzsds2sQNPa1WOF4/ws8OtkonhbBqQCoDVNa/wBPQnIM83vTo+g7qj7qefEIS+lJRSyg4qBdYTkbambJxMUe2ugdIFWuTUmpuZYACcwz2lYmdCYti/sjwWhop1p/c6t3NnaibrRbf3qzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjqvkE5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjqvkE5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE48C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745414993;
	bh=F3WNBowLz2PATac15txQEaHj8cVXoalba4Bf/xoDhsc=;
	h=To:Subject:From:Date:From;
	b=RjqvkE5WRZ/6ArsJqPV4w7pjMeNeVlxfZkXf798g4g90eNtSerebQQatDhIZaLfu+
	 CVHtshE6SoufGKxlDqy7pMsQAHcXJPlZPu8b5p20tyEYGKxUnk0XnmFWZjrtRt+T7T
	 qIZSUTnRFKn60VEipWyf5Odi8FOyWWV1Kiuv0sy0CiG6LmKS1BKGT/+ZrzxQNBN6Tn
	 4OcVeXLQhxuRev+yYmjlaY52WHy7/0TLaqS+RldKilzx8XoiWqROeH5NSctvtJo5A/
	 Y8Soqmq0YjZbqAU08NQnemaZLHM8nh10YO0i7lw8OHOG9CTPs5MoGZ4MPWA+oItAbD
	 ZB+Wt9ne+PVEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F974C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541499358.16215.3993040400978846489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da35be6c22a68e3963e93b835e6a4ba342a4576ee21a464ef02bb6e988a87178
Date: Wed, 23 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745414993
