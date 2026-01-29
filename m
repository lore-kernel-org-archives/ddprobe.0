Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2AE38734A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769684634; cv=none; b=avZumIasCJFXmooVNg7IuQbMBAQHGnUhJQ/cXmVA1pFQV2toDQTQ9fW2YFNJbUeoCLnIueU3p6TBd7Zue5PJ9Be2m5YKYZzA7jnn+wxqN35KJ/0pb8n53KOIRQaMochwm8FexZCLILt9+wUkrNaIFtnmfxK7nSU3gLvdwqh0+l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769684634; c=relaxed/simple;
	bh=A7uk1Zm4bv36oGdH6SW+3oTf0VHK3RVju8OLSOri/RI=;
	h=To:Subject:From:Message-Id:Date; b=rWbbol9EnYEbghQ7wPQAGcop/PK9UMdMuMVtRCC7LdHnzajR1lmVcVdzDyQe7q+zv6DI/y1fREmOArcGY2pTA/VL7ATd7ooIKg3f/U4+7Y5UXTh0tVuNkRML+9/e/TbHntpvR06LewMOdwWToVRtmDaorgdTMZdUAOQ8h+cP5w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxKNodXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxKNodXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3C3C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769684633;
	bh=A7uk1Zm4bv36oGdH6SW+3oTf0VHK3RVju8OLSOri/RI=;
	h=To:Subject:From:Date:From;
	b=MxKNodXlC0OspnRZGhcrADFdAZl1cQUgYvh8Gyke2HjqUfWZ4HOjd2w7yZQX01vlh
	 /JtenXJhhKPLwCYoqMig4lmApV7TzKIvUOIz0PYn7ByPuMRFhRouDj7TljeWrFDb8i
	 6RlaX6xSsuge6FEGpIVlASqiMiPvI6xvxH0BpnF8TJf3Y5v5FpDdhrpQzzwBy4/iqQ
	 144rTsCeAavX5Rs5t1sjIXy6sEsA/yNRP3aPPrEysWdXLpxOiVjm4R0JhSpAXpFzIs
	 h8L6wYAUxci8mYniUKWLkBKXbN7RpRwwDg19/2Evd2pPodr4OofMWFQm0p4+4mxiWR
	 YXU1CH9TjplIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E08D358F6
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968463361.20877.3705312952958473813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c1ccf337304d072ad812a0f30b570b14a2df3b6210cd4b4da8596d1dd76bd9
Date: Thu, 29 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769684633
