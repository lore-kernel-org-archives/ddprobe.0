Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D956FD5
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733042754; cv=none; b=K2fh3VZBRjdbg6OPKiFSRvSjJmJ8JXV15OmGJR3G6SumJJjoZgrzL+3svedMwWqVxz1I4N7nbV/A2RULJeBh5Nxc36Lhcu4ImFRpiQJmCSknEh7eu+upxr+UXq6DhAHdDxZrWR4//BjcesLGnzORyANRgUY6ExgrAGf1gc5/g04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733042754; c=relaxed/simple;
	bh=VBJ8gyJQ8jwMBUrk84fb+uSaGhALgRvAZkS8o9ko60Y=;
	h=To:Subject:From:Message-Id:Date; b=RdCQfaCJpg561Z3ZV3SC3mX1jE25qCl8+N3HY6kkqgq8dT/d4eVYxpZUjMrSUrGIic60NegV4rUUn/tov+3+ZNrzFCq+QUPS98tmLIG9Ruy3674tyPQSJh4+KIxkmTKmUCAWAq8OOhi+78k+cv1yBDBk78Eiev5JhnFPQM3hugg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlqGckTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlqGckTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF07CC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733042753;
	bh=VBJ8gyJQ8jwMBUrk84fb+uSaGhALgRvAZkS8o9ko60Y=;
	h=To:Subject:From:Date:From;
	b=RlqGckTsAudn1G65LE0H5IpCHweEm4JOhj08IyMVnT4LnhmyAUt25qiSToL1+XXWe
	 Ny2ur5Kstbo50sVaZA50lXnjRsCBFQmn//ivkoXeQaL97MJ4ZX9stMbePDq0PLruFV
	 crq6Hjs+nIaDUPmGN7O3AIgI3/dCwsdF4OHaNNsBg5kh556T6WsNrlG4VGfHwtmVOR
	 eHp0XsiDvd/GPawNe13TJWoD3qWCnf3YOLNm37pKjHYH0Ai4AhyA8P4SnmnfVRuN/M
	 p1Q9Knw9Dc+cJbmlkU1PxTJ1TnuC6+qJ00ntHIX39QafZtpmDfmyxQyXbISRz5REgY
	 +LRaZSCIhmv/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99938D7360C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173304275359.15846.6365327161277312931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb76b32f1fa10b5dd7466b1e255cd243da39ecbb8771ea21a3762b0a9c25e4ca
Date: Sun, 01 Dec 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733042753
