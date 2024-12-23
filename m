Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE35EEB5
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734938154; cv=none; b=m9Tyf7aIJuA2gKCFnSC4rIZ6/LnIYaTp18jMUMdQSmx4F9cAChhrmwCiWHn7I1Zf5uqGaZPeRyWJ308xSQ2SUD8jHUGvFDmcAn6wMsNI/8ktWPiQGmPZxoHh1zXSIS4+JZPQXdypqrm2EiX5vd508VQUlWczfeeODLzMc71K8X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734938154; c=relaxed/simple;
	bh=lQK9joTuvW/j9s7FkVVmM1uP9wXhZbsOJ+x3e8Kgb8E=;
	h=To:Subject:From:Message-Id:Date; b=cxclRWKggZp4LhR+rIg2aXBitGQDdQ6qAlA1jnDk5cWwOLTLCQMkcNROGQFC97dx6fQZ2M7glhXWe0afl4Q5G64gh/rlw+EUo8fYuGHEDVob1gY1CS5CTjXezqz8AI5X8CVzli97Hs+rcgn60yTLJEIXsS3jSkQxdZT6NGs1o8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjegoMQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjegoMQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F59C4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734938153;
	bh=lQK9joTuvW/j9s7FkVVmM1uP9wXhZbsOJ+x3e8Kgb8E=;
	h=To:Subject:From:Date:From;
	b=WjegoMQzEUPjMIsk13BaiE5Y6gaHYOKgNGFGH/0RqEiXSixVZk2se8ihip6qlvDG4
	 c9tYilMEZScA0dmgA9z6Za7tsYVTb8vtcbzhTfty3LHT0zeRlDoyJXTukaqaNlWsNi
	 3GSQZPc1P8aGmJ2WNAq5luhynz4bz+okJlIzKCdiU4BG5crp3EIlsOaPXpUKuusEiA
	 sFdKUyFuC3vsoE3Yjg5XQe3lMUAvGSYQHN6i0HcicFRlA5rKA1JVAuaZ9he49DUBDo
	 Np9nAXmKvdfhgmGIUmmVCfCWLZ7GhdkaYfY5fhM3/e5BuM5U/BkiM72ta9kfLTXgy+
	 W8dInStsnOYHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAB5E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173493815360.12655.6279810461101265550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e5b9714fdfdabd095042f1c9f884791a1977c78b0a17d2eb361c9aa7fbdbb6
Date: Mon, 23 Dec 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734938153
