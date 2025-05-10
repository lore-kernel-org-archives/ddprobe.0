Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5F31C6FE8
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746856194; cv=none; b=GfOJZkNKSgJP4Uo94i19ke+KcdHL2pa9DWSXEhGE9f+h6eFuo8Jm15IEe+68V+XGVd4+fxc6AU32GrNhOeDZ1wh/uoTn0odELiO855XHgsmYbYgufgQ7+Mco7HUqbJAcxL2czd3rN6Rh8+AWUJaHnxZ7eEqtwF6E8OXllwXlYFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746856194; c=relaxed/simple;
	bh=5CB/WZSZ7Dvd68IfdBI14m5ZIU1NEi3YdYX3DxAAIuk=;
	h=To:Subject:From:Message-Id:Date; b=JtiteXuL9QcRfdBD7hMp96mZUw45Cc7HmW1sRBqI9bqQUQ5x2OwJIlMFeKOa5u8LyDrxbMtVnVRxaZIBKAuOnjpX8aXo1jLD43aDTUAwSGt546oIf+3d8oiZrL2fRTp4ifrFrumgxaYVNPdjD1K9jPFGw87uDB/DvnVSsnPUYKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGAjiWfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGAjiWfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2250C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746856193;
	bh=5CB/WZSZ7Dvd68IfdBI14m5ZIU1NEi3YdYX3DxAAIuk=;
	h=To:Subject:From:Date:From;
	b=bGAjiWfPU3B2iLCYPq85veNjyMhppDqQ59B1c3P2oMd1RaTXGa8SfKiKhRginjcax
	 9FiZMbiDESeBC4gcHm0Ot0qLwSKuHEtKVMh1qxYFk3lok12mXQA9ovldTSCkDb4ZOc
	 AxDzdEIjYlZ2FJ/PeA1gTQy7FFhoRJG25AX3HBEmrHgBKM1KIyWw8NZI1/+U4bAtOW
	 04f1agys3WLSRPRKnq+IoXheMsJ0RDiU8qZJG91TziD6w8x0gQXiC2cTYcyGheIg5X
	 maE2Yu4CLW5G5IdmLSbXYVCkIrnN9LEaaUvgYBDWIsKtbTEO8rKfHPEnbmDBCyDMjW
	 GxziFEDAwmeDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6CFC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685619357.27232.13974086570051598649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b7f35bd08640dd0ca3e239dda93bb6d3f5a67a1db3d5bf617664806f7ebea9
Date: Sat, 10 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746856193
