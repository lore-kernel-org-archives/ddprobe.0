Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4063E2CA9
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745153394; cv=none; b=OJbixFte1Hu7lraoRTLB0sMF4Dy+LbmB8VrwhXvHN560kgF43a+3xboqAfsTzo9Zn4gFXB54xFXO7/0dUciSSZnwtLWzl33Rk+wcc9LxosVk04npL+bFWIU6Q5aCIWyVBBDj3x+dHFcF01tFmaekHvLuIUfErSF0suNOgJwzkSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745153394; c=relaxed/simple;
	bh=Tl+0nNhx7w8X2/lA6Dse0ESOMbsvupc5jdL7qu7FVqQ=;
	h=To:Subject:From:Message-Id:Date; b=rQj2WiVSZgfP3WWpWlFQgG1YILBSG9qfxgCYXciiVn8/NqEf4AU5QE8dPdFt2OBGp69cj6TXH6K3gHJtQnpDDcUtD1N2dez+rEkl17vLL5iV/UAsOsX1DqgyZBwsk+7n0T/SNKnDanRhJBU3xh2sS3oyGTREqUv6Q3jdAvuzOjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqfbue+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqfbue+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC71C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745153393;
	bh=Tl+0nNhx7w8X2/lA6Dse0ESOMbsvupc5jdL7qu7FVqQ=;
	h=To:Subject:From:Date:From;
	b=aqfbue+ZQrcyGZ9Yg6+GitX1Jw6OO5bI4uDgebJgT3cnbXEDYY357F5bZZzEmuJ/x
	 nQ5U0Ioh/FpCKULbveO+OnaVeHb/XcVLbT7+5JiZ5PyYBRy0NL2138ckvATKJvCA14
	 0MByBsTMqjOfelLNS7oqnfToZlog5YyhfqXmMk07ytr0IzwObklSIufjNv89Zqfj3t
	 PI75Hyzy1EfG0Y4bXXKw1qLm1QVHdOWn5lWbY0qBrsMQBPhs8D4QpEfo22MeWmxHQA
	 kClDwclpCJINxg9L+OtxOPuXkcF5WCrUkeKfnmGlDRWfMJBor2wI72spttyuyPb0bP
	 52KzdlRELm9dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99099C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515339359.25547.4469725754337489649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8a34f519958ca339d077b2535c08e04e94672f3efc62d6f88bf19d5208b959
Date: Sun, 20 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745153393
