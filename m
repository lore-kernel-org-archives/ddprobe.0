Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB79286A7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766538834; cv=none; b=jyFQUXVatyFkg3mUJ7If/sV5RnMT0H9H4DTiMIBupTxQrGjqNjiIjV2Mh8WszUc+noVukI+Fe7co71AuLBgThvuZqYaDAzENaazKJl+/TjEhC1ucFU7vgKexxjD43iQBxpa8EcF/FJaeuHBDHzruNou173ZTGvmvByJFM5HzTIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766538834; c=relaxed/simple;
	bh=j7aiODVBN77a1GapP1XwNYo0QJZX2zIBsLeE/zgrnyA=;
	h=To:Subject:From:Message-Id:Date; b=hxHwFXykNKQRpmxNA0lM2RkTd67tJdFqoLK/agt1rzdo5CFoeOGdhIC7pGg6T8oDUqjCB2QXahyAieVJYK84uafeKN19m35ClI+sqMQxJYWv/19SI/wvqnTvkc+lxGMEg43tyfyEgZEt3EvCUTNDq74HnXKD4T1TLfuPTappR2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShUITotV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShUITotV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FB4C113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766538833;
	bh=j7aiODVBN77a1GapP1XwNYo0QJZX2zIBsLeE/zgrnyA=;
	h=To:Subject:From:Date:From;
	b=ShUITotVaWegdBHLUAcWwOo4gdg9aV1A6OulCCgIfyi3IVGADuJTC+8ECjp0h9fGe
	 j+BC9chhaX3YOp0JFpa4SI4eGAFfVRCNqdUskNkxLIPncCAkcRSBCZ712OSVhbPjzT
	 psFGDEdIACqgFmQMztW0qatvVu2crQ2rlVE7wO8J8mGaPvviw6se7E3Md4k00qE7Hw
	 thIScMXLENBbEoHy2Muz/w0ZNbEGlvPecZmiy70/SHV3jrHnUAbzLerNsebayO6v+A
	 7pWqBG7G/7A7MyoMdi9PAMqBEuwhEWTCGjI6e4h53Iay1Ag6sZesfTnZs53G6GKsn0
	 syTkRn7CZDdZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBCFE74904
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653883358.13951.17975799392653576299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701bef02db5b2529378e5d0941a821ad6cee94f47fb1d8e8da0c09a9e31df13b
Date: Wed, 24 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766538833
