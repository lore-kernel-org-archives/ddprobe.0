Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356602D0C76
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764056574; cv=none; b=Tzcl0HatFgJKr71ziEvxglEa1/YGnJEmb3TjwlEuCkd8pMmY/vl5YV6cT9bXzPcvAYw0PjYhu1uhpuNJ0BIqZZ5+ITPD8sQE0RA8Huf33QCJzvK7GDjp1OQpScsapSx2iusK7rGfxRXBFOXwJLltZEbaqK9nPWMXJURxPxvVrSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764056574; c=relaxed/simple;
	bh=dXimeK5Y8KaGASfSq4HibAxGS/LHRfgAUIesaPz3gtQ=;
	h=To:Subject:From:Message-Id:Date; b=Lsd/F1iWi9PrIzC78+16TgwNW6I7xFuNXYHvXrYPJpyFoeWGg3zu4n8FMig6oKUh/JaIo2+HdzzhdLkMe76XtHPDSH2sOQS4oo11AZd+LFRXiOcyI7TDpvWOKAqF1f7F0udoR/9uqacqxvCnwdgTy05OT42KBYcajCij7goXFZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3jaTd3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3jaTd3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8136C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764056573;
	bh=dXimeK5Y8KaGASfSq4HibAxGS/LHRfgAUIesaPz3gtQ=;
	h=To:Subject:From:Date:From;
	b=q3jaTd3C+4bVaMk0p7CfEls0Ge4Bel1ggjLEJqitzzVT0KM6xYLS/jDyHV/ZbK3vy
	 0sQwWnSjVfWCjmT1EIQxZY1Zv3B2igzkMMggsRFQ9Wo6e5hcy6pxeK4i5Bbd3nnoZq
	 5Oq91sHkVnNl50FZgI3gP+H9TRl6kOhyubn7jAfCPV06z289D5KY9Yxofp3nJOdvbs
	 hYntEVsBmM61nOSbjDEUkN2kLpoN0yMJPfFLYP+DI1c5YFHTizHLnDGJkCaL69Sa1Q
	 Wxrb5Xc6EIxwx1EgcFyKuAclxVDWidqlDvHK0THdjSKdWgreIkDCdwtY4E15HbsABj
	 1HP8OdErMVSjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94824CFD364
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405657359.22648.2020661742678091111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76339be0533d40ec1a21bbd392c71fc767f98ca6babbf5ab4d9e6b70ccf5be9d
Date: Tue, 25 Nov 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764056573
