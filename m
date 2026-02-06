Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE972BAF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770343434; cv=none; b=K25gjl8biOXfjGTrNJFGlaJ/ePsHy7lhIARy428KRAWdHoAVXP6L6fQ0DYwI6mmC+RSzBbEYgiHpr5VC1V68CdGR8DkxIFeEKHU144MFAKJYEBTOWx6Xsvg5Y1fx5QRUxeHQ6kuOZEWZFe8pR1AmR0+umqgagMELA3nT6ReugoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770343434; c=relaxed/simple;
	bh=JCujeQgPn6fRdvyXiIhjFQKn1bH6ND07oZRhGMNq7jQ=;
	h=To:Subject:From:Message-Id:Date; b=CnKWmPxej/5Gobgek96tN0tU9u2rxm46AQKmBxxrVlGA8Qmt2xIV9gErvTeOb7f+NrklzvJiPXty2aUtGlyBhQQhOt/ONB7gbsOyCT8GWpGDXD6Gkqnc1o27P4GjlcMnnKtfn3Z+2JJtYb4hhyWnCboaV8MyIAlaZeuCswhszWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJyK2eGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJyK2eGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C79C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770343433;
	bh=JCujeQgPn6fRdvyXiIhjFQKn1bH6ND07oZRhGMNq7jQ=;
	h=To:Subject:From:Date:From;
	b=oJyK2eGr+hH67ksGGJ2cRR9jIffQ5xZHEhH8sxp1KZy03Wg6zoSXqbjDFWwtYPwJ1
	 lav1NNe/1U//OHjci6lswKQdGHN7mHMiAUNi02mQZnCa5IPhel4nTVngdtmTLEfqlF
	 qGJ/yw6cnSamLk0ejSXBVYP58xZ7vmt/XBDdhhW8bg/FYdURiB+e+SQdXKfCQq2W5G
	 E/1fesTjMhaSCHy/ozEDQHA/255ux0oNQ+LQE/Xcs+671FuxFSw+wTX5/F8VIvIWBc
	 eYF92CsFst9JXry4pWIbtKcK9L26R/3VmHtSo9FopjYV5KC5LBwfA6F3S4C7gE1G3W
	 KNZHOkXbWGvpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF3FECD99D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034343363.2840.8260119169182309571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 769169b86828b2f92cbd95edaaf42a0d31b304170a1b35e52ea27f290169dafa
Date: Fri, 06 Feb 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770343433
