Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26F630F95A
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766652234; cv=none; b=nTzTcR0fsjcDkxXMyOQDzZDboc2mK2dimYilmul/AOLH2vFVhQGrVqQk9g2IIJzniAtU2rxR8anlT3mO+nFiBfpg0aytqZmT6CPaUf+9GnUQqezijrXSGnYxZw52h3EfkayA4tqrQXbumsH/JNVt2g4/8jQK5WFdRO0vizANqBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766652234; c=relaxed/simple;
	bh=2Or8TsFB/p8RLKOmUMgBvfDxyk6V1byDHdays4YDiLQ=;
	h=To:Subject:From:Message-Id:Date; b=tJjdn2yab3xlpf8+YOzsJZVkojKjDyAcfJypZ2l8STPHJ27qeO8mzcgkySHWVs42qtC7PxO4l38qxSo/PcBBFMqRezv3hHqhzi+vTCZdtat6+GCGqr9anm4EouDMUojg3k59kABk70fDtUOVL3CB635xRo2G686KOL5fLlfL+i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7CeVglN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7CeVglN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF22C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766652233;
	bh=2Or8TsFB/p8RLKOmUMgBvfDxyk6V1byDHdays4YDiLQ=;
	h=To:Subject:From:Date:From;
	b=q7CeVglNcv01JUX03obsDcrpi+wjxQN2qgs4GcVhGrSyEOlpzBMRHdmTzWGsJf4nR
	 9i8UvZfE102PCNUaz+qpDWDTeysl/A5LIMlhUttPDEOXUCJS85Oh5wePsG3lPIuyfw
	 z010ddcfDnPk3Arw2Xzx7NEhiFHl6I7F2TWiym/b4cLDAQdJMrTjACMfe4UlYIRema
	 MDDgGo6Y5wTwCHgFQpLzrIoV7PZRjRq1rOPsGR3GvTdPWCy1vDCwWpEjHSk9ffGI9w
	 53bma2hJsFEUvIPhKMQSztPYjluZAuJ9fBNgXknckSdWvYq9bV3Q/D5kOlgn6Yz3bZ
	 ekEVzXv6aKIFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F566E784A6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665223357.9564.1708721290980551162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301c99edec2281ee890b28007f837e256c8de2efad0317f150dcedda092ea131
Date: Thu, 25 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766652233
