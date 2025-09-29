Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CA92FFFBD
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759145393; cv=none; b=Z5zi7dF9iYuzmcRkJfcLRzKq9Vd0hgR4hdNrsADjS6XLmhV4TJVd7rBT1K7ADzHpBB7m0AyPZ0Kk0QQXXUNF4ThjmGYzzzNpUj4ghc0G0LaMnsdnYE/DDN20IB33aCzeWv/gIJH/gS2ga0yPfVx1+iBS62IXtRAMUL4A1wdqAOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759145393; c=relaxed/simple;
	bh=TW1fugo1zKDwdcCx/4taNivf7kgTYfCK/wxo3Zxo21g=;
	h=To:Subject:From:Message-Id:Date; b=UqehEp+QoDv2hivnJEbfwN+eInah59EwoMhTSUru8oVcanvcHryh4U0117X6ol1HFYiobq/XFG0IziTuIz6nVNX1GzD08jd2ZCrU1ugNPOQB1RIeZavhw/Q1584ku6BtsrBgSLbXXyQdsOUI6T0nVDKC+SoBCFvgsRz8Sm+UXIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLELqazX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLELqazX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB52C113D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759145393;
	bh=TW1fugo1zKDwdcCx/4taNivf7kgTYfCK/wxo3Zxo21g=;
	h=To:Subject:From:Date:From;
	b=uLELqazXktNyOQNfi3WIUBuxgWOJHymtmnj11LxbFFBoqU91/jU4S4wNumlBOWyGA
	 3R07K2fZ5XTgU+vrA/QIGOmfPdd+vZWtZNInQbSyJ15SGSYcOoJ0vU9whdwxcMroWu
	 LQAo+xCsuaiiop+QSRw5/4O8je6Sc1EVfMmnBRU1PWdaruTWijvDDmWrExnAsYsMZf
	 vRUuF8olhJ1q2/ezRzBK1i6DVziHgimRiepQ2nBJyJEK7asFxiwQl4Ltu38iN6U7VZ
	 EugBz6SYDrk1BLS09c/NAd485IIDVCkWqPdRB2pBgze9A+87qyosbz6wb0WWOAwGgd
	 7/nmbicS8Eang==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94198CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914539359.21844.12994353120520419539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694c0557ce62024286b23dcc173d168eac846eafd579b5fc8e887a38d18142be
Date: Mon, 29 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759145393
