Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D093451C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786182034; cv=none; b=foqYdyx5UZnvlxNC7G6SwYvf3NudqMhXEDshpbLVwri6aTW6Zkp5O4BY2pwz1mgKJ/wJaKAFTFulpn8KN2qCKVKRJtY8jmYBZvPoVVYlifgMuL/zIngHnzM23QC4j/Z6Ls14YIYHOMGnD61eQkre60IY2Rx2Z9vlOl4n2GI0Dm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786182034; c=relaxed/simple;
	bh=swjp9L5leoiwP9K5ouL6H2ind9XXIHEzDCsK1VZY+3I=;
	h=To:Subject:From:Message-Id:Date; b=que3TFXtzVqGxNP5jbaQqYaq5/p2i+rIVmTwDksC9XpQ/Zocdyo9uIV1jTYh0LU6D3nhge+A4ktih6bmDzIzZ3Kxki1e4ncsdt53f+3nwOfbEi/qR3Epn49MjAbjtvEO9w+8H/q74SwCJ+VsyI126ov0FL4vi2qWhGm3U3I/9Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KufK0Tq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KufK0Tq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31B9C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786182033;
	bh=swjp9L5leoiwP9K5ouL6H2ind9XXIHEzDCsK1VZY+3I=;
	h=To:Subject:From:Date:From;
	b=KufK0Tq8WxBMJ2rie0FF2rUK5hXtGMHmDkyTfEZEUZCmT2PWFPoiDaAcWT2A/MOSv
	 A+XZxWRmC0JbzdL5XnIGa6ww+yQ75fcJYEprTDVadsN6y0ekAqct5w2gq07kptdBYI
	 rPcjOtpRbrMpiVTfJNlZnRKaq1iOc3Rd88fTCynBRLpvbDexAMWYTn0cM1pkCOyAVR
	 5tZE11bcjCXLmW3wApAb5WbQG246TIdMwIxPD8Kwi9xQsaTBM4NCvYC2D+Ois6FwiJ
	 2b9U4lzIgpFBD2mB5J+opElAp9zrfanmgc0r5sPZwns5rsbyX352qhNlNXDPg4z2Um
	 77dlHk6azui2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE244C5AD2B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618203370.10384.134379556627029886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a9d230397bb46e7bdb5a0d1fc6469072ae989668cbb168f5b4ad773facac36
Date: Sat, 08 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786182033
