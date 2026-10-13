Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3508B3CC7CC
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791870034; cv=none; b=cLOGgs7STYIdUyLQC34+bufVtVq/z5cPcpkM3PTVKqv0iqo9uJGS/8Fd4Eqrcim/75PK6Qgtic2LIO/K+huMwbtITXlbhztx3KnrqQH0iZPlq5dPLsGBEYWVavjCie/1K/vlZBFeDzYF2btHatQTGArqp7YzhEMizT+yA+eLbIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791870034; c=relaxed/simple;
	bh=v9s5TEXUr4UJSOLtGG/6Naz807LQAsS4fkrVaP8CyT4=;
	h=To:Subject:From:Message-Id:Date; b=ga/W3yCJ7IUocSi/P25aMEPiLXN/RnYzTGcDz/XOobeymAcjknVRauOsgmfGQ+y3ZkooH9cv8lULOjw8AhxgARmwLAIXjwOoYvBfRQRSwkOhe4abLtL0A+6SJmu+qn2OPAaCZa/LOl21oqEEUm8IiYe6cylUPBHFB7RDNtOsBlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEiXz8lF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEiXz8lF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAABBC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791870033;
	bh=v9s5TEXUr4UJSOLtGG/6Naz807LQAsS4fkrVaP8CyT4=;
	h=To:Subject:From:Date:From;
	b=OEiXz8lFYkVDVFAg9YKnqSa5lh2uC8/lUQzEM1bx/kQVWFZ9sENg6IqGkEIrP3Yzg
	 tR3mcAMm6nICikJkxlsuw9GTwJm4gMUDxrGE6Oa9SbjYTYByAVkUUYuzvmx23ai6Ll
	 Sw+hcQ8DCn20SZt+jQ+U6Aq5EcMDVDOEfV38h9ghGizFmQ6loDrbbMNFtoZaq/oAu2
	 2MqoeX1QPZdeZv8jSCML0SIw1U2Nskh9+qMAEUz6B54+jie3aTCP5x6MaCisRIkRZn
	 E8oq8rszlGNXfN52bfqZm1DWRZMkQscfxD4nJQWE2Nu1+7HN8BMyBGxjii+uC4awXJ
	 qKWvU44K+H+Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48E8CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187003371.22229.12244067564245683425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8f4209c17749d96417be74b4a66559f546038903f07befc1e90320af161781
Date: Tue, 13 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791870033
