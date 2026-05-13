Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9C54DBD71
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778693434; cv=none; b=arRGhQ85aEgQm1RTlbUhJ03WgE/3r8jMyKE/oiG6qMUVApGcDnoczmtUO94CjilObo8Gso/TbYlnxiB0GxFoOZkMEBeLHzyXpv7Qz2mC8pPe+FXBggtqPlh6gfBxZ5XoPbfJ60AKR4eadvRuFoDykTevMbmIE1Osr+tKr4i5nJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778693434; c=relaxed/simple;
	bh=PwxovThZAytUOo9PMFlKIDUo+gs8DjqN2BvmbkZvdPY=;
	h=To:Subject:From:Message-Id:Date; b=V2oy91u7x6lmh3jGDYJ3fWuwrnAz6chlrzizhg6owk8cMF6ha+6XW8m36wJIWhDyt14spqRAoPjIOkRzbe6wIbWsLMk+GXaRDmvdnK9p6+LbUocXeffiKILce3cancq3TVKJlYNHzp2YOCnyvezIg5vURWYUaCRSB87HXt4qNEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnCp5obA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnCp5obA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF74CC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778693433;
	bh=PwxovThZAytUOo9PMFlKIDUo+gs8DjqN2BvmbkZvdPY=;
	h=To:Subject:From:Date:From;
	b=VnCp5obAX9vPBIWJHObDhh/b0Jenj1bInJHUGH0tQEkMjxqJ96gHj2Yda3cJ4OFGV
	 3KDRjfUHlnZ69Rq2I9dG33gibh2FvhkU7qouLqZWRMYC/jTMljngV2QABNL+KCksBk
	 JYyPU4po7+SNuwkc9Ne2Z3mnk98bU8yXwHJXp/nwzoVkz0afj7lD1wGMIb9U8lLJ/3
	 3lnxPOQyFcdRW3esQEFbpOlawpiPE104o4ZjgiZH54sIbFIAl0uWgd7e0xKtWgPmG9
	 wD7WwhIL1PcBGvMNTu5n2nlXhx1ACe0jJOr4bts1wjZLeitQCu+ejRB34YEbcmyu1A
	 195CaH0BvRKNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4A1CD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869343369.7860.15314418068290602323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3ac6d5070a32f9a8c48e30e89f5c83a88c051d408639dc632192802915b8e3
Date: Wed, 13 May 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778693433
