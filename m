Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD4919F49E
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753025994; cv=none; b=nyYkFGcLZEc376Su5MgkK7DdYM6cIbTMeVHVluUBXjrUMRG/OMa13EdPzVmRHoZq4bH3UB5U3l3DR9gLtWXLVYIN3F3ZTExDLr6fLOoEskV8Q18UQcXollR9N14lOSB4JtU9Nd4lzE2WEBoz3HlftqkJ9kFO/6Lx+bNArAYSb4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753025994; c=relaxed/simple;
	bh=6TnCYCQka6RVG4+ACS48C61wf/mhTyqQHUQloaVqyxE=;
	h=To:Subject:From:Message-Id:Date; b=oEl5UcNENVx5UnIDWVgJ2jrkupsfNGhUDkssq7eOKQgMbeww+hNGVkIWtoWEdBrv3QZY4NWzIOTrunI8lA4TWHU1eW6NnQcsdBPdrJ3uqgcHD3VA1SevMBsukCKDhK8qkfbtc3Yo+TkOUNhql7V2e6CzQsaMxp16tnnILNDoENA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/oIUS6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/oIUS6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA935C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753025993;
	bh=6TnCYCQka6RVG4+ACS48C61wf/mhTyqQHUQloaVqyxE=;
	h=To:Subject:From:Date:From;
	b=j/oIUS6U7QVz5cI3Hnz3jQxjwpmhHcShH+vbtTmu5s70qDeqmQWyBx7Ssr7ERaZ+u
	 t0L4F/cWtt6xJDSE3plpl6gqwmQoDh6MUndZDMXg3Bp4v70V1JftX+qQi7q3t3TVvG
	 x+kOTg++wjddZIs8EDfZDOjJDOskvZIvCFuenDIU7hfBsPv4d8lN4BGUvXlKzRncf0
	 YFsTl1I63vkEb5s0f4ZYjfHVOpiilr71/CWukhDahHzHM3VPv0GkwMp95ebQIImijT
	 cK6DxeHC8G1PYwWwd7r/GV1gKGxacQCTEWqGMgjngObks3Vx7uPJtnVaCZBISz+649
	 +6g4fPJOAkkFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F2EC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302599358.29000.10831018349607635967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1d07e572eb9610a513c1d5fd4dba1c4257f40b98b525119a5a79adbb6328ed
Date: Sun, 20 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753025993
