Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D85317D356
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719400403; cv=none; b=NSNkkwFlPCKppVrs2gpe5fpSeagxNqzoNuJqCFyO6dh2hMyuJDBtSAAsOnbVlEZl1hiVYA9IUNmqpajnBqzoH8Cn4GM5OIiQGYQh01fBLTSfu8XWeG4PM7B310qFu3MWrobSPKQErTqiEFNAy5V0WmySx1g7ykfllroHWO+UQHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719400403; c=relaxed/simple;
	bh=E1HGO0h2t6O3cdOXVNGo7GlA1OqQjzalZJku/METq6w=;
	h=To:Subject:From:Message-Id:Date; b=oh0eB9TXECD9UJLwL456Go0FsXP2iHPLLlsJeJ6hZQpAPtT/wP53n5cVW2x0eZX9YtL6bfB21wpi7K4KJUrEYnYfHY9yhnSelWTHv6g5v+vIbyXBT8CrfSDCpTShCoGuk/qYzbNMI9MvtOqjWPPUk8lh29Vi4iKYvevHKdr6Ph0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhdMFzPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhdMFzPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C6AC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719400402;
	bh=E1HGO0h2t6O3cdOXVNGo7GlA1OqQjzalZJku/METq6w=;
	h=To:Subject:From:Date:From;
	b=dhdMFzPPTiCITF5ggJz/p0q+9oQN+ZLNpQtueHNBPTyoJlS1Zs9klaSVI1rAMoThu
	 j2aJiZCY0P0fWECKQh5V0gXI1KmG7wW92eX4kEqLni7SQAAB9BBmGjFirY9KmVApWH
	 lqIn0MdAooaB0aR4mCgtC5hvtKBk62YrQAxQdLSj2GezhQxSltleK6mbHYspOvo8nF
	 AxBAYN+T/5aTTMqyckuJK5RuSTDkN/Q6/hWwvZ3wiLWd9Fp8OGHRozWuECuesC/3j+
	 ZlwyGu5EFlu2zLr2gnVO8laIV7bNoOk1hNLQY8I2ckcYNxiHJW/SQ2l+fKvCwmYhpR
	 Jmu7w5N+td7pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D31C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940040280.32498.9510672993045041250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736eac9846186ee9963b62fb5fde6e44a136b2c5b8ad8e2d5f74eb4a84b16213
Date: Wed, 26 Jun 2024 11:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719400402
