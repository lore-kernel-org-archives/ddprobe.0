Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2013231F9BD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783054115; cv=none; b=n2JN6vK8MOprIOwRGrmJZqbt2lybreJ7OVtwNi18UqTEX07jVklI5WcrbkUaK2LwPbsQO7+LCXl8/ivsGdYNeA3O2bQPHEofE4GNPUxGFkHh92osh2fa9zkmBvNv8NSUk8zqZdcTjfGuw2R8j5ds0zy6ZhHwh5rQhIHcJcUkoXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783054115; c=relaxed/simple;
	bh=FPoYG7FL2fsjMerX/76UW9bH5FcFdn2X8/qCYt1PtWk=;
	h=To:Subject:From:Message-Id:Date; b=tgw0vSa673NT/G8QuLxcicy6anLnLhDmJmuJEsw7jfP4nXIbw32pgTZtznJG2RD/SvEIBcJBu57ax4WiHaMPjlDrGRtQ5+i0ZpsnsNEjtVfccD2z0gq91/Jw2VaHL7u2uG9brDnIOOStUdR+A8YhPXrGWqKp0WM6kSM/YGu6d+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oF2s5d1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oF2s5d1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9ABC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783054113;
	bh=FPoYG7FL2fsjMerX/76UW9bH5FcFdn2X8/qCYt1PtWk=;
	h=To:Subject:From:Date:From;
	b=oF2s5d1mDChywFFsBs6dQeaD4FqCoZh4c5O3crFFJBA21dbVa4O1E02qbR+4Cuig1
	 d3j6R16I01zfuv1NzLhxuKY/1+SHv9D/Ohpp/YqL9nQI4j1GSlSxHaz//vVIxTtqgY
	 JOhmUJK5hXfZ8YekDteB75WQ2+esHqCSvGC2t2bBnuCykwztWhqG2X7gUZMoCkBlRk
	 pAOgIyIdQo5PHs04mlv6dm72g/jpk7w5f96efFjG4yrfktVPoQX892zcIIDImfaIa6
	 fnt8l2Y31i0UGs/QayVdhm+Am+LE8zez7c7b76lBQdyYIcaQZQK84rsqCecztKXs6u
	 UXW1Qxu1MhYYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9649C43602
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305411368.32183.7068272540335691808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a94d8d96f8abe2e24ef27496a4fe1814138f4fcb50262254772ba75b9c9590
Date: Fri, 03 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783054113
