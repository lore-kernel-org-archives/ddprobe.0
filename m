Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FF7849C
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764523974; cv=none; b=gM4FSbhJ6e/hkqKqqP2JpQ1wfzjFJr9Bnte4QnBvyTTaCOMenbPspos2rjgSCtSQndBL6jdAdxCNLrjSJB575UBy67QIa2hGMePuvoLaSAIH7TOQ2Qm7THfn7woxHj3+shABCm2IqfkPveUh/vRKVJzDuP22rECklHfCZkEOXic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764523974; c=relaxed/simple;
	bh=GinuFBo/8vyqnQgbNFVPUolM7bTsSR52PPKnUx58tDE=;
	h=To:Subject:From:Message-Id:Date; b=BH7U00P2kAGSVrN9dpwmxO+rY0RRs+LscRzzky49mUB/7BpggvYyrH82/8tYRJ0GE4RfcbQg/hoSU58kYDK5AT7pl2IxURl9PU7+qP6qMZk6qiJULZjrmKWiXT6xElDudKI/GH3BcO4U3or1oOlzrpw0OT2/I+1jh2glYjnH6nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avALuoJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avALuoJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78E4C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764523973;
	bh=GinuFBo/8vyqnQgbNFVPUolM7bTsSR52PPKnUx58tDE=;
	h=To:Subject:From:Date:From;
	b=avALuoJKeC9DmldM8XnoDNnGWa3lXRv+c06vqIRdUvC7q5Ox6pO6oh1kP1U/cozr2
	 Uxh6VT4OtK12Mzf9TwtQmnU0eSAahnBeXxAit62hKdkcakdgyJmXt3dPijjYU4v8sx
	 jVLohYtfCEFRx21clygBpjDxi401leM6UkA2XEwg5WqgCUZTmjU6lvJBZ0cpUoRPcy
	 S0iYd7BMfsdqD5tZZaW4v9pH5dTK2Iyy1+E/xU6jJ8Wx7nnGP/u3j/g+/3IkHTjs9g
	 +ml70oHgramKh0IVBpzY4eSI3T9vEuJ5fIhnrJZ6L0gpY85IFo4TynZXWANlI/Ps2d
	 Ny/k0zV2eBNvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A048CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452397360.2220.1822857292829809611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a5c380f8f9b5ae9fbd301bf51485c4366cb7b6204ac7d35f57247c15500dd6
Date: Sun, 30 Nov 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764523973
