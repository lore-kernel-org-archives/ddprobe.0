Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3755C41DE11
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790335234; cv=none; b=S+43xaapUP/uHoXlFBhk7BcOYHSbQ4JFei8hcCXTzFxvXt6WNK/bdaCRKfdSW/0jJyl4eVNGBYZUsinB0w7qoBBmoKeVnGkETF5N0J9vs84Cc4jCvM/2/wHifX+J/qwPNfJJ/qVf1T+Qv431jAnzI06EwEMwtptGveglyXKWSGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790335234; c=relaxed/simple;
	bh=HbHB2skzCT5X76JbMEul6TVdOKiua7hhApUdNY4qcLU=;
	h=To:Subject:From:Message-Id:Date; b=iJJJEIujQM0hVietH8DTeRsu7CaD6EDL41EOAlNEpdbHrzGq2gdXHny3LMMAMCXD3b6LEMQO3pR5kjcK8upKNcuY1ezwJTTVjTKVTka570rWVvlS7RsMm+LtvxLNwFNkrWJqnJXWKZGvgPkBcOHnDcRlNHvEeeEjltHH0rqCAlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWn6iZA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWn6iZA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF55C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790335233;
	bh=HbHB2skzCT5X76JbMEul6TVdOKiua7hhApUdNY4qcLU=;
	h=To:Subject:From:Date:From;
	b=CWn6iZA28XPXrl9use1uVf4FnDLPcdpZ5UCDmOlJdr5nLrLWAviyiSOjVZiihPDW+
	 /JlXFVaziSEZjJfs2YmgJujWusU7J76TEJUppYT9XO5b0Ifjl1o8PqasWFChuoLvsF
	 yryskfqSj8CFakLsgaADf+RxJjxWMdvbwn+gO4avmYbTf4Rd//zRYsan3f0El4JNaP
	 NT9aoL1yCN4UsQrXUlgoclecKzwNtfs8c2p4eoRACz38blTpRv4wxNHjLLBqs2u6bJ
	 1bAVqQ3M5MHfFf1FR+9BwXZHHCSsDqCQVM5qpYxfvddNBtEW0C7aKd+9wreEGt3MN9
	 o7/EkYgpBkbtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF07C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033523369.5830.2668490887964485613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3bfd8ab6e69cd58a1f2ebb92a04a6e263106f84d992bcc3cd6fa2254b702573
Date: Fri, 25 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790335233
