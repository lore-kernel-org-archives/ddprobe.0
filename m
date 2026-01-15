Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F52207A0B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768515234; cv=none; b=WkKoAgAoFPMILPBEUje1ep0VoewgmicTRcK2GklEQFZ1EV9vkOkhDRfqWZtFeH0b/p9imeeOWHD+Q5goBnzYz+YbcPx7Dd0s1dcAP2ifazUjjD8+sWhj2R6aLYdHxL9EHA8rgHD2VfzgrbgzMzLTUOMPMDuzv7Y9H18H0Z3QURY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768515234; c=relaxed/simple;
	bh=Q1ZUkZ+UguRLXbJkYPQRRwfMx1Y68uS73iSmfqASdo8=;
	h=To:Subject:From:Message-Id:Date; b=objQurI3234d9KzKuXysa5fItdF6UniEHWYnEU+qCW4PZZLpV5YhRUa7wdy1rgDP3/ZonHmSTC1jTmyLV9HD7m4gm6aijRl4VvBs8a/3VlLUQfh4z+sczWn0C2vbcqZuezgRaOWwOc1cJtKQYbCS0CBHpYLXLtKvkBwzag7FZ/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qF7e1625; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qF7e1625"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7EAC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768515233;
	bh=Q1ZUkZ+UguRLXbJkYPQRRwfMx1Y68uS73iSmfqASdo8=;
	h=To:Subject:From:Date:From;
	b=qF7e16258EcgR/yOHMt6RwlqiUPfeUOupwCmvIe2QtYhaq4gfsm1cHuqcLhyjeQ6Q
	 yMqQlcsVcf7tSHus5pNKV3PdFje7iYhA+2rQW61m7xroclz8mnPDTTE8tq9EMK1yO6
	 Qf5Snz+UKl/qSXnL723cZXTe+2D4V3ipKXffesEV2okCq2QvEII82ruLmuKBv2av0r
	 bChEhkNoUZlQ7jwf0BngAMRtbRWWwXZfkzKmYjZSooc7WU6LTph15S3ZYyb9gxIrB+
	 MDsYVzOXMUsR2TjiEybrkd4j5AQnVTVIQgmrVAB6ASlL10Z98oWkfBXmv5ApR08pMP
	 XLu9khoeq+/iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F993D4662F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851523358.3282.16046512191120543511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04aeef40581ec3430b41b765cbdb38aa4349524c97fbab35b38177b684451973
Date: Thu, 15 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768515233
