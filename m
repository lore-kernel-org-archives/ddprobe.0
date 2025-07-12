Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3294A101DE
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752289194; cv=none; b=Prbf7/O9t2W/F0kRdr0zJjuLUzk27cYWiVjnj5qfi6MWExwa5HMYfYoxa2c1FiSBeXUZKIDjWGsAKdqAePB3lzyvSgRYd4pZYwlh18gUE/w/d5gpAgjJG9pZqj0PHqYh8oTvj62ZA8Mf1ZYYJ6/wlsL7t39GYhgXnfEg9p2Op1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752289194; c=relaxed/simple;
	bh=axwTwXFk/JQXTpLZn2IaBO/AM7T+tkXjzF71cYsztS8=;
	h=To:Subject:From:Message-Id:Date; b=PfTg1lCRY5GWrDzO24iNFbQmbI92o47MzANkYYQUSog1KAZ4VAsFPdBO5iplOYSnzpAVTf0QyrJ8LkmdK9dd0jifED+LEbJuD67rW6nshfd6Ov1v60Fr8lawj245qwF/eXzFObc5vYN80KqthidwRKGtGPQRYGR6Kw/+pn7DEK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFXxdIR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFXxdIR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A4C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752289193;
	bh=axwTwXFk/JQXTpLZn2IaBO/AM7T+tkXjzF71cYsztS8=;
	h=To:Subject:From:Date:From;
	b=nFXxdIR4YsdNeSeWwCXdlPZSGKkvQeInwG/QCliPmG/nG9wrg37O69ti+layxB/aR
	 axawItVnzMkQ5tFuLAnreGljiBOmxUknOYtS6cxO8kDvZXjCwkm8tLwUPtsyBPtho9
	 jEyr+32U6SCX+Hf0hJj4FRN3zfNW6YEFE1ER0Vy9t025281IMCEtig5Ziq+M1T3EIh
	 xboQKOmkPc3VHyaphZfKzF3pwDO60bYr8SnHiq5o8eOtOBJKjqrk64khKbVdbTQITN
	 m7Cwh7LHZdg2v0CPsoKbm1jK9z7iCJqHZv9G4iPRssEd6WLqDDdNZn21SeiepTWd5Z
	 Zy619f0ZX7XBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938CCC83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228919358.22100.10601484649299520104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6970b5363257300c2faee104ed4767be7a26985137c9f650b1b52284e2dd0b92
Date: Sat, 12 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752289193
