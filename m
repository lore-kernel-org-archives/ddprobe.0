Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643098475
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719633263; cv=none; b=F/PQXTB6jk9KWjGSI8lccU/131Yq1f95xOVH8qGZziY+lBZDoaov9g5CwpMCm8N0OACpPpBHOsiMADVBi8qYqjR46fkfemVK/DkmCOHrRhwvhlvdUytzplzibwlEM7d+VSLevRnXMWkgRvvuQA8UA1KQ9mc/Vbp/ai/+q82B9No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719633263; c=relaxed/simple;
	bh=ACsZ7K+xM5J6+H+v2qtaw/7KaUeWHXE2VuHnpD7xaQI=;
	h=To:Subject:From:Message-Id:Date; b=WyHPZ8xIDIJdhNxcLatijCPZ3m3kvCnTl+SSZE5yXE6h0iPhTJ2IWGfUvn/+jLervtQLotd4URZF6AuIvXwuIHRdIw0NU1PMXhgB4BU3eUZseYpvWfvVYRbTA6NrM/kbU/XFiBh6CQ9aUaMZaZuNpADh/tiyMWPyGkScuXiKF1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5RRuaUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5RRuaUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E388BC32786
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719633262;
	bh=ACsZ7K+xM5J6+H+v2qtaw/7KaUeWHXE2VuHnpD7xaQI=;
	h=To:Subject:From:Date:From;
	b=d5RRuaUaelScUQI3NMG+v8rsxbLkwujxr4DFaT9z/WmIh+gNffY5yvkvvfHhyWVtK
	 tqFWbc2hoAHurS/tYAFIonfVtsfDRzhfw5L8gbDMw6N0f6laMDTEs5traVxBla+9Wh
	 j4VG1u+AmuypKS/ppHqmdhgEdGRBYUGtzrrCVZnEMizxcoBHvP0HGTp4ZvgPZsdpX4
	 dQVotcSEbAZxGXVskBDLhN0T9Ze2kAb6FoCwrwUIwqx3aplWbJsh6z2SFfFo3l7kqu
	 KhODVUZ8NN+JP818cWZROZqvZKlNkaOZxB3K9o8b12tXtXVkSc3v1PQaOlJLjDEALZ
	 n6mkmAhCC9buw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F4CC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963326277.27318.768111635927711800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d853419e0fd449d469bbe895c8c0a47ac4390c4693a161511d996b14738b3f
Date: Sat, 29 Jun 2024 03:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719633262
