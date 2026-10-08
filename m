Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8B321FF23
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791423634; cv=none; b=F0UPN6ZvzEJuXWufisYxWAip6l+mtMOOg/OhpTfbolCYbDYXYQ5zpiBuSu+0Qm5B5xYlCkWmMEAjkPHsBCdrXUElBqjT+gtBE9hkQ0qIHQUTpAoKq0HI5LidxBGgrn8aDwBbxuX975KmSt66mhRgSWhlaLmVLTn9s1h8SDaTyqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791423634; c=relaxed/simple;
	bh=q3VhdvjvGIW0SvhNGG+id6VqA8Yv9CyUxmMHT/3FLy4=;
	h=To:Subject:From:Message-Id:Date; b=ChizPZNjW1MLMVDYy8Zq97wAmNbPnyTt9zCB6rLjKDxWi78jcNOUR7Ahhf6I5W8APmWuPqIoEavGpokY8B5PAZISAPTy6rQvRio3VQq80cJag/g1gLYnZgI0jEcxiJk9epb3DccAvZd96bhpl4lGwge0lfGlHeivRizldvUYjRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyAUtsks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyAUtsks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0DBC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791423633;
	bh=q3VhdvjvGIW0SvhNGG+id6VqA8Yv9CyUxmMHT/3FLy4=;
	h=To:Subject:From:Date:From;
	b=QyAUtsksvTSbX4Qi4uOJU9X6Y1iYz7DxRaxNuJVgQHHHho9HY7yxyZHiA+560bW+i
	 4R6BFhugCgAhj5syaBHaUW0r6g+6QRSCcrEbjiaLYb2kvYiFSObjICwW1ympi16YZH
	 EhFdD1PITGClpZZgqxAXceUcZ/wbounUUyNAGA1wyyhHwaUNmfMzozbv48ZSxm3mAe
	 7ccKRyEa6eCkcQQZDQIEUdJkaMDeMjgl9BIgt6JKMOX0rVFAcxArh7LNxiZwsLbxoC
	 KAkZ79XgMmTBmlNtfau9so/FJpR8CjLTK7V6iH4s6foSCDn1maOK2KqKBS5G8DUQQO
	 s5zqe2J5r51OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC24FCA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142363369.32144.12393250321723852591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6883285dbad1c5646aa15cdd519f2cda14cc27b59c575b765f416b2e6da62f43
Date: Thu, 08 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791423633
