Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567D48286A
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 11:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715168543; cv=none; b=aTKxb7u+JSYOnC/LoKzbdhXwEu1urnIdCB5Ce/5icLXnkjzj4SQJ19bP5x2xa03OEzQ7s/roVHRZJQMr/wFMXoAgectI1AO2YufhTKgfum0Npwe4mEkCopbjQdDTVn+I3u6TgXvs97Qbx56a81LUoLSenfB1M9vYQFcmZ4MD8Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715168543; c=relaxed/simple;
	bh=ROPHYWKFB+ri3mHSeFeDhPYa5m6tNBGlkUl17hm0j0I=;
	h=To:Subject:From:Message-Id:Date; b=tb9KSToFAudhhS0QLODjG+oIcJKHATiOlHExnBspqlok9Wg6p7yNLGsF7rL1k5zrykVX0HalfDBwV5CQoym5IgomkZRtohKXI57NCVeygguj9bqnBVuXjARK1JOVK1LgDrctyrzssaZNfmEkie8q/4HiY4qYbFjCyyVkO9SG4d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMmxdv80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMmxdv80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D846AC4AF17
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715168542;
	bh=ROPHYWKFB+ri3mHSeFeDhPYa5m6tNBGlkUl17hm0j0I=;
	h=To:Subject:From:Date:From;
	b=UMmxdv80yFZObLvN8OV4lETU+9ZchYQegS+JEAtFP2G6WQmHqe0ZyakhmrBPabawq
	 2eKEily/4n8rvOtfFvIWrHS+U8eDDVtIub6RpyAKyK8YGx6GyzlVl1RoR8rdWUoomZ
	 K+cPSujZRlehuJMDmhl+jmYpp/nJNRJvKDv+4NcEkXYohm4tY+M5EPVwpyPKOABCtB
	 2scSXuUb8NLNAKGTve6I0ET92+B0yY1K+uU96cdqpt3qcT81aXWvSgxnKAbccR8pIN
	 i5+NRPgyCYGyVJcRSBw67fHmmdbOqDYGmxq2hOZi2QiuBH4YMFPe+IXcUIZUCvnAWx
	 ACpYvXXlyhlfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3EA8C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171516854279.31533.10678502186584988767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2585ee3d1ec90e16e440ae2bc86687f02821c02670487982432ec365c8acc2
Date: Wed, 08 May 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715168542
