Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F094C2E11A6
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768489435; cv=none; b=nr3C6L5hOcZY79kTm3q6JmkMcA63j05LHHpCrYdr0hYRXks0v5eV6DdoPvWtJewBPIpEcNDg7guB3SdNKyRzIVuxTzMU+8otrvPi6oYfveM7uoQC2O3vVTEUWXFH2G8LEACw0q4qDID323HW6rYMwCEAsB1CH12wX9RgqWsBLI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768489435; c=relaxed/simple;
	bh=s0q32BPq/owndGO8bKyMu9o87YypvArpSx6gXt99PAc=;
	h=To:Subject:From:Message-Id:Date; b=TydaxJp2TmgZqDobX2nkm8re2Jskd7wiDIHxUcvYcvqOjThAGMEh6K52zavYSaf/KgOapQBW1b5XIpMBIcDZvyhQ4VKSZ6FM4O9xMpgMof4fHHVBGHBf7sB/5H5mm9fdfyXFaZYG0Qq3Y5ZS9NPvNQeXOTK0JNAuvuLsDniC+n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ajk8njQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ajk8njQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0483C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768489433;
	bh=s0q32BPq/owndGO8bKyMu9o87YypvArpSx6gXt99PAc=;
	h=To:Subject:From:Date:From;
	b=Ajk8njQq/8xJPuMqNmjD5gxXf5VnaO0GpqZeAmMTaM9TuwsQbtPepNqc9ysoT7Mhj
	 CQ2GHRlCMCrZEgUXo75EnsyYLbiMZFxrby+IDMQWMZ6QntFLZWMUNMQNrXOYqfCrZZ
	 FF3F6MmgOxzVh/7P2NQhlACX+xkP7R2ayGNtIP28rJAI/FUV9cd57agKmMtLxsCbU2
	 4PKoyeRxx2cb7bsKD0wW3bzBjIHG6GGqCtK0amYBPuSLb7T63w84+h9jsUqVzbYIKz
	 hRraqC00yXa9Qre8s029ICODEZ3RVZ/soWkzE4+qV+6YjZqENuL7f1PXzCpb1TYBR9
	 2LYYZxKyYkDhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9252DD44C5E
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848943358.29078.8870110244761240279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b16b4ade8f400a644d53ed7ae61abfc1a852224ef021f315cb200063f79f1bc
Date: Thu, 15 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768489433
