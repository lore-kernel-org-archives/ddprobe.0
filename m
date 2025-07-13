Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285228615A
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752388194; cv=none; b=Tqt2lIZkMA0fLP7FxUB5o1WUJGNzUkF683g99Bs+xs7pvSvu14vaUatDNND1gTDDFycM7QMAZuaLf9DbAzfis/It9UxnvkEBnYhlvR77AgBRx1N8UE/GZjzS2IWyT9sUlPgj05J0MH4UBuqIRrwnZAmwdafJZ/r+iDRwWLPBs24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752388194; c=relaxed/simple;
	bh=R7PoTN0+d2+MbrjNA/TUuer/zJ/SHLg4f5R5/eErfTU=;
	h=To:Subject:From:Message-Id:Date; b=g8eZDn4ruyrMf0amhF92kjNp8SQRCvjsEEH2k/XshsiMh+pKvFjaBmL3AyKMcsYGtzkzIq2b0Lj9jeAnWaIfai2mCVgXIUi6FUPu42QrqFRfCEMrAK2CtoHF+rnz7kVJ7zHaocfEfWyfC9vKjajq4yQB4p47Po2PM+HHMahNjtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCDl/Df3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCDl/Df3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57F6C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752388193;
	bh=R7PoTN0+d2+MbrjNA/TUuer/zJ/SHLg4f5R5/eErfTU=;
	h=To:Subject:From:Date:From;
	b=XCDl/Df36OdPdzN87hQHUIAfZcqDONLcZaAzpCUknJ5Llos7P3xi1SO1oGQY+1Dpn
	 cKcYB/0jkgnDLaRlzit/vevtQI8kpxCVvBN9wGEmXJf3G+bmGO38MQvC5u/Jf61YWD
	 uJraquNilKABonUHMYkpPkCfvZ1+r5rcgkz7d1vdpv7tvnxn/2hgq/DwZlVm9gG3oS
	 +vhuKx/S2HgfopKO/+/PLuVJlryR4diW8W/Cv4u+z8IGn2RW9iyoiynUiPWDvGUWEI
	 T3TXwCjzvdwlcj2gKkYnac0z8+mcUEt2NzBurs4b2uFO1PbkaM994+cs0Nq8HZfLyA
	 FjubF1ZCsOAmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91899C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238819357.29758.15160935135652059008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54805d6254c9f57d59a7576e0f5529d6162974212773898228156cb5df88de95
Date: Sun, 13 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752388193
