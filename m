Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288731D5AB1
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727310354; cv=none; b=gBo5Hzm2NJcR8w04ZEQXPe4cVMP5+tHNx9nWSrT+bjOWGFCEyXQ6uTlZDW7VcpkIfZfJ4t0ZqVRNA0HBwj7WRkDhIsgls3fzFNyRrfWaRYsFv6iELMsuXg7BoJzUIy6+A6E/K1y3CTMjF5+JhHrYz2QdfJ6kfppULDSROmdOiy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727310354; c=relaxed/simple;
	bh=o+6ZORq1AZ8olgrapPP2WLX3K9ljmbXGYQeI7ch8U/A=;
	h=To:Subject:From:Message-Id:Date; b=AyNSCl1KS4OysK+JCrZHMd9Qhp2ZcgRchcW/uqhk/6ruDYjcPhwRssMRDvxeGgu9+Yh1LOpD8ijVLMLb3aLtUtMbZeXVNSa8+FtatiuTsHWri1MVIg0YFKaQn1fjdtPH8o0NtWqTHBVnt6eIVQGngjvNfyMDZ5/HzOAD2OBcueU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXWv9pfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXWv9pfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2D4C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727310353;
	bh=o+6ZORq1AZ8olgrapPP2WLX3K9ljmbXGYQeI7ch8U/A=;
	h=To:Subject:From:Date:From;
	b=dXWv9pfPduSTPzpJTpdh652kx57rM4AuyhE4ObBB2IlnXKjVcqVdbgzqfOcgDqmTD
	 GPIqCqfX5OmGZx/LyJzkv9Bx3LxIpOBkxaHca9TkDRU53Uetr8jum3dmmTPYgasjDJ
	 YJmfhvP60YDMv1Kydtm9Won0UaSZ7q0JknxghCK0wm7Tzi9DR/iYhNtouKi73cpEUf
	 TvJgB20qnTYeQM4J5SM6clMKzyGcTjp+LgiwiZ8gfR9tv5brMoQS+Ib7S/imj5eaxH
	 pYFzoXjzSjbuoCrIyBGoSq10o2cOinxMiM3rvxTndpURm++tArnWmxHKKRZSQsbzhz
	 J+H1XU2It+oxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95114CCFA0A
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172731035359.21956.971802147811430156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d51da3d311d193614a35dff1e6771146187fa786ac91d2740b14bdc438068fce
Date: Thu, 26 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727310353
