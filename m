Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB90F513
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771014893; cv=none; b=MsN428lvpU36/yUiO2E21JQwcfROW029v0z+/cnY24XkV5EOlmd8nF1nkPhZZwRT3VMiLtT1K8jUwpBxZmf2IPoM3OsazTorciRBgedTVxStvx86nVudYgAKd3JgF8q0qpjOklPd2BYI3FaQGNNXem6oEkRoCqRQz3cQENrwUdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771014893; c=relaxed/simple;
	bh=eBGor1UKpztdpjsNsVqLFpOlBEb8MlfXaay9NASluOk=;
	h=To:Subject:From:Message-Id:Date; b=SB8iSLzRtiDaInRRDGMrlVMP9PgGW46qRyEGvjiOrEjO8OSgjGO/sWQbxABu2wpWn66n23Vvp/17j9FGMxUsaE12UgU2SvG0I4jxH3GQAStygINB2XWQrYkJ1JVqeU6oAxZtIW0B/ijFAKrleWPpJM2ZN+Hsb6xBzhPYiJZGoP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkuAWMct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkuAWMct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2165C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771014893;
	bh=eBGor1UKpztdpjsNsVqLFpOlBEb8MlfXaay9NASluOk=;
	h=To:Subject:From:Date:From;
	b=YkuAWMctsmrSD2szRKyiaWoR8hxS2zWojXda1/Eg74PRjDR6qAKMl4NwngC3ovDNP
	 Bgg7n69r3N4tI9b7ANY7MpdYLvReKKiy74GIj95rtxagOxpyCSZP0OkpbWnClP9aV1
	 RFJz+bltZEA5OZp+spDQg8qinoEFKdukf0Sq75noI1D11TGzsAnW8N6vyACg6EsxcW
	 D32FdSKpDK25UTrfH3x5BSjUjbr+9h/EZeM1FiMkh6CD0AcvRR1sLN2vCcG+/O2hr7
	 y/e7X+g8YgE6KouLvOrt9Yrbj6PPi9MdkV5hBC2n5qB5Rg6ko+deOfZApbZKvfYoQ7
	 m54NSvNObmuqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB6EF99DC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101489358.15587.15778226429093374411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7576db6a2903ffde35845f7b9b6b3804f18b726808d7276be6a0200869177e8
Date: Fri, 13 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771014893
