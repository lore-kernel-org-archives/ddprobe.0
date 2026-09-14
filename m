Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5747A39A803
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789420834; cv=none; b=bITQ38nrgKm25X07whmK7K45ecZlDHHcuJZBPQnazh8ssEL0qcytF44ViQxEEThT6rAuXp92PEGOa6vLCy3JbfXmnseqIVVi4B/Ay1CXt+b/w08R5x7f8dQTczHWcaBFBroB26u6teDPLsY3Vf3oJpJwxzM+amRqu2DYQWd1yU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789420834; c=relaxed/simple;
	bh=d55oWKNz8QXLwvMhshL/sl4xG069m74d28Qsiue0lBw=;
	h=To:Subject:From:Message-Id:Date; b=a4DdNLhyxq1Tmyn3p3AZvoKqYIrare74v67VxWZYryketwTWzhTllLwNNIYeYH2mRKDSNbkl93f6/+SnEdZlCKZlxhMsil2fNJuesRAy5CZC45sHPdk3eJUikszpWv3ETxhLFmC/Kcc/V3zfZ+x5gmdbejRRHQyF9cS+N47KJ3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKY7IvNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKY7IvNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB66BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789420833;
	bh=d55oWKNz8QXLwvMhshL/sl4xG069m74d28Qsiue0lBw=;
	h=To:Subject:From:Date:From;
	b=aKY7IvNGWQVIUytrygCDoMMBSA6wvFp0bqg7OYqhnlq9CBOXgRrRTOMf1NfIztMoq
	 TL5G2ZUIaN/8QyQoyr1eoT3PavZDKrdeLMp2tBFJvuzZ6SIaZaAL8G7Oqfaxo3SwEV
	 lw2uZv3NljOpp6+VDuG6K1wBgZOh5J+m+OmG7GS9RvmJLwIoudIiU2xQWZd0CNIfPd
	 54u5Tj+257CtXonL/v9q+CnQ4A3yNiEJBoeIsbBfQXJ0U0Jctg076f7qc74yyClQVz
	 sQCpUSjM8LWhmQQuuRHTAG9pLn40QGAF1P2JklFiJfoaDViIuvZr6rF3Rt1GsCFRNV
	 eLWF0o2w0xucA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3342C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942083372.485.13421126078957250052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022c61f40ecb02a8785bd3b23d8f7df7ec2fa80062204a25c99f87ab930deba9
Date: Mon, 14 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789420833
