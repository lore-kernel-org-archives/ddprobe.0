Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2703F24022B
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736846754; cv=none; b=QvhzRq6NqTXVFmiLn8pk6mIqs2fuj3YAl7OfF3uZFr/PjRE/C63YiPeXVx4rC0bA/rJJkg3klvJ2vVy9Bl+2g5vsthix3/udw/p4qs81ffNkphrsK6jmmGTilqpmnYOwr00pJh3oMqO+CcOkfN7WVuGcy+lV4nmyWfshDTx/Y98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736846754; c=relaxed/simple;
	bh=84ULxTCSNnFo+GPCD1IOIverZTHgpo1vdq+SH85ZSco=;
	h=To:Subject:From:Message-Id:Date; b=YFaiqCgqp5/aLtoKsTn++drlwD2qb1dda16kBgXI5QYfLFfKoXvBWVW21X6okq9iyxJckG1ZJTov/kSyqFZFNilAhjwi4ied0RIagb1cZXAJ1pn9iE/m032D7Ou0jEtP32NRFz7+FB0WKsB8sspz1350A4iAoMAa+UFuHUmVqyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdc6UKXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdc6UKXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB55FC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736846753;
	bh=84ULxTCSNnFo+GPCD1IOIverZTHgpo1vdq+SH85ZSco=;
	h=To:Subject:From:Date:From;
	b=jdc6UKXD76giJzwdAotaqYQP5zgo9yZu3qCIz2O6LvknUPDVOu/41b1Dluiu+/6C4
	 hcOrRuL/I0WzDhxBgm8llxpyEUvk+SaQ7olObeyIGLPuwZ4f88YByMT2JIoM5mX2oU
	 rli4eB4mnovHUgZhoKxEYajXMsFdFo9W5p8vnxni9yHmj8/0NEbOzBne0Uy/cXSBzG
	 K6iswC/GKaleH2GRiZbb3XSc5DGTULV/EvH+QhBAifJ/l/zsqsKRuQ/H5ImzXIzVZk
	 jjOUxBsQMrZph5ei+mYo4UMziwV0ysw1COUV+GnJ7enwMgSKp01O+zUuCP/4PGG1/h
	 2ZG4MZGB/Sqog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9584DE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173684675360.13767.15002272264101810822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b489c34926aba55392a2cecfe5e4c2753658d124021200ad0c70d0be09aad1
Date: Tue, 14 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736846753
