Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFB113AF2
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772180094; cv=none; b=AAV7d6PsPOAYfYZ1OHwlKy77zmsU1UFsY/7XwTJkZLUbir83wzRxK0lrpo6gYA2+huFJkfxVDZ4BMWhhyuxKvEog+m86zatDhBJ4AiX8IBy7Pijfyb2vbKfbm4sUguDB5kjWbsIF1Czsfw7BQKgXE2qDhVP32L9tLGt4uVcrPfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772180094; c=relaxed/simple;
	bh=NjOGQtjDeqXlOIMf9e9S7sLKcv9aGCkbpzGFKi2HbzI=;
	h=To:Subject:From:Message-Id:Date; b=pjhFTzl9u7AFjl0Ka1ywjI5F04v19oINr8lgxZZ0LksogUMpGJw112AIjKmzyjTmpVjWj7ptcy/0UFD82QyrPqhcc+gwm9yiTutkraSUtlgzCRuO/XrJ+pGh5011LLxPPV0OeTf7ytk8swVM6PZ4+r/iiqI+Ap0hEqk7udtgjjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uS3ESS1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uS3ESS1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A554AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772180093;
	bh=NjOGQtjDeqXlOIMf9e9S7sLKcv9aGCkbpzGFKi2HbzI=;
	h=To:Subject:From:Date:From;
	b=uS3ESS1YpwUV8VlxojFaaVt9bviQPzZvs0+M8d4NRX5+caIZSArsTFG7cvHRG+DMr
	 +8weNGMOpwpr2mz2y/hQIZLmgG/YByUn6bDEvi5p1iHZ7T6IlJ4RCOxPhuyZW+30B3
	 +St4bvQTHBH1XnDsq+vm3aqL5lbSHSn+tQo9uhNXKQ+TxD1+8o1/LASPAkcDELbHxG
	 zpHQ7SHXa+l7LcotbpPaNy6t1P1zGv6UjrwNPMQ4vtoFkwV6IN6cGtx+ROwdRNnFLC
	 ZHkXE1ugBhehO+3CvsaJi5tKllh4MLYIS0iV7M0BH6Y4hYCs6qvLmApVWyGN1BUnRq
	 ZXMQga8xCAeVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B0FD530D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218009358.6098.4530336455634106831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6385f422e8cd5f517c1406262d5e24ddbff3e6d2de8e2f52c05ac30a91d60dff
Date: Fri, 27 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772180093
