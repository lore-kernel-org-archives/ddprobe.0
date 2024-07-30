Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8EF18A6A9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722363954; cv=none; b=DlrxhV78O9yQDPIy0q592Cgs8dZSJs2GNawYA5vdOpLEuM42E57KzDeTfxJSHxixO3N11YxevP0/C4/inWqitTg0k193t05SwTIQIrp/RQs14MGKZkP/caNcHdzqBBGTigTl/jlNqomjzUU4CphTFx1lXT/BtNVXJ1CipVrQXpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722363954; c=relaxed/simple;
	bh=fUe8BTlJBQtjFNclFgoD65F9zESfTmn6ASpRHesBNgQ=;
	h=To:Subject:From:Message-Id:Date; b=Qkqyd7DdXyznqMjv1HXM1ZZEPpDidIhf4/EHZXquJDwhezIRdWHRJ6lXDslrToTwFeQh8Ve1xxRU25+sbcdFZ5xPmf1U38F3f9YoQgCr2NZjBASkH5ywtphA4/E9Fyg1oDvULGaIvWIqIEWNgRXuLJT8z6mjbNRbYgKCSvHWjbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwMkvIhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwMkvIhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A470FC32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722363953;
	bh=fUe8BTlJBQtjFNclFgoD65F9zESfTmn6ASpRHesBNgQ=;
	h=To:Subject:From:Date:From;
	b=TwMkvIhjo/ZNXmi3sSMz6lk7lAT7b5GMmV6GT12vzQw+l7+ge4JR7vhD3dqITJQT9
	 VkYXO7gPItuph4D7OEPY55lA+neGLHkui3h6LZgw+sf0fb2hiiTet2dQV7Wn2MvN7/
	 MJl2dnjGSejzrWMzXOKKUp08mo+OvOmxO1vU2e7iRAQyEXAKTyf00s2IdgObRsuz9F
	 5KxV6YbU2WlLDCycGT6QZomnwGKJG9Bi9L7FygU7LGmvWTTG72hAcvm3R/r8Rl3GMT
	 rb8ujAB5FmSqHe2nMTO8LSCMgTx2pFqR8r4LZ5mgmPelhShhC/TQFLGezN5ox71tJD
	 98VNRDR7FIfdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A16C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172236395359.8376.8569535287512094225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7805926e20e22448a46f722a4b68825a96b86f9a45d84044ca59e112cc28c0
Date: Tue, 30 Jul 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722363953
