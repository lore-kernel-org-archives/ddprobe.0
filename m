Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BCB3E8C5B
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780409074; cv=none; b=QZe7iz9nOGG5kKS6u/YgFOPkXVP5rg05PlJSVxCMC6SWLTa9OrBrqZOR92v4+KKvPhGahSG4dhPXxdaeNtLEwoPKJbUpl7d9gOGSi5ueJJh/ldzDEjGFbB7dbMEm2UJAPVoIqpkprAQJ0D1WCQk3dJfJcm/kl7TOLwBbCFcYg2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780409074; c=relaxed/simple;
	bh=VMg1Q06T+DM2G6N2I8HVF+Mrc99Fwh4//tQHLa/52Ac=;
	h=To:Subject:From:Message-Id:Date; b=Otx0jR7yiQZxyKFhoek913gEmXg60Ve8VBPePBsN8PtU/Rz0vbtFeqcRr6vpDEqAC6pHNr1COfpVYjH1o6wYSxCUVJIH7zVZ7oqEB6h6kM3zSZZDhkixtgAkD+005Cx2ZOukOOIbfH0mtGJkvif7LBBRMUY8/FEC175GGNKAL3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmRv+q79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmRv+q79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EE2C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780409073;
	bh=VMg1Q06T+DM2G6N2I8HVF+Mrc99Fwh4//tQHLa/52Ac=;
	h=To:Subject:From:Date:From;
	b=bmRv+q79Ml7FtPGC3xB4INESn+M9N2fMVTIjxdKVBFBmSlJqYRFM9PAu8jTSqBSNd
	 +u6gy6QVocdDHOsy+iDOHkKABVtEWo1KTeJ7a9tCv3ixd7noCmXvHeW1UU5KgMK5KF
	 SPqPL3wT06YDIEkzQ5MzBr3fh+OzhftLo2UoPFBfD/FhRgbiwc7b8IYfimB7SSxi0X
	 Om8z0rSNvNqc9X9s15yskC1c/OrJpBSVAmoFTybiFhfWAd1sI3F54nvjQ9t+z3DslI
	 DyYExLEDWQn5A7fV9ICdB9r2khKl8dCzGKe1qlUdwNdoF3lCWljkyszRx0F6vkAzqF
	 8kTYIQmPecTzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE454CD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040907369.11562.13034838256026853145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d296bc265b0f5cc3f157b509eaace432178a0df79831589cf42328edc1179d2
Date: Tue, 02 Jun 2026 14:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780409073
