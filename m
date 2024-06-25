Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4169A1482F8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 13:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719321203; cv=none; b=Qbc8uDFTOv272loF+jbLio15SIKdk6TrV5/S/l5x14eIkAX6FM8UUtUwWi7LuUEBY2Z48ySILG8aKG89yIafkWJJloBLuRM1QKGtfYCZEZBHUGXAgWGxu+8W7r0+Uu9yhIWoLHPiNvIeA1XI/R7zCTYhmLykegNWt+HpuBNu3ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719321203; c=relaxed/simple;
	bh=NXI1hEBouoS39eg37ARhjQVPPiUnbbeIILVbiz1dF8o=;
	h=To:Subject:From:Message-Id:Date; b=OPkASxH94/EwJG7JQ9PihaoCgvE1A5FMT9Oz61IbjfoAOTdaLbV7Nua+zKFq/B1vieyYoScy7HpIm+G0sE+IvXQNwrhQjVtEzerS9LnNOicPeshJUBs74MLIip+3jNJtJKh7zthRxEqu50o+7Nncx2XTrl+H7DvVJ3k0olw9o+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdL8xFET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdL8xFET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB974C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 13:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719321202;
	bh=NXI1hEBouoS39eg37ARhjQVPPiUnbbeIILVbiz1dF8o=;
	h=To:Subject:From:Date:From;
	b=CdL8xFETEbZYnsf+E3Han7T7DWsViOZ+JJ82VITe6iq1Ij/IHJ+X72Gbog4J2rHPW
	 uIsTxKqVUgC6WB8OV2Inz12GwTzw7nHU47ZJ5UYbuNHDxvIUMyXI+vMGEMBTJ3AZYN
	 Lhgbq2NwtMi5mZ/7ZcfSUghkNMFcNsvqkztDfBe8oC3Q5cT7JWjWN7fwaDhKSwEzdv
	 R9CSOYZ1BF10bhL1eqE6PfW5N946m+zFWkVv2/7MhJEyx8sVKvp7aKEpy4NhjQZ0jd
	 eC3EocM5YSnx6JPo8k+Hg+2L/kKU+46fqCgc2hZWfepllgktH96gYJesz/0Y3u8mYF
	 drOLJl5VlMmRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C474EC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 13:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171932120279.5772.8351653282823521179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d89f3c12aab77e57d451855db746fe43b6401e79b70f7a4fa4e37939488667
Date: Tue, 25 Jun 2024 13:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719321202
