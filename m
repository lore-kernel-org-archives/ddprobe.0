Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7231EE019
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757050195; cv=none; b=nOygJMmAfi75VyDWz4CgabHbsts3yRWvWJ3B3eHRuN/FCPK3IXJyI6bwogczRHXe9J1wM3WS4XSZrBb+rsLRtsQK7WDgqr0xBIgaJB85/j0NTOwV98Gm6PT674yXmF4i65ilDlZ8Z6OAjRCIkMQvvGaj9pfIbUuas2wWODyiZjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757050195; c=relaxed/simple;
	bh=FcwJs7a5I7GVyVpYdMVbQJrV1H3j4FUb7uIYM0ZXqms=;
	h=To:Subject:From:Message-Id:Date; b=k7NcRrnDpwyRwShW0mMLjwuzACHP9T4V6sNyLeCfiw137vzxkVVHu4n9O3oI1OQCbYNU6vXoFnXBw02vjKIoEcTwdI5rASw+iPb9i3O1k8DnXjlDm0iLKSd3oZz09Mv3SULu/XkAWU2Ht0YT6ombtr/yEpJflZGr0ERg+EJvfKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGdLgdaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGdLgdaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A226BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757050193;
	bh=FcwJs7a5I7GVyVpYdMVbQJrV1H3j4FUb7uIYM0ZXqms=;
	h=To:Subject:From:Date:From;
	b=AGdLgdaV2ZA4Oge2q7mclUCtg/+GseMExkDsi6zIO+v1MWqS6S1zRSJUivOQAmd63
	 mNWjPhtHRQKneiUrISAMnBcz6DA6cc1XoEuZGUT7UGR/hqywVkNeQCRnMWA8CbCZM3
	 Cg5+p22Q628GF8hp3tgQRdNi109Oa33AWnD23s9UokzQG4RJhDQADVJewEONyHlJkz
	 SZj62VmgvUd0N8/+ThFx52Qq4/aTwJceoXXanD0wJQfTR6GBH4SGf8hv36ou8WsCnD
	 Y0oU+pWRsIufTn/UKFB7/pBdnrOJF0mjQZFqmqNUH5E6DDOZJ75gz9LjRrxfY4aqXz
	 967i0uWIMqTYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908BFCA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705019358.31242.15563972113507256209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660716c70cf79aae91c61d8dac23d056dcebebfad203d8bbffaab3dd047e22bb
Date: Fri, 05 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757050193
