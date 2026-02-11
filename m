Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51A130149E
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770824094; cv=none; b=mDIOBIKUi2VBS68gPEfREbsuTQc0JyQ/mMS12gf7fCeGHuxcJlWC9J0b08FS8kpSjMhMgZ3mFSCYiafTdgvrffc2WEAIicAj/9oXwlJZi03yvQj1fJqi3t/2M1VgkQ+0Ra9xO0FPYyZawLdpjQOehkIwNA8MKWZVtPc4/JsA740=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770824094; c=relaxed/simple;
	bh=hacaypuurdLwEXqd3SKzXiAFjUAyrA7ZCWKLSDDIvIc=;
	h=To:Subject:From:Message-Id:Date; b=r1egq9lUI+pUGcfUfoP0PbqvB3amVLQvjxGtZu8PrE4BxrvBWTxNDaiJUQfsHsDW7X/92c/G8jdaPu+byNP8K/aKJcRfDUrf0YYUS7uzCsHBQHOUIa8AvhQwJyWoxkG2GrT7zNeglHVk1Zc700vFi3/CPrUQBoc0EiPN8wPArRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNOCjvBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNOCjvBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 32596C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770824094;
	bh=hacaypuurdLwEXqd3SKzXiAFjUAyrA7ZCWKLSDDIvIc=;
	h=To:Subject:From:Date:From;
	b=MNOCjvBt77JMt08cB/x9c1xSGTub9FmwI+FJ982pxFolxXMfEUWKON4HL1zsRfoiF
	 u1lCAKGVUG1oU/HxTHVlAQ9Md0RRq8K1UvKOYMIylGGAXcFj0Ke61WTUi0aEy4N1aa
	 OcgA5/R1g20kLHbprUrKgKUj72JogTrVXyqclu8/uySmicFNbmA4g9icWxZAWLtAKN
	 h2ROr/5i5Z4L5Af9xEx+EH9H7mukXSeIkg+tTL+6XGLXzbHtShCHpenfky/rGYmjdo
	 QDaFZxEEVDEusUcV1l/VHlqbcStqbah0Z45E7GgYVcEEuH2I1pY8ax/tbHD2LgCGGX
	 8Il3Z6FB7+Arw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF3ABE9E31B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082409387.22807.5316158358663781232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b397d144dbc1707e8778d86fa4ce551b8aa2c90c57a57f99517bdb5eb4dfd4bf
Date: Wed, 11 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770824093
