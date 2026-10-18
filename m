Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603433C1D49
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792303234; cv=none; b=tLTO0Vl0Z1IyP5zwr7P1BCIJaDWeNFo46LXTOwe3sXsjY3GQHFNgyMd2p5J3aW5erMrtXunsFWCMCYXGHMXlmTE8sMViqIEcKOySnFUuYfcgu5V+/WykyEHjsfy/tX/8Lh5Y1QWjnUZ+RkDpbML/PVanaeF+jFKY/yX+BLTDYLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792303234; c=relaxed/simple;
	bh=ATXH7XQtxv5z/7FB9iUDX4cufW2PBGn0xIKLVSdLQO0=;
	h=To:Subject:From:Message-Id:Date; b=DUi/Yi/d6O5pthHoCmB0/3Myvm9NEKAWO1oZA0qzt6OURy9y8BQL3z4HomqT5cuTxY5Y3vcxr53eGmuOmhFKkWMupYm9h57an2Gd3KRF7wXeflvLNcoGL/P4v0lu+i0NC/Mh3sj7pp3v7S3By89S595aIaAkuVk8QSmJMyWCzLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pe+WVObg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pe+WVObg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4049C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792303233;
	bh=ATXH7XQtxv5z/7FB9iUDX4cufW2PBGn0xIKLVSdLQO0=;
	h=To:Subject:From:Date:From;
	b=Pe+WVObgc8cVcRG1vjETFOsdwMUOmQTnamA2G7xAltqC/cua/O2RnIeJVZo/9z9hZ
	 hw/pq4r/fqAoNj0tTmFjWr747bfwTLjKCAcQh7i9KnXeptFUxI/2x+Fbqw2tAdWFDi
	 9e7gFfdZHKYT/0RqQdmzoAN7IUTDvWLAoOf/E1PPJ6eX34GcG8RvhSXH+AO2mkH1jb
	 sWh2Vkn6DTimdok5ZtlQ5vFSP1auGqm+TUE+kqEbF5s20ERBMmWhVqKYAAZ8zW5CUs
	 9IkgJu6iXZpfZIIs+oZMgVoG+glwqRosHVQyM1RWP0u/1o7IkaAc9DhEVIr77k9Xsq
	 4LYpdUyHqcgSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA8ADCCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230323374.31446.668575698246536116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ba5047ffac6bb34fab988f7c3418fa416a347ec22ce1524d3588d81b316799
Date: Sun, 18 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792303233
