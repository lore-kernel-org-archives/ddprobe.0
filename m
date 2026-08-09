Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B341187346
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786245034; cv=none; b=snwXE2Cr6HC2RAmmzfYYDSyqJ1xtHj05mW3ZWr3UiVETdZCuT5m5UgeNZDnu43MC1vYm9NANP/1jBWuqC3oleSYvAWty4aBSJMeirywRrVD64/eso6o2/IjJSC91bzidRgFU38mmJrdlc9235EFgZIH606p1qQEfvrLtrjqP5cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786245034; c=relaxed/simple;
	bh=f4tKfXImGkkVtTlXAgfuCDBaxgjfoFLD2c0YxqtIs6Q=;
	h=To:Subject:From:Message-Id:Date; b=Wq/H4XtRoNO4tNgyzjE1QTVpMqs033ytTpEJNrxnb3EBEsdryTwE41EpCljfUhwq5tdyQ8rIGLS16662MOUoda2+VpeRR+U3+YLFqJ/DihCPQNmdMLiKpWFg3g2iXapM4IuX5yw9xR7Ux7App3wFUIIlF1X8rcuSTAn52sMZU6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQiFYcw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQiFYcw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8027C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786245033;
	bh=f4tKfXImGkkVtTlXAgfuCDBaxgjfoFLD2c0YxqtIs6Q=;
	h=To:Subject:From:Date:From;
	b=lQiFYcw76K2JcxhFhhxoz5RAVFZEB12SbMphLxiFjwtp3l/q8wxO+pZW4TxEyAoom
	 hCAZ4DU7PANinbzaN0kTikV5XdtcGZs8TBu+zF+unBO/I5kjutoGquraZDFv7Uxavu
	 +r9a9ay3W0y9e1SoBJ8QcAbYhrs1PJHxGY7qaTG2UWS/YWnJOvUTzMu6/1ibvopCV9
	 ID3QGEEKTTozbZ91iUcNgY2N1kWb5YRAEWirWjr+C2duyYEDaicaFU2Ti2aPjnJDPd
	 KnICDGFqyCNhECCOz7FdfVhamS79apWAKqfDQEgzJVyIPdc/kkOR3UayJUqIEeUdGK
	 qQjcC35GQ5hpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEC3C5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624503368.18951.15369346926503524703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4b427a00faad598fa2ba04bb400a045eeac5a9adb6292ea62e1432bf4681fb
Date: Sun, 09 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786245033
