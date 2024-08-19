Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3943F15853A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724079954; cv=none; b=bgQ7flXoTY5yAwb91EBUdjv3dXVQ0lmovQWHdY3V5PstHFaxOSGe2MUuBuRpLAWbcoeD04PrYR5Mlg2N6RYKne+eA4Cuje5d6eXknPabQvd8fntWoQ2W3MoM5a4vp3Wh4mWO+GhudlNPMxIgUr65Oc3TN/XS2gj5UxSxdZCCZIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724079954; c=relaxed/simple;
	bh=v9sj7XsF99N2w4XL/93FDfeWnKoZKEsQFp92ww0y8Mk=;
	h=To:Subject:From:Message-Id:Date; b=dilsXWKAi3tXPsCdf94vkG/e4SHuTlfqgAIP/82vXAIP8oIuZjLqn3YzZcfPsBUwFVO01U42LxddeT/LI4xrY14ZOqYwd8anCZe1wXTYWv67yZbE9MPbJWS2MKTN2LS6MmooSMJ/Ez9ns8iJl4dcnsT3xJy4vWM3k4ZAbZd9bxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bs4WIFf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bs4WIFf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD96C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724079953;
	bh=v9sj7XsF99N2w4XL/93FDfeWnKoZKEsQFp92ww0y8Mk=;
	h=To:Subject:From:Date:From;
	b=bs4WIFf74pl6Jl14XawDjzgv04v8fn8ntTbBs/CR9huBYgRnpwnWzNj/mhY8ydjhv
	 iXU/2w7U3M4b7XE3SGKfysE054hooCm1/6uQzAw5As3NhkMba4EO44rW/CVrRh6AhT
	 txbLGYSptOUuf09xoWV8BUF/UK+Y7P9500v+24uAFZsq8HJX14k65KIEOW9P0JdsyS
	 hFnqUV7UmzGP5gB7BfoPcs4PvUpWuLQVDO1DeSa5cqH/sBWd4VRrEnVgtRq1cmJThj
	 2q2JBjIonWMdwCxXXqkKHYmYQ3ah6BlNYI/PJwWIq9U4kpITH47BuhG6X5ufcr/01a
	 I8a6hLRY/ICQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BA6C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172407995360.21228.15063306462750728132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02cad507080e75200a59f9bcd0a8df42904b49d468ca8b35e0bc3f67737c8034
Date: Mon, 19 Aug 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724079953
