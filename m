Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0F9322A13
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767686034; cv=none; b=oAVhmchhvh3t08phTXiDhMOGD4xY4cJbAlbd/KAin3smhZygYUjSv5rqiIh5cKO/NF7UnQuiwsYSOTEgt2oe8YMi1+63LuhqFpAeikkR32icaktwe/Er5dxBKuhenc8wixa7jvhwlWMciVUFYisGqnI0K3DUYZIquN79K3qMKsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767686034; c=relaxed/simple;
	bh=vO7UJFmMIRss1KYx8HSo6WktdhU9Ab0mQC/e3BLYqlM=;
	h=To:Subject:From:Message-Id:Date; b=k46cW8X4J3mteyO54O0u+vFDIyWUGbcTUEYLuU2a0aphAomz3t475bitgR+ZZuRUmroyUFYvk9QDCVRGqcSVkKc18XWPYpM1+4SeUOVfS3p4+gM8mLiykg5soxzQLmWPkhwmiLuxBWZzKPwvXSIGYHtFlZ5EO1BDQQbojAtZcw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us5SA9Jj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us5SA9Jj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A588DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767686033;
	bh=vO7UJFmMIRss1KYx8HSo6WktdhU9Ab0mQC/e3BLYqlM=;
	h=To:Subject:From:Date:From;
	b=Us5SA9Jj4NqrnbA7ICVEQ/iRtFloEEEwzUD9QmRdnphxYfBg+yA+WADMl68bEvu1h
	 9g7OVkBCdTnsg+7+FmGAH25dGU4CPYRvBiQMGE7Gv/rSHClhAN1JAZu9SXpQw3eH9P
	 5IMOyQDOspcB1smE8nUUrUdpWL+Jc/t5WjlHxzTlIjZ/QkmBMXVyL1DUdID1uS21pe
	 jZyJPNZAa5ZDwjx0xR4Ai2RXVGkpvy7fLCUsUOPlE6VRKPuwzMzt7PYIjJLTEusx2A
	 S/upDBlcrtCgZ6MYHQjZyhiwUrxvRvjECqFmpSYI259TLT5Se0BOEIpIeL183eluf7
	 V40O3cQoVQB7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94746C47BC4
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768603357.18704.3499666506566602008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b5bc342eb74704d678142806ae30bfdec55186534013d8eee1b79dbc62cc838
Date: Tue, 06 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767686033
