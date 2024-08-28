Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3687F16C87D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724846154; cv=none; b=F2ik6l14wGXbwE30iV6qEsZVdmh/GnVgBo/cRVhMxeCDo4osb4wRnLDo57t1elcHVqxgDkfY+aB+EBvxePz08nTSX8/NJ9OOUCfskNeMZhBytZJvAtx6u8pKFqiRRXtq56SALjgOvWWYStikTPgXU51v2+DOb+4kC8QI9evAFF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724846154; c=relaxed/simple;
	bh=9IQ/WsGSp5w3oAOEJr9irgBUMRtOcRW+ok5+BgqpVjk=;
	h=To:Subject:From:Message-Id:Date; b=rqjUE5UmspuQn2VuetIDCQ0wq7b1lz6UmZXaUqDsaj3yMUXwu2tmF794vlPjSzsDjY3jR0Zf3rTYacg2F6aqean6J7IYdb9yR5x923xk8wMiWw1CSU3+h4/ha2vlOvU0Q+Jgod2K0I3uTFw1bFNGCQAaYptUq0d7AuJzBhJIKjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMeRE84G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMeRE84G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9950C98EC4
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724846153;
	bh=9IQ/WsGSp5w3oAOEJr9irgBUMRtOcRW+ok5+BgqpVjk=;
	h=To:Subject:From:Date:From;
	b=TMeRE84G3ZYwReymAk/lCxmH9W7NeL7EFICBiF6AA8GzDUJTMfHUEdevSx+9JAY5J
	 1MAjjKxOe6vSQOQfx39+JUu7ybodQc6I0Yh/VfXiMv28FYsIqUINXkLW/WqApG9P5D
	 EvJ66nP5o+rGwVoh1rYs9oebjnWsTbxUBAkPexWvzAC1SDnzTjMA4ASFcdxLwdYRj3
	 5EVfXcrD0tr5dKZ36poKMXRYMFJm3IRIQyAUagsDdwOXIrgjyjwOSd0m+lUY3Nqkxl
	 PZhlKB69GVGCNAVulWS8o/xvY1dCNlfwaqXtIa41CYV+wYB6rGQdTwJY5W+liolbGh
	 mwpPtZEIZFAHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B17C54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172484615360.23083.16868296200251969375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c335bb9a9c87fcc1ff37004ab45a6e004302e6a67ab58e2c1781ab75fa10b4
Date: Wed, 28 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724846153
