Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACFD13C918
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776226654; cv=none; b=t4UVHvdWjLYgYiPoidISySpf6JMQ7euZKPAbNW21IygsdpWYmUzRnXKMCn1ZS8mVkOhjQHGxEPKgyBPSx7cLtvRYtmwpje8ZwlF+ujQIk9UqX/Zdak5wXf/3Ly3BQOK1/nJWUA1V4auoA42SDFBiNKoWr6X1LX9I3MjOssSm6NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776226654; c=relaxed/simple;
	bh=8leCHdFq/+Y/cVGCbZ0eDiWPtGFTSKYdpsPDy9I/cw0=;
	h=To:Subject:From:Message-Id:Date; b=aBQdizTIzCw1lyedW6kofKaUdQLf15zdJTq15fXigv4XUp1cScRCzuXBMMyEuyv+CRsWpqY8TXK2URgi9WwlPfe+03aHL2yhhehbIBYwcvaG/tSBgp3KMpf4t16jbhDV00n45Qky5doP7OavGQbEXhMmcZ0YXeQ+iXyZHMj1Ghs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+KT+0/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+KT+0/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C8AC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776226653;
	bh=8leCHdFq/+Y/cVGCbZ0eDiWPtGFTSKYdpsPDy9I/cw0=;
	h=To:Subject:From:Date:From;
	b=c+KT+0/7KrMRDmF+fL/jWjp4I1P0OGCmj07VytyDiTtJcgC3+A31rYVGu6307GZaL
	 bV3F/L/7gZnXMqi3I8ct5+NetPGd+o6aRDqJUCt2ztBYy+87QWaIFmjSsHPg/3hitB
	 zHmsQTMNzSKqc9yJbI5Rr7q6GkBvXBI7ZbwtaMcsYSy52OnO3dRZcK2ZI1hi2mF7XL
	 U7+mFL9tLnY3P5kqY/npJl2PM7FCZgdq2O78G6jMv59V6rLCMZeow73hyBDNA8FtvC
	 5n3735mFOKvKOLYpt4+pRLtaCoquUDQ91N/EAnfqBLLQP4FTjt0GWrdUiqHTKkF3br
	 R1oDt9ur1cmJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7CDFA0C21
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622665368.1486.15821080629119503152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc82a36ce48c4ffb46d65ab21448afb9f39fe3151b8dcfd2d039faf0f5f9cef
Date: Wed, 15 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776226653
