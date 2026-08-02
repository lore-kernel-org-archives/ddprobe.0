Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7E22264C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785694834; cv=none; b=FQEEyhI7VoVWQhuTENykqRkygIpHr25rmCGq95v893x7GwKqHSghkubCBsLhviKl6vr2ZFHEw2zMdQ0zDBCaHwAqjWbid8bgA+MPgAwReOvkaVJOzMmnKH9byTtdpwFrszXxFZ9pS9AapXnssVLZEaRY0q9SckqMhgPAqzxKDBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785694834; c=relaxed/simple;
	bh=1QgjTzYZ8xUMcM1ICMddg16MZTKGYWGyAe/JJtEI43M=;
	h=To:Subject:From:Message-Id:Date; b=mhNuaeWY8QVcPE6QkgDnx/00iQO44Alxn5kOdJ64eZsAP3/ZzrakYR2/bQrxvE2gwYOqfZl67OOMvXjWSUPpstnMd9zH81hoGse0Wr3I8g4XKLoX4dIND5vDPSSHHytgqn+UNp0UeDleNkb3Sy7t3YBpoCkVCUruJO+W+++ST/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9NgmK4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9NgmK4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BCCC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785694833;
	bh=1QgjTzYZ8xUMcM1ICMddg16MZTKGYWGyAe/JJtEI43M=;
	h=To:Subject:From:Date:From;
	b=q9NgmK4ED2ELLKS3Sbk5IAp4Ko7A1b1bEIxZBRN8O3gE6oddwbM7bscF6cmLvivtx
	 yPAvLOJto2peru8L7osDChAI/ot6CqqsJCuZ5I3OI7Uv/qP0eS/zMi09w4zRwP8Y71
	 3K/hRP1L8U3JlYKqfnBRYqkmdFSVx6xuFGZtTEW/AXLONrR2XvzWOsTgKucbxnMt7e
	 5+SNs+A9SlE8AQQLuQbDbhBuuHrIXzIrqsGmrCLCNJxuXtyn4259x0bd1lLcsiZ5Wo
	 GvG7gzwpC1OgkG0iq7mPv4ycfEYDkdp4wj76+0JC4Syg9h6TytNkCoT+T5mjLeOYNY
	 52Ukx7Do8V2Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFB8C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569483368.20252.16746257736658201314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c296c32639f81c6699f3bf0e04083e174ed819b6793f134930c903e922e961
Date: Sun, 02 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785694833
