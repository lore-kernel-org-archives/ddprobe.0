Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB8426E71E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768001034; cv=none; b=ELTs0DoGhQvsgEwTQJ1fdL9PFKuc6OiemBYl1yPYVN0Sb/QxEpeP8d50Q3e66PnmYNTuOAKSuv13Z8mbZ2Pf+m6b6e4EUgAMf9ucgFOPnqyqHRT/9yRwaZ/jtxAT2vG1BLCniCqXPvxnHdqSI2ScU1pgSNBTGHje5dnjr7wXfTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768001034; c=relaxed/simple;
	bh=71i7OLnYHAucP1k+uHUpnbWaseFdgoJ90vSeXIvvbZg=;
	h=To:Subject:From:Message-Id:Date; b=gV/iOm834IXIq/tUkf7NyijoqqkiqKMu6mfTxnaykJ8KDYxHEhacXO2F02fOT57t0cwxWdsU1EOmL48/kZ2kh01CR2OVySEDYVw/Tq1RRv2+UnKlwDsDOFRclZj9fBUoS5V1cb5zzlsPVgTGLSO1qYMQQ1nFv6p/3JExLRiZzPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICXVrfgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICXVrfgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC517C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768001033;
	bh=71i7OLnYHAucP1k+uHUpnbWaseFdgoJ90vSeXIvvbZg=;
	h=To:Subject:From:Date:From;
	b=ICXVrfgnpHJGjbobvdGUzurG+aJeaL7JK4vfxi0iUCqC+KYU+4ueJL5XMp1TcmmK9
	 C+584V22Dtq7ZcN5ijmjIEybbk7mNUe3LT49mWviA6wfiKLzi2Wy5PHJXa8nTP6ru0
	 AChw3y8AdTwWI0TQoW9SKiwCiU8K8luw6VhWe6zOPU7gjptWthR3DmG4tdfBtDeBzJ
	 mBQ7YYPgWoT6K2G5WXm7UEakiPYVX3mRLwMU8u38lHhuCtwk96efn3yDJP3PWrUiNN
	 Q72kY1x5uV9BY3jsReDYxxFD9x94DKjrdODGSRzLdetA2jxLMkGoF3UXP/8Pa2CCgH
	 mpTXaNGzc4Nqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A32D277C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800103358.32531.6148572205504616043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6566b9cafd0e54ad8e9934c5b26546bad3b48103e1895b03e217da3ce98645e0
Date: Fri, 09 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768001033
