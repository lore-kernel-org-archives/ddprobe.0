Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2D7153800
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736439354; cv=none; b=Pz59xXjagMXsROkrXuIFB6TKLkvKFGSBYk2C+M7+e0oH9lDvY9lfeItO0fUKoPF0QBQMOCCqh5Vi4468STQFgDPmj8/AnNaWfVamDBULvtN99ED+EJedglff+arSR2ZsDG7VRp1ecxk45zprICZhWU57OhhEUDC4eiFczd1SWjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736439354; c=relaxed/simple;
	bh=+sO5wroM7y+5VZ6CKf3yawD6TfkhLhZ2ZKanip4YU6w=;
	h=To:Subject:From:Message-Id:Date; b=GGvJD+KNVhE3uzSn/u2PKkaOsGE7ttQ8+xhrgYx2AWecal+dXs3L7Z1ejyEGU4EpunI6a8LtM+D9fXfFtAdWpK/WUlKR+q8vglNfrD+ZlHoO85207OT9/SUBhysibWwnJAVBkIrDWJx6BVZJcXwszqucaToe4f2OcJKwPcougPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POhbLFvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POhbLFvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A70C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736439353;
	bh=+sO5wroM7y+5VZ6CKf3yawD6TfkhLhZ2ZKanip4YU6w=;
	h=To:Subject:From:Date:From;
	b=POhbLFvQufIB2mqo+hCZbLzGBgHQQIqGhZ2KDN/TI7MkyxFl6jd+RoqeNOYo/EUtA
	 d30oSaDupatF87RxLGRw9a/G/zfysi/or0kBE9oo6gyORAmmrPvIdak7WwAHqKc5Qf
	 lLONj7gO1RSDsDpWQixd8LcbjX/un9nlu2CAAg1gXRU4qdPkIWGSkdHCxupMWZ2YNE
	 SXKOLbxkExw0lbsOX9MWRaEWehK0WUdEzYN4wkCnFUvzdOrbOcjhKVSNoJbM12hqrl
	 1nLNbWTYK7REB709Mr7LQ5YgqThS4HEqEfdkptdQ9ZQGJ3tYZBGcY4tdhW/shto3P4
	 wpwxnsPXbJxQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92483E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173643935358.31594.7373708834462150015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455105e146f61ebb6ad39fdb8ce76d3279aaed13fc70fcabee8ef62cec6ce671
Date: Thu, 09 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736439353
