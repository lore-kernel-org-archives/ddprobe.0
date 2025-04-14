Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512EF664C6
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744619394; cv=none; b=W0ufXHXDkYTnUwP19a2J8KrpxU4mlgexy+eo2LXwnRv2UqKr6961nTz0sMG7KYRliJF+I7zgoJ/xCox4Zz/2lr1ANWDMj3WK9NrVpNqRzpdQJ0Bgje+YnCEiDRW8GRiKFKfua2jT4SRiHNJf1EIrvFiuFBOaXxAQ4pqfCSuZr6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744619394; c=relaxed/simple;
	bh=OTDEjAV+N5wTpYxDPJI8anAB/Q5TjkU4yqPhwQI7TI0=;
	h=To:Subject:From:Message-Id:Date; b=oNar1uBbxsXJJmejOOicGsLArALAEoZ0PjVciSPbTomsv3aSAMT8RAhGexDYuRKkuA5v07MuEUS3aA+6RwXrMEmWVgSB9JE6hVWS2K8bwtPG9ud7CizBEdeK/HDPTg7NmhIHHiT/tw+/JI+O/Q1vDHXaU1TAMHEmBIK01Bodarc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntKY57gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntKY57gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23CFC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744619393;
	bh=OTDEjAV+N5wTpYxDPJI8anAB/Q5TjkU4yqPhwQI7TI0=;
	h=To:Subject:From:Date:From;
	b=ntKY57gsJn1bTXyQ7XpWF/YW/bt8nhh6NaifIsZFzsMm+mvgT29tfDRZ3ztNrqGGe
	 CyYWYrtQAzoG5V6MW4YxU5jL7+uUIPlFz7F2Twffvx3XyLPlYDN8pfr7QZUQz/B2Nc
	 UhDaDqcAKKGkt/YAj58xhj6YmwuJN04YM0/96NJhc49VhvT4/oLmwQ3I5dPPdx0KvA
	 Li/MKstbvPmnEj22MRAvG85sJmC8qIWz1ekFg/kKGAundL9BtJK4ZDfaH90uVm8J0y
	 q+iMDXCh1F3vvE9/dY2ielhYWoPfok77GkdgmaYaf0rkxolHINM9u2ZjtBN6/Ztjuf
	 DaZwg5BFPWZNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983C4C369B5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461939361.30295.9944868222098941150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 349d343c1e5cf91c5c1d014add717d27a32fce2ca794f430fb6a8626f130ed1c
Date: Mon, 14 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744619393
