Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536001A9FBC
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781363794; cv=none; b=Y5T6Bgy2VBZoTqxf2bfYkTTWTn9glgWVUHzJOMEv5Gc2hpAasaZXX9XQ/Y4LJBWDmchgomJEwjDY6/OJ/tdPtlv8S+cWgkeGy8dwr2HxbeyN1tSK9Bu3w6ykjIjs1rRf4eDi3cqE1iOp2ONbLveKPKcpz86nf2zHMBp29mbidsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781363794; c=relaxed/simple;
	bh=VUjkLR4SKZVK69p/cxs/wQKSUxbIP1XnZRbFpEVN8e0=;
	h=To:Subject:From:Message-Id:Date; b=VwNRL9Apd9POkrqixu3Ta0+F9TWfqWvK4A1vFPCFelK+F306j+aBKJhVDpR2DVmjz8gpfo7u47HROM9O/llNvq3i1jhZGv803zUdPASKfas2CkvLMxWym2C4Gl3ow3GIejkECYQvsb2E2vEIK/3dYhBxd6DRrsiM1etZGTxg0d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kghVRL/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kghVRL/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EDAC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781363793;
	bh=VUjkLR4SKZVK69p/cxs/wQKSUxbIP1XnZRbFpEVN8e0=;
	h=To:Subject:From:Date:From;
	b=kghVRL/cMSkoc/K9bMr2w6KEE0XjR73myNGz1uiQjG6/VRYfpW++OjgK+BROr6bPZ
	 0OQTC/FEBoHEPj6b1UuF33aMx09PpYTP3tgQannu6Jr+z088kThJ7uPA/nu0O/JF3k
	 vtPW9eiJpovd/+/Rwzyqts5uDV0HaLbVPRR7gMJ+0PCii77BPuMqfGKBdWJuc20X0e
	 uLJlFE/hdnS+qWn3tMjSuiHkdSLrirsQhiGsXtIDbn+1PjpxURVUhom2PMdSiaCBO6
	 HAZfL7czn0kSgGoCLbLrky9murGIaLU0VErVifoGP7nxi+rNAYoc0c/r1w6ZBuKkp/
	 LLbvGi6zNLg7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6FDCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136379369.6118.7135841054822076846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6699e9fd417765178200d3bb85092edfd96cf8214084551408865949f0c8c66c
Date: Sat, 13 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781363793
