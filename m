Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0CE38D
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771527894; cv=none; b=L6WJJG2GqNbvf5OeDMuk+hWSQ/nva/On3MCPK1ettZiuXABpbVHg0Uk8OvHFN5uGHNEjedsn6qIdWpFBpMLjRs8Ncz5QzOEoyOx217Dbh/0eEJG9XroQxqtQyIK/TY1+Ri5fbH9LUnTynW6BKvXuFePH27ugmUf09JDmTYWrKmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771527894; c=relaxed/simple;
	bh=JnZU1cvrwFoKWisdJugoEKoLWyiI0ba0c9CtdzXpO8o=;
	h=To:Subject:From:Message-Id:Date; b=iDkhOZl02JhEg98Ir+38BUuJEGRp0nUNTjwwrhIWkWKxJ4q/EH1v8iwR4+H4MPWyS3Zqm0tz4xBAwEW2LF0bTDcckCyz/3b5QPsQ6hgzoq+5Pfr24n3UlcY3J1tmIz3fi143FchpWPwiBPgrgEpw6nZeS/xTGZBxH+ciwJcH5To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuZGKd4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuZGKd4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DCDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771527893;
	bh=JnZU1cvrwFoKWisdJugoEKoLWyiI0ba0c9CtdzXpO8o=;
	h=To:Subject:From:Date:From;
	b=KuZGKd4wAkv3Y0LjanqCiNvb7dH/1y92CtSCiSZwH1tJu9HSOPuIDORpie+t/JubO
	 R6cern5rrEyw6XeTRdFduyzXFNqa60wwslBwVFgjyLB+3mJLLgx2hfDc4eBtPSRP/9
	 wnnPFi9Qf1SYLjEZ7+p8M39OdRZ6PFBTwNYkcsgC0tR6bFaZ+FLSoSbSo+plkHgnsq
	 pjynSTGX1PIRf88lElO8179+fagLV7yWA3+YACU6v7BJ2VyWPgUQcWs8b7ldlpUUmN
	 SGpWkbM87CiCv9vwazof1uSAiUI/xbDLo98lDwQjwW3K9E/AkeIc/kzgEiLMFFGxZY
	 4ah7jmARLd7ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F0DE9A05C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152789359.17672.5288292138667296020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5e1e48ead94aed0245baa4f6a1a6c8a967fa743afdf7db7409de0702fa32f4
Date: Thu, 19 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771527893
