Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548214A4EEC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791231034; cv=none; b=uJOxMi5K9KKotzSZz5ejdbPVXt4SwgdMOQojbpIMuRK1ot721+l4/HyuXjKCwW+XbDNyyu9/6pzAHBpOYhDyR8k17jJIo8/fkSdKCucZ1fh6HpaFealfC84p9u5fQKl+LYqzJT4BkyHa7vr/cvkb/G6QXBcKQMo45gwxZhJCqLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791231034; c=relaxed/simple;
	bh=12KSKzWpHZRliNYjdnbZcj3ggjE0ghfZvL/XpR8sXRs=;
	h=To:Subject:From:Message-Id:Date; b=GucDb9jiqMZ//YNXs0cKPJy2pWA5cKuiOujamnZ+DSS0E1JDGjszXMaWgFEAclZlhzBwf8WWQhbrB2NQxp+qMyO2DNNHZcpzU8bQLIrZAswiO3GTotVbEkwTpy/enJ+GBplKVxw+xV7hC+BKE4B3tGXNTb1qrEpyz8fBWaQAUs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sh5pHBR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sh5pHBR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2341C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791231033;
	bh=12KSKzWpHZRliNYjdnbZcj3ggjE0ghfZvL/XpR8sXRs=;
	h=To:Subject:From:Date:From;
	b=sh5pHBR1CrAZ4wb/3aQIAWPLSiqGBYJbtKs9Adx7EZB5d+/kNsisyHlj/jxr9v78X
	 dIUQCZaRjS1eN2WDY0gJS4PnKddu0dRMdxn556GuQkwKs96JzxqaVlNSy0tlJa2RSc
	 o+cTx4e+MO52MbHWuU7HUTvqHD9n8kpNlN5W+mIlTdnflzCOK6P/GslFAjhEkMDMAM
	 7N9N/lLnmtrzGDF3apg1pojkfoLxXExz0TVtHSLbBhqueMGut18AMks1tlr8h08ovo
	 dqsSCa6tWeXx0447qqWFf55dsILSFEm3EwdBk/1Yz8vB0Td7kP8N5S/x5wPCglplBO
	 B8iE9aN9Efn/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B043CCA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123103368.18715.1577006941709450173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfa9f1fa729ef25e77fd3a83adaaee2c6601c89af69cbfd017835b9dcd69c85
Date: Mon, 05 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791231033
