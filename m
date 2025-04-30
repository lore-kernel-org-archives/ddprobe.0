Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A0D221295
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746001793; cv=none; b=NVzP6CWhabmfLHuJWxDWxyrm5JnGRM3jbnPwcxiXvLgr4MC179Imh/glkknSFu9viGBCWltMfePlfO+qriSfAguIqa07ICHljP3+OmlmEAPldjCX8B+y/vmQQlViYO39jqeFv5IJ8ecNzBmgNqy225gAUNZIi0KNREOLNVTVZn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746001793; c=relaxed/simple;
	bh=75P8p7qKzmfYIDU8pwaDqo0sg0XgdyLZu0o2CMnfyBc=;
	h=To:Subject:From:Message-Id:Date; b=E4Mqs5MZASuUZ/G9+D4a2o7qtqS3OT7ZedR4xmbWif66H29QYKA7V/zRZTNQvcjxXrrG1Zt9BWti+cgAjxBHtZ6HIddBU7GXMg0Ya6phH8D6Ee19YQXI9xz9e1Ryu1JMt9HjFg02zSqveJEJUT27pwGrS6ptIbtFWIoVYPfqAP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQX7dlgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQX7dlgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3298C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746001793;
	bh=75P8p7qKzmfYIDU8pwaDqo0sg0XgdyLZu0o2CMnfyBc=;
	h=To:Subject:From:Date:From;
	b=ZQX7dlgv/NmSYf7cDJY8mNd1+Mia0N6iAGM8lw3mpuBaQPPtNK5g6OoIjo8E7ehi5
	 0uzx75c4Gh5Yc3LqGg1csvbUhpRQWiBpU+5McUT3HBarmJKryrsyBnso6i9hiADc1s
	 fpqC4Ivpnvi7KLeyqAgBAAudviQzB/w5ovDbTS2Igtl6JycUMkMmntPQ3mKV5vHwap
	 N6Q452MWAwgw8gPw58QhcXYyW/4KJqYMSyTqGK68e1+l8OL0z4I2Y4mjuPL6ugd29D
	 gDBd1ZE43uDaIdamZGjH30ndMnEHcFuVmfFHgsup8Or2A6iBdoQ//dZm86JTtdOfcn
	 2aoY4sPzjkxtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F355C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600179357.13900.1644956129989364089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8393aaa0e56f4b9ab3c7ac39c9fe678eaaf8268cc8d11ba23cd90aa2c70b29
Date: Wed, 30 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746001793
