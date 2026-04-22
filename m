Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231FD79CD
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776829655; cv=none; b=K7a0gKo94fKggOh8HuXksVPix7W/YU7Lt6hxJXtsDhBwa/WzVkAfZ7KBSR4hyYI2Ukudnv0o6iATDKvNjLbrMi1+s8GgyuMnnaUuLConFhMD5tGhH3DuJ/pA9yNTsHvrk6H5E55K38okV2QkBE5+wh6WCwQMj2VLnLDZeFQHknY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776829655; c=relaxed/simple;
	bh=F+ABSLOwUg/o5AYIG3QLPSqJe+g7BY1ZPXDWGN5Mw6c=;
	h=To:Subject:From:Message-Id:Date; b=S1hrPOpB6FI1/Bv+uGBfVCZTM4Kb5pajykKwQaY7SpcVQ8cQ+o7EHV59FZrYfySQw1/3CuGR9/higNbuMpSbXIiebeS9JteAVxhPny9RpJ4+dbWw2Udwowa8N/sE0ynFTjXD1FFkQ48pQAzHX9d2wWZr4RKbAXwDZJUzrFOq3PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpShmodR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpShmodR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB04BC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776829654;
	bh=F+ABSLOwUg/o5AYIG3QLPSqJe+g7BY1ZPXDWGN5Mw6c=;
	h=To:Subject:From:Date:From;
	b=SpShmodRjyCmXbsXBPstnxk4WHTTVxCkAnbS6TKvnD3Am9oR94QlU+vkcqUed+ydH
	 x5PM/lW/f9rfc4MlknJOMrFCn94l94TddpC6mwPStGrJMoDb2/PXt1j5hx1nSWqVIX
	 HfuBmU1mZQTarzgUee1JAS3mX5I6y40YWN7tCBCPOxzXzTekPDVpeKnbk+EoxNWo7T
	 PeAOBFgikbEtMHdmDoT+3PWxqHBw86NQunCIUFdDe4cn5clkycIEXBUU3x/QGXaY2Q
	 pjd9PUyE66psUJHASfgIdXjoaf8HCZkcdrH51Iec5yZx5bAEUzUYe4J0XsMI49/DVN
	 ca7AuUnsCmizA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9629F94CB2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682965368.11584.12049222670445239656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b5578a8fdc887a5cdd342e1aff9379d5954886604e45d07b37286f33414a35
Date: Wed, 22 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776829653
