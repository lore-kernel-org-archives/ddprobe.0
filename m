Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2555F394496
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776067054; cv=none; b=jagoW1x5WwmXT/NoqpGKZ33ck5wj3uufFPzKBn2oqACQFUlQErbnZTikAbOuq9THVty3ho3Wbi8vwSqtBmwHZ8ugwD/5cPalikEkIppiqKVBsgE3KA4F7mXtu8Hte5KPsXiVFkhEu9bMsvqJIFtqU8x+VDT6oqaStD6RsUs3mkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776067054; c=relaxed/simple;
	bh=UNvWDjhYelDZNwtOpJBmlucwZ0g6+1SVAlBm03hi9Nc=;
	h=To:Subject:From:Message-Id:Date; b=C+hQve9SqlGChf1HK54BYk7i2B4kPfiw7TwflE1Qzls7NqkCy1K4RKI46O0SIcFGAofbx3csY+wToTiE/c1yowQgQJLX3M4YXoEQMqOb31PiIU5lQckx5LfB4GjknCjLLK7iedRBHkd3r9cZoBa9zzqk9Cyg65Oh51hzIGpeBx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBSthZD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBSthZD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9239C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776067053;
	bh=UNvWDjhYelDZNwtOpJBmlucwZ0g6+1SVAlBm03hi9Nc=;
	h=To:Subject:From:Date:From;
	b=mBSthZD4UNVNbBECan/++5uDau7OOF14H0iPe9a+erR+BEbD4EmxKaV6YAz2Np04W
	 phs8eQVcsQHMgeJ1VsvMu/+BjKLT3cbsW3a2PBk8q0PKxcUvTxFwEizbUJSiaL6SE9
	 NHtvR3G25I7ulsqM2yE7L4uL5WhnMNlrrFTU7lRFMicdUgfm1vSNpZFYW7RdEP8UNN
	 GBfe7MTJOJ1Hw5amz3oPyNh1cQG63E8MzwUx38qFbB50UkiwHzA2sVDCaX1Rilw1P8
	 +qfbzvCeHIIe0fj31YcQJSAKxXw/Z79ljuf5blN2tAz7XA8AKn9ud/KawvpYHK6fYa
	 hUKhFyoI6/TDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB022EBFD0A
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606705369.30612.10139688169104187872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6fec5f276a08e26f6ec2fbfd65df6d744789e20818b5b2b2177ae25bc22a11
Date: Mon, 13 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776067053
