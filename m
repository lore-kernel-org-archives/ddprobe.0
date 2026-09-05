Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D58329B8E1
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788577234; cv=none; b=JIaIwV4JzYgMwI9k4fQu2CDnZcpTAh4D1D5vPr3rwoui2dpEGpbhtQA/jTqSbq1uGBCzxVrtiJpFIrO981gHbcoUJMInn5DsXni6EETZBa1vky4fya5z2dcb9AkH4JuCeinwG+KnUp80zoCMWLGZ2jWh1m6pyov2kfxYMLVdLAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788577234; c=relaxed/simple;
	bh=23xcltoX1JexLnsyLDmoqvSnhfrE706VGLx+POhOBOU=;
	h=To:Subject:From:Message-Id:Date; b=aK/1NsKTBLStDgji08I2oAPWgpSq8Flw46z15akQZsjVKp+3sukIjHiqiZYVKmT1DTsejmM9BT02ST8TAxKk03HHtMn3t9918LmHftu8O2yPRvt4J6FLEzSU33NhFrTorNl8LTZXck6jTPqTI+6pu8sc9wF5JtlNpE/HNk0hbXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsGBK7tz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsGBK7tz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0411C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788577233;
	bh=23xcltoX1JexLnsyLDmoqvSnhfrE706VGLx+POhOBOU=;
	h=To:Subject:From:Date:From;
	b=PsGBK7tzusHaegYEdeI3zYDrNicEsXhiQCY/wyfC9ljRHeu/aGuAK4UKk99RWGkJj
	 u3rvsd3OfBBHYzK6B3W/P2XLhysOY9slU/uZwpYYKoW08nxhO2kAP5oG1uvzKiD4Sd
	 6HUITJgnztu6Mo1ZWokHQ+wbm/0JK61ZYbaRKv1dsSmujEFJPQ5leJLVtuDV3Nf/xZ
	 oBE1FKS3G1iT4aYc6AzEStPofyfjtWzBGZOVeCq1g5AA/DxBEiY8Ju72+pYKd5owoY
	 KyrhdIdkKpJ8mUV0xnNWLVF3L2gymPpxa/IaVn3Y7xb/Zs0J2NNZFmO/YvZISstwIj
	 GpPBfKr9+HD3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C21C79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857723373.9791.13846178379608479137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5e9e0bdf98792e173b8a9c6de955636df68d4d2a21debfb261edd7224fbfe8
Date: Sat, 05 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788577233
