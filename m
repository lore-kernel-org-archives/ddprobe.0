Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DBE142E85
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 12:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714996943; cv=none; b=kCGHnt4+jpqv/ScA0OuKFJUU+XDQV5n2HNM5+vw+T7rAh7ejhg/JyoVwMExDooquk4fE2v/4HoR0DQ4MVxJuHBcHkiSNovDbeU92b7tVUtau4flXoPrk/Kz0az7YacR7M27iXdeUoLQ2wqeNBNJ9FopwMz5/PMKlHWG+yjitPRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714996943; c=relaxed/simple;
	bh=FZZWCUiAAEikXXxYwxQGjDEV1X9ahzsserBFIZcbno8=;
	h=To:Subject:From:Message-Id:Date; b=PIL1ROkt/jdJYJvLOKCWelX9XuOFetSX0VfgOt139jNsrbvuMHqLq8o6ZIJYydIIjRDsk+dwi14ZUEWffpS3+/h8ijxmcBjinObKQT/QlWmOWEb2oXWgKDlzKV3ixFoj27jIi1pkXZSmjIwoAZcThvpvsLEnW3R7xwMCeLtRyJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuR89lp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuR89lp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E098AC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714996942;
	bh=FZZWCUiAAEikXXxYwxQGjDEV1X9ahzsserBFIZcbno8=;
	h=To:Subject:From:Date:From;
	b=TuR89lp22OULKcgLjUIqxhJ/BeOZfIHYkTo/E5cWMZMpoIySubWJe+ASeM8OQQL6a
	 Q9HU6sRqQy31B06aL0u9wKcRbzJLACJE5W+SKR7CmMdUZ/tA10KePJZlvATi+SIoq1
	 a+vpCh1pRmkiKoWPi+F3W3ksrDO2PDBpB2Iu8hZDXPzdsmlkpSSstlp9v9Nkndjje6
	 XEoUj8PW/J0tmyAw2TqBNmtMoe1q2WdkyR5lDR8dtJj+7actDHZnGnaMdHK9OzOezX
	 wGtCLOFPL8gCBmHZhNpLrW9TNEaetXkKKwLgjzHbFcZTNBl26j/sUEnSlJuvZq1rPV
	 +Asc5ro3GrUXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C689EC10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171499694280.28141.10509242809409887595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258d1c60cc08d64cc19f42f28fe62e0b6631c45c2baf566b73c291b5cc3023f0
Date: Mon, 06 May 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714996942
