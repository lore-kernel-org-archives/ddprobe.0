Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5911A3145
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748316594; cv=none; b=aHvQf9HTys+T/J4ZOTtQlFldZIEr/IXp4i8ajnsuikP1wUYTHJiQiAy/L+qxX2LXICegSjqT22KTFCatz2uSomjIfHtIwUMYXCuu9YIvjOcYQesfRs78C7tgJ6Hn9pTkrwmEwHqrqf5oiLii+Z0pxQBxhPybXQFMgjK9xbGQHQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748316594; c=relaxed/simple;
	bh=+hx+B950l4wr80LCPbesw5HR3a/bTniV1prJGn8iwB8=;
	h=To:Subject:From:Message-Id:Date; b=CdvjIyipd2XCFLZCc2BmQwGzC1l2OUgDSn1Jsj2N4SG+OcnfWvmmcCmHY9AODVfKOEXcC1ZapDRLKOxAMye8+JoroiEN0IKb1hM2msn2TvI1EpN85zQNHPZWdZXkAsngUbND1rd3DXbwGTIXSXU+gtWLymDTPkKhddbROWiZgxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTkUIAT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTkUIAT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4484C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748316593;
	bh=+hx+B950l4wr80LCPbesw5HR3a/bTniV1prJGn8iwB8=;
	h=To:Subject:From:Date:From;
	b=mTkUIAT8J9UjhNm5dST8XCx739ZZRPGEBwEE70bYEB7QoRYmDSlGhjLth9aIeXg/Y
	 I80CqbQVSdDeftbT7ND412VDXuM/m9TnNf7HXa+b632B6trSqNpTamwi1r/HPgh4l7
	 WssFlAXdZ/98GjYB6H0eQWPElFN8wCOJje+WPWzEzWayLIYjCN5DAwZIAAPOJ6kTXP
	 BH8rHkALw7UxPV8U625MYiR+7E+oaD/rQ32hXh+8WqgOg3NAinDlVfEubxW12DD7L8
	 X1LWOzHYbYxzBuJUJNkcQQC6U3POG4LOsXrBH7h0OHjlrbFjYqGtx3I1rs4CmuyeqR
	 EQHcF47C+QWbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBEC5AE59
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831659358.9731.6472521870849281830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee2c8e5d48cc37263e26c8b09fc4a99077814dd038503c04989d7ea5dd74003
Date: Tue, 27 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748316593
