Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC8B299A8F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771317294; cv=none; b=AsxNr4OE+yNufG8R94Vx1E5TfYAUMzgRwMXAPiKUwZqBdJ4FATnYAN7wtcKBwmdZuEnIEFwWqfm/qfdZyyOvo4DJ7XhuK/0aXWymGvSfrQ//CJnfj1gCKvvr9fEAuEMSPSnhvIFouyebZEcWtPR2ZOVo8RfGJhATdkXD6NLwrgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771317294; c=relaxed/simple;
	bh=cUqKTrk263ID/24+rpSkjWodUhDUtTOavBB2VwJt7SU=;
	h=To:Subject:From:Message-Id:Date; b=FNS4aMJJ7SKS2cV/XHswxk1XZSxMZqJKFt4yu1igbpUGxHKgzBDJ07f0RNZkMZ7cDar2n3pnqpktm+oiwTG0RYMf4efpnv38DGKxfEd0xjP1ZHcioRzhmNd9Tn/Au9VdpFM9YaCPjFqO6YfrUOVkHePzI12bcJoHVxoQVi4paFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBPmZwzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBPmZwzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0016C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771317293;
	bh=cUqKTrk263ID/24+rpSkjWodUhDUtTOavBB2VwJt7SU=;
	h=To:Subject:From:Date:From;
	b=ZBPmZwzMXLgyFmc6sVN/Ih8dJ++nIfizVLRWyA/HnSQg3rhcBZWyak4wOHlmACede
	 nJn8XV4L+PXbdOCbu/fTr4xL202QkByFRLYk01oTrZ7prZizFJulTdQRliLBsCZ7iv
	 ozzJWDNInKQ+NGFYT0L/+QTz0n/W2o+NwL8floPmbNiPmu1FJhVreC7qJVVPE8RqLA
	 CKcSXsk7xuF77dnEduplRxppgS5DA69TiS+y7K6Wpq7utEwj3mtP27gTdc12gDKR11
	 RmNGi9Fb71Sf+s07rXNMDMJczNJ//kxwnd0Arr2XOdDXk5AfFIDHLgoO5TDkhJ7cje
	 UYZO1D6F7l8DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DB2E68143
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131729358.1552.11115501840952569998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6f856e9a07a36fb89704c53986646c71ae1ac43e36382e6584acb6e64b4269
Date: Tue, 17 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771317293
