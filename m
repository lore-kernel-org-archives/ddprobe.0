Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E89419006B
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755314994; cv=none; b=lZyBbUepb3JqWz7w8XLAvgxprY8hWc8X20cwA7zDZmmzejo19U3vphLPkM+p7dW7e0UhjvlTH8sMMyKEoU+/TB29Uny3+/XpAi1VGHDaOTJT9YU5sRaXEtOdpc9LatVS+yfWj1YzoSJmOsWphwB7qjRivfWEN8su8HtCJMxof/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755314994; c=relaxed/simple;
	bh=zk1WqV9F5nUMncyA62RelXbJtxeaQPmRAyPLmb87vdU=;
	h=To:Subject:From:Message-Id:Date; b=Wo5tOSRQ/FigBC+SgwbC91IeUutKDLEchh+RVVlRtu+01atoYfWGBkYMQuS0NO9bXJV68XTNlrbYpcDUPBc9uBGs3Vpl6IRa4jBZR6M8V7lWrnU1F1UHcw7m0Ykcl/AqHU5sAzKqVcCfpBocMLTai7rG0IQF2VOW4Js1zZQy+Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhbuH9Cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhbuH9Cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0609C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755314993;
	bh=zk1WqV9F5nUMncyA62RelXbJtxeaQPmRAyPLmb87vdU=;
	h=To:Subject:From:Date:From;
	b=AhbuH9CsauT6yYFn6etFCOGoS82LQ/isaEKsxsZXV6lqpss76OsAgLUVH8eHNYVY+
	 arnkwnTSg09K7aYs3YbxZKDHXexBQS0+oyvHGMJu52bCh39Z7E5Nvw5alhsuQcj+jV
	 HacheO5yeDFN9aX4ywHrKZRJmX43f7Gk88QPoUkAneFYbd7TgtIzcGAnaBVtdZANUh
	 6f5oKavOjqPBZFWvWDqAOTYlIzF3BVq9E5bhpjywNOpNjYvDtvI5WLv8FWA/LbeAR0
	 kGGi7CUJsLmlZHGUHirFBSQw3JXEJ+Nw8Wv0zbhcaVdMsVs3dsWQTNGdyswUTGs/cP
	 +6DpxrgXcbCXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA4C87FCF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531499357.6159.2943812174419600660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874de1286c8217d0a91a66aed8c833774c696a3436f783250b45a35a6425ae8d
Date: Sat, 16 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755314993
