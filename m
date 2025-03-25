Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FFE27715
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742876394; cv=none; b=X61grxZvfcz2Tg02n28zJr2DB1Hab280xyELc+ZXShBcRV9s9OX0Xbq58fAT12lsTQDDPfqt/85Tdyf74Y/d6Oj2DBlF2Vzp/0oaBlNSLz86h0lFyT7CNBrRxs9MSPztdBbpgMasQ7H7rcTqvuoMduW/uyxb1detQdwm4BgCBCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742876394; c=relaxed/simple;
	bh=V30/h1k3GgAyttSHJlFjRUwfsBajVzdLTTqoQ1EK17Q=;
	h=To:Subject:From:Message-Id:Date; b=MbT4pYSj9Vpw/f060NiryaHlvIQ4CObzFBqrSJxxBUhgP5D95s8PvSnMWQFWCXwqs9grUlsr8Zz/2sjmhQyMIhYbXq/v2b1NRkgc98iSUYzRsE3NUIjTA4KhgwBcnAJ1dWqGPr3z3g8YuQ0VUotkiwyzp06wxBcZn4lv2WfTOUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLcZhylG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLcZhylG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3245C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742876393;
	bh=V30/h1k3GgAyttSHJlFjRUwfsBajVzdLTTqoQ1EK17Q=;
	h=To:Subject:From:Date:From;
	b=mLcZhylG1/ujtgoXsIIl3I74wkI2tmVYkG0SA31XcUA/kMiQHBCjlAa1wMZk3vgwI
	 /WA63knzEOWqgvkm+WqgLa9ti4Eb0TrX7znnbd1VcB97/NEzEzohA5eqi1aIpO4mU3
	 60J8Iaj7A8uNQz/5DMFA6WQ3fRPmyj98li6HvA/Zi3jDKMmTXBLAeP0XJh/WD9Bdy6
	 1ARNxTz2hsXAWBH4X1vejQzCcOgcFy2mni6Bpkc14HKz4nPRkruRFDArzbsAIWqZ+R
	 KugBuLM89zau7T90Z+NocJJI0OaWAex4mWOkq7qa0P1PlpThnKqV2VhE++7xUWXH6y
	 JwH0unQlRLWEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5160C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174287639364.28708.1341635042569334591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7286c49a7c99e4e6992135e69e5298eb74eda796c954836202ac7682db0db253
Date: Tue, 25 Mar 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742876393
