Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961F212B75
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710589096; cv=none; b=EPiJGZJKEIlHsHpNWoe5mQ0M/mX93qqBv2ArWj0tQ4Tx70Hfy6Y2qLlLrGik9CD9kKkLYQDXdtxuj3EcJe1Aop8+wxp9UTcYh/5tdE0zcF+QPs5cio/JdhkK3izOafWrNAlDCICEmLUCNU8IoE+DJ3z3c7wqbQ2+PV7vgEXNOMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710589096; c=relaxed/simple;
	bh=aTnJ9V8wbcGz4RP0pr8AejeVwnosLlSBnAdc9zOD2vQ=;
	h=To:Subject:From:Message-Id:Date; b=E0/eiDyav0vkZPMUDR0/4Mzs6ZEHIXIntXY9cdfc8PYRKxGzkWTmDe4C3KG2gziXGkmeKcmqnz8Vf1bYkzb0ZMxaweWVNaXkkeJEF6ao9Ubypvt1GxXLKCQlz8f2S26ylLptCJGPdBj5qVEhpQsOfLhV1o2CTeoaMWnX7RolgXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ph2Vhzsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ph2Vhzsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F868C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710589096;
	bh=aTnJ9V8wbcGz4RP0pr8AejeVwnosLlSBnAdc9zOD2vQ=;
	h=To:Subject:From:Date:From;
	b=Ph2VhzsiFi81FIoP2QplD0bBF8jX7F8jdU/eXOpKzbVEN8+CVYb73BUx8X49BciRA
	 FmRfbY94zSSAXXG6l4bNn7jUtG1k0rIitB2Eb74EELu01Wfr9uXmqd36Y5GOVqayaz
	 +R3BuUnpRnU2WwXmKnJgPccQD+ZvWo3brHbEFeuYWV0oEJYbR/L6k0GVjj88LPLdK5
	 HUo76uTdXy+YLTz9m5QualMJZmVv8Ei/eXhpBdQyp1E6pNtaXTm6CIiWtQwgW7aMi1
	 HmlUkjOwZNFKJJNVngL8jQgoDlgM9p/xEE1Wu06oFZeH92ZPIb1q4Ip69y2c+u/Hbi
	 JBF67SgbT4LXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E45FC54E5D
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171058909637.19107.8710597405145861613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c951191b8bf5372f36b3f9a011de3dd0b6a9f204499431917d7bf1174b3d7423
Date: Sat, 16 Mar 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710589096
