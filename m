Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9C428B40E
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747919994; cv=none; b=MWHwdQSHcMO37s0XjTOCUEIPFZHw6t0RtP+zllDFZgwEub48C0SnrKx+CqoUs6II4YjOVvlj6Ey/ZasMhHTkl8Mz90wDV0eUyYXUE+zgB2uYkZ01N6a4jSfUvCvSgkdblZy8kFehxvaT1bXNG8DjVVHoxhMtoKPDGdlco6AFcbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747919994; c=relaxed/simple;
	bh=jA3IDy9z7N9UNBNTjYXaXwWia0Xb3JSG6Y5oCUNi2wE=;
	h=To:Subject:From:Message-Id:Date; b=pV5xAA0y0Z5IYhFDmz8zwJSXNXgxnXXgoaVZu/BpO+vWnKCcktncUyNJMLU1qCrHscfk07oWlcvUVT0Mw2bN1+w5IDPKHXejhBLGqmMygZwok5y+5zQxkPK8daloKaLOi68+AMowYNb8l3hlAi4gzP873KL+mS6nSWUJ2VPsAPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwO7fT0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwO7fT0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E3C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747919993;
	bh=jA3IDy9z7N9UNBNTjYXaXwWia0Xb3JSG6Y5oCUNi2wE=;
	h=To:Subject:From:Date:From;
	b=fwO7fT0HSWu89/9vZabsuMPLZY5HzXWOuUtOLg4doS/1TZjCR9H7gkfx0ER67m0rf
	 xlu+zITIsoqGbp3fuBopNORC3/LiYlgQ6Gd9PiBsbz5BFahBPRaWh4llkvA+BwRDZp
	 bGgS1KYWwPurXGBEJ9ns1ZUpvjoc2dJI04xGYDhLyvUd8hD8CAT8YIcX3dcx9kSePU
	 T3E50F5iWS6PVGpkRAwsovWDuiAbH6YdnQDHs0m0dQnVGE/bh8QqSKrxVWKY0jKyo4
	 yMv0HL15+VhWePqlekwZnOesE1u0BsGpbizGdTBdQKikHdRNN3RexAogLKrllU62eF
	 dqlAkaZOBOFow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF3C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791999357.18809.8199266562781722868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1147eb05e8f55cde7652db1ac2e1d18ee87b7ddacf527bef3847a838ef836dbd
Date: Thu, 22 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747919993
