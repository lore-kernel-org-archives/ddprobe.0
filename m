Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C524558BB
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730091354; cv=none; b=bNxpl8g3Q1/+y0BOaBcoC6M59fAC/VIXrEHSbPOBsE2cwSvPyO19qbAqe52Q0N0sWlpx+OXDh0KK+IqzcDQZB/EF5y2fV/jmYhZOfpxP4aLVoBMZv6Idi9BHlszSbMl+3IF3xeRW1vxbr/PeMa6DZJXiziAYgmBvDTDuzlF5qsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730091354; c=relaxed/simple;
	bh=DS1g15fUMtVkAkScLgmw9XGwXTMXQuSem8mrHMeBttA=;
	h=To:Subject:From:Message-Id:Date; b=iMcKk9leSVb1xCWrpo/kI38l+zBwwxoCVGGO82R1fcQmmP6GqMqyxsuUxeJE3zzcncQ7Bl1EEq/6cGuoOQVRf5pK+d4PBsVTJIAl0x3RaQMy4b1ATp9TjOBIUL92Jmn44mrQAr9khQmuLAl9pbufFbEQPMQAj0aPmohY5J10a34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMH9IV5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMH9IV5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32F8C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730091353;
	bh=DS1g15fUMtVkAkScLgmw9XGwXTMXQuSem8mrHMeBttA=;
	h=To:Subject:From:Date:From;
	b=gMH9IV5lJDSCh/WAN5OFRa9zkIXo0/FJcihFJRnZxZLl/LnTZMNsyVkzvR9DNRsRm
	 t6378Jk30kSXPNgL2hqSBrtd0hQdHrmQnCarx4OAKWFmt213/I5tUdr07c3qflQYKv
	 jdm+fUHOCTuP8ZTpWLM5+qFvghh9hM9mdqLWKO+XKNWuS8xlEE+Que/AM1mgaVzrqv
	 H3f/sAQ4OmzXBHE1tusTLHZ5MorD+wGHBzRc1XvnRiaHBg1u/qISQ6eBSd88FRU2MZ
	 kgTMxP+TTtDre1fz49tRs92WIz92yWiCWFGeWPzLDWzVw2oxiZCJBBRSJ2lAjUI0t6
	 9xa4oUvet2SLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A329CD13588
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173009135362.12249.7161889536330897615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7355906c580ab8df0b9ce50a76f67d54b0df3d031ae4e9368cfda47813f23af
Date: Mon, 28 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730091353
