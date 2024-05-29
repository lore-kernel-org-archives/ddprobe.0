Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C7814A62F
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717025663; cv=none; b=OP/JWQg6SBtpucJTbZk6WRgE3q4ooSxeFLQyUCrUE7wR15dDaqs8RD5b1Y5nYQ+HZryPzwBA42ydbfC/TjT4+v57gV7hHsfS+3Xfk1eXjYUjU0SUQoiJtCted5Nw0106IdRgbWrxf+BtoRDPmn033kyfjunyOs4dhMGGrhILgCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717025663; c=relaxed/simple;
	bh=X6ifWMONaqXEeqQfSXntNYHbA8ZuXgD61HUTR57wxe8=;
	h=To:Subject:From:Message-Id:Date; b=U9zlvkzIoMcJr1hkWnf8/yIKZc4nH4gmSxdIVWCyDtfPm/kQVZNMl9jEY8vP86k6mu5fC+XeKB50i0U2dBHQDrIP50hgLNG3pPVrjXfYsYBnoghd5q+CVZa+w93yz3ijK847yXJ0265KPnQoVETqNlkIcNeT3CK+StdqU6vU/xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKNvfBra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKNvfBra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8715C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717025662;
	bh=X6ifWMONaqXEeqQfSXntNYHbA8ZuXgD61HUTR57wxe8=;
	h=To:Subject:From:Date:From;
	b=ZKNvfBraF5Aw2JRJFaFbA4XSIKdV0j1ktlUwfa6qG6RezjWG5++8vDrs7B/9VVppo
	 DKI74pk2wB9DeZrrIsRehlKVQI85NPyKbXgncjuDrZ3kjPnu1HuErYKZR+J208rb/X
	 H0IlPu0lWDARdIJXNyWqz7fzSPM3yrCwvXcU3Dko2GGs7XANdqAF6dTnyIU8hhzgxY
	 i2RzlERgpOfpJUSXvzB0bQGgp9kjaQ+Ba5onoGUIpKamJau4NCCsCIkk2yhnhhLLAs
	 ne7JAsKJuEQefLLZJAb8/KFDCx+zwz6hegoS2CFGk04Bj83O3NN5qr4M2l4R2Ooqa6
	 XXGK5F1j3sPoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF0F8C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702566282.16696.8274132857647920883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8e3276dcd87e31b4834a24df4df50348314787f7f1d683bf14fa1e41a89a09
Date: Wed, 29 May 2024 23:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717025662
