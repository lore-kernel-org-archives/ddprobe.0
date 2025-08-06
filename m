Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1763E28B7D6
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754483994; cv=none; b=pCP1cHJoon8r/qgmP29Lcbov43NnpCbuOWj6P/EhpRpuTsoO/JUGlNhQLAFWaSdU2aM9hNrPvUkZRTxbJ4llaQQUkNMI1MbIgNm/QuWNUsu/VhNrrGb8L2aK1zlGpfUMacVzldzPc5E+XbcB1rLBoR/mwwtBFxQ4ypq3hvYlvqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754483994; c=relaxed/simple;
	bh=6WYmEPvcmFcGYr1qeGGZ1i3RjVlNDVBzgsvx2Gznsio=;
	h=To:Subject:From:Message-Id:Date; b=qB1UmoLbnccZ+VsU5w18V0tRIpbQ4KtdvVxlKU6qH16TglzomRMn2tjmoU3i7WKAwadff6nznqhG9NSegEW/7wE9PWlqB+eebHfMW92teRiAfGmmMN7bdHEGbm9BVH0lPg3I77R9r0bmcRuWZq+/dU0M8YISJA2//CNPQvvlRJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeycrwoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeycrwoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE45C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754483993;
	bh=6WYmEPvcmFcGYr1qeGGZ1i3RjVlNDVBzgsvx2Gznsio=;
	h=To:Subject:From:Date:From;
	b=SeycrwoSTLw8cQU1M8VTESzCD6hw+IfyNrre044okpOqSZtWRN1FjrSoQiZgTZcS2
	 0DirNsofiWsHkPH6dOpm/ox9gHR/haHdfl7EP+bYeScDOgOgimOSVwRU99MTNiwWJ7
	 dvEhloWPA4PN1dYL2WuYrXJBo9zAxF1d41P075RMIXB2Wca1IKf4VNLIvPuKVIkudw
	 SUAMBbPFH4FyTH9Q5A/YiarT0+8xKfQD+B2VtAkNizDr80aDAftKYY6YWMVh9tkfeP
	 QT4nNgqnHwt/ofB47iVEhS+NICxGHUcYPjeaKG7AuPlVnJ6Jht1CW2Az3SCcghh1+8
	 gxzVlrh5z80VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F0C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448399357.29472.12861656476954399487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1444803f34cebbd11a3c3c0b694592211a49c095c6423a940b77a4d34ce26ca9
Date: Wed, 06 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754483993
