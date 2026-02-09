Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2DC1A9F8D
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770603234; cv=none; b=kzI6OE7rt2+TCNM9MCjgyd5fKVZ/HndYMnC6zti//gZ0emMd6+hHb9/MGYiWBaHFp40ZJIrJRY0xU3Z6dnlYENUFLjX8BgQRg/cxECstrShV0wMeP3/k1pukEV+RXlatp05qIuBL7D8+rzVkzafWUgutozRYP5J+xwbvAqodwxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770603234; c=relaxed/simple;
	bh=8/1mCOJ2L3lSk1HW05MJrrnYExitxmqPG0e/viInVVQ=;
	h=To:Subject:From:Message-Id:Date; b=JLOjHrnpW4cJrDAoFy5t2bLz8COTyKCSTyTTDYxJ4+OFOpKnfMyTJkd32Fn6dIpEvd5WROSZT34rrWQfzPSra0B3VlANMuyx60n49nTgxo9mxYdQgrVBRwOl2PdvjtGRWNIsDVXo/XPmShh1Jksr5xAg4xlM8i4GBPgn5MGzHeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1PHHWMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1PHHWMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF048C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770603233;
	bh=8/1mCOJ2L3lSk1HW05MJrrnYExitxmqPG0e/viInVVQ=;
	h=To:Subject:From:Date:From;
	b=O1PHHWMtvDhXqsDF2d5K73Lzb+VZDR419yS3umi6kRaLu8Hy5H5c2/cWoxxULpgUK
	 86SUYUNQHrjOd2jkMkwnF663/uUnRJObdn0G+YyT5BkAjNLi5ZvZP1e/xWlyedtvkF
	 YMJkcRvcDwA1X7FUsymKNJNC8LrQQ3fg1hbAL5coMxkoi++2i9jp9oMRJM81Jxy4Wq
	 TfQLQm8ip9zIANaDVvqmyhLoJhkiEed0szFFKZPRpdiDOmi1abYyOPfc+umeHc7wfU
	 zQpBAOvwiWaR1iCNG4xBsYnaSxjm+Oc+leDpzyAtJx8xH8sApc4s41Cw6WxBUDop8Q
	 t5JDif6jwgPwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0D5EF06EE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060323364.13476.3325860806230382918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 769192ee31aeec0995e9021c8babae65f50622fa353729efcf9b4e43d2ec677d
Date: Mon, 09 Feb 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770603233
