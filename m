Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438763AF668
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784132914; cv=none; b=T9F/wzWZG3iNwgWdtPyq/M0TUdRdQttT+Fg3bccSmjitUEZukJAWlM60URN5ZhIN516uGVq7Hpfs+FGbQXa84YuyGQ4VvcmaWCVQ7YD8iyqnm6Wwf00ep/06qt3uKgKkumuhNNxBBs6vj/yBhu8NGwIMEv3o9Sc3s7Yr9khq9W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784132914; c=relaxed/simple;
	bh=rYX6JRq9II6H+R/Y4rqiVQKZW255ZUwNxHaHJ65t95s=;
	h=To:Subject:From:Message-Id:Date; b=q9BttI42C30Cqy972WXOyauupGVw/p2R52d37S+NgbVVX0IEk+xZrIOsfjOLvrVU/onUowyK1aiLYRwka+fFRocCqE40E0eEM02kb/oF1H/irPjeSJ+3O3r1zCFPe+wZFiCx2ZTS7HB95yY/lUNkK9IZ/OcTkBx/rDdDo3QGNlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q378qlDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q378qlDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE34C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784132913;
	bh=rYX6JRq9II6H+R/Y4rqiVQKZW255ZUwNxHaHJ65t95s=;
	h=To:Subject:From:Date:From;
	b=q378qlDNy29R2ZFiy8eDDA+F374PHUQfH+C4WHndZlunMwXDjaRzKJdRMXSSUey6s
	 K9pPfNDTX6P2MbIFO10XWidmx7pRQtlvd351p6h5EpOMEBSupPmxDuoP6SWjoFd0jm
	 Z4pi9TTN9X9poOqKwJuk/08GFoVsGrGTAgq1Blo8pfghlknc4q/nUplBRThk6cigOg
	 XTKC/F5qC9CPHVPsC0ItGg/UCvGpL6mtzZAFRwUzarUKZAVedyGWqtoHs+fnD4gwU5
	 OvhTd6EFneokbBetRzqeO3H9rnguP96CIWAlRjJWIlAGIdxUnqGgSbHbTNfu0VSY3T
	 nYhtYgdkybu9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA28EC44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413291368.17458.17315448128242191105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0fda2db5ce78cbd16fc5cf49360990824cfb4805cf49f44260fd033321ae969
Date: Wed, 15 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784132913
