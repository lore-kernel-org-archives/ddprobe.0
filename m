Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4E37081A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775192134; cv=none; b=jt2/2TAvKRkwNCENCz2CJAMyGMsjH8kC1sYK9r6NORAAcy1mi717FSHE+S+IDkB57OARHsKQoeT+nPBahmMCsKiiS64p1b7/PhsdtVFNkZUJO9HkVaDwXmNCiLsSpPjqzcfJKHIpc0ZWOOq7YHqTZWyeSd0R/rKPT9Q0+W79e6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775192134; c=relaxed/simple;
	bh=QZUcLWb3mRAVuwF4yFzFGTjx9kyfAMf+iLxRMmT7qAc=;
	h=To:Subject:From:Message-Id:Date; b=QuOiBnvdFRL0iQWNbNY2Jukp1sK8RFRSLd4d3a4pksacMkIdhVCm2NCB+no+9XFWc6z0tDRNbqfoMf5KZCvDCZbTDkei4r2s4hUQzZGbgUKjMiMRwViPP3RjNeIlIxZjAsQg0p7gqhFRdPWFLJnUd7h4Ayw+CSGJ2GTBkKGki38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e31jBL7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e31jBL7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB664C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775192133;
	bh=QZUcLWb3mRAVuwF4yFzFGTjx9kyfAMf+iLxRMmT7qAc=;
	h=To:Subject:From:Date:From;
	b=e31jBL7M2+Gr7EE4Dkeimhgmg0Z2iemBNzW3oKsnMe/UvWwfutCY7281vzRz4ZYpg
	 S/psW9/WmZHLhBwb9SSTFlgSrHNh3fgP4A0h2wKgRO8Jyx1j98WqxWKChoYLHvnMPj
	 xUajTujEUQ/RTFxu7fheNGxNWbPCq8dbWm/v6SqSqOZb+L7Th5JbqBlA7Q6ymu3IXq
	 cObAVRPTcKnYdNDI8SoyIX9lwbwb0KO9Sn6jraU+4dHQjaNLWmps4o9/cSrLu8o5K2
	 lyv0EK9kFvUyf4G6qA35rJ0kTiygGSvKoNCvEgqsX6YyuaBhUp01K8gY4HDn3BIvnf
	 AXpR5+7T99zWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE1DD7309C
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519213368.29155.11705252697843144027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 173a7cb01587269a3a7d8113e695108d098aa546c97f781102018919ed77c8f8
Date: Fri, 03 Apr 2026 04:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775192133
