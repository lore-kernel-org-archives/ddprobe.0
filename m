Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046B41391
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711369697; cv=none; b=KXkDLF1mu03RCiXv7n9Pc7SbqzxgVJcJaTZqVRG0lyCCbfaA0M1LilNhPs1xivZYoypoWXIfkCSNY2ZMXt3v9LpdM+gFYdyBE9qdDS/zodE4NWyz5udMuJKTpu+RRHsP07kL8qpckGVKg5s68nI6i39xHCsMg+DEX0JP0kzk7ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711369697; c=relaxed/simple;
	bh=VyLNp9TWzM06S5ZDUyulsNN+atUm8kYjpPPB4j44UZs=;
	h=To:Subject:From:Message-Id:Date; b=X1LQ5aSkOfYzjwbwbAUXLkIvBRh5yKG/At1dz3V9MEq6dJI7gW1BC9c2r0SNK/IpnECPXrCHl/sfTaRurKy8cxnudWcb/b25VMK/dUfKxUaPcHmtGx8OSciDN8pZaL0YsJIBMov39mjUasuUv4i6xfHcmfgcKBfACFeb5gvu62Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUOKenje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUOKenje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D5C0C43390
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711369696;
	bh=VyLNp9TWzM06S5ZDUyulsNN+atUm8kYjpPPB4j44UZs=;
	h=To:Subject:From:Date:From;
	b=hUOKenjeDP9A71m9VExlviV3xpvP5Jdrq/UfYRfit22KDlR6S0EvM+tg2nVh6X2Im
	 SbwjL4C7yTSTbkETC+KsRQ3nOpfc1VTB6Yp2R4Dv/Um9FfIJEZzY5mdGg2TT+revJ+
	 AcXIr98cBN7K1W7WqNNrMclSfW/efspfAkB1TvxoN7w2UPTzA5u1natCf2HoCJPPV6
	 SskX/AIzzJxU9cLlecrGqnXHzp099isJuthRjK9AE7Y8oD2Muq3tlaBLyMnRojOH+8
	 xNF0FW9XUAa6yriQAh5kaOSnRHrinLAsR2WL51cxHSAbezLv9DiT+PiSUhxGE06YAV
	 YMGU9D1Q5c1rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67141C54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171136969640.21385.136801669289507493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb90916272befc08ed71bf269e49d9d4204ed3ea2731318936b1ba7c06672e02
Date: Mon, 25 Mar 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711369696
