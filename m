Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2090E1CAA7D
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775530534; cv=none; b=uElOAT2vmDRSJvqXlSGqKoqpSwBiyBP4JRuyvqMxUkwWuYzTt/577M/fdr5+BwZjaduumpAPajr/82WDX1bS+FntSdnFu1pWZ79X1GRvdJ63B9n1m3QK4WOM9l+ZET4NAALQpetvhXPIZRvHKma0PwHWI99rRZeS4IzP5s6ezu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775530534; c=relaxed/simple;
	bh=+dbOkPr7MUvpKiMTr7JJiT7FprI/zfGDN3Md3425y2U=;
	h=To:Subject:From:Message-Id:Date; b=JsY6USxV+LbIZOkCQTVL3ACmVUcMw4utGG+lri//S967PZch78Eo8I/XePmiaK+v+cCqcIzc84mvx51kR5mn9RaGtAwWQ6DQYvt9omylBtX/COpu/VUAVsrN8isWBwpwOAwROs4anhH6z/fSg342u5lo2VpB3IZLO2Jme38r55E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekD9Pkiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekD9Pkiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3333C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775530533;
	bh=+dbOkPr7MUvpKiMTr7JJiT7FprI/zfGDN3Md3425y2U=;
	h=To:Subject:From:Date:From;
	b=ekD9Pkiq+I0WJyEkBuowdHycX3oBfRqD5M/Kx8OYippKhK+vZAK+SJ8r8RCrWcpad
	 Yj0N1IqBxy9+p/Ce8gRfX2F+4Dcty1ZW22hH8CL27WWQUAthXUHhWz6iGg75W2EJJ8
	 XeBGG7C5MoAfhrA0VefAVCFvAaX4Qatxs524f3e5vhFG6KZ3vUk3qzaIGm49m0et+J
	 w2vVoiavUwYwe7EbRrIir4//lVxucKCEvC2DIsoj19Bxzoqe/f3FQ7JtQrBu1AxYvW
	 25Zk31tBY/vAZw8CV6sw1rPFUF3ohnn/u9yV9Om5N8FfRMZaHPQDX5iaEDQRlMBe3L
	 VKULCKgwoTDnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1567FB5187
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553053369.15646.1617534392828214410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad5091eeb22eef932bc5000beb860bf40de38e9fbdea4cdd1563ee2935c4dac
Date: Tue, 07 Apr 2026 02:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775530533
