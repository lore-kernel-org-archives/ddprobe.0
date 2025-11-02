Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197651C831A
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762098594; cv=none; b=MOojRokkXAq42hbA6cUCmCVfdOgf/lFX2iOHHJO/HEiCryV8AoGYRHWIW88lWWQYOpFExr43As5Lg3enW2IOBRmW/RsKBriCZiGssooduMeYD+zjA3J67VJy2W2TPoc8jQf4/YjscwugkphHCS489FodJlLG5nWgoaOB/dvSvY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762098594; c=relaxed/simple;
	bh=5SI49HZoN9AycrhxIzJlJfG5VU7UC/DoPaWDlB5+cDw=;
	h=To:Subject:From:Message-Id:Date; b=Ik6/OvMLRSYJWFP5meqcglGbUhkkNJvMdNKhyfh4uzy6G7ihesThHCquPPC3ewn+/YSPsmUvGnTGcc5EVdxYJt3fC3eyvFN2NMq8K3haHZtea5ofyHJXYKeZn1O60tcN3Xl6I/oXPbLZvgG/ngMR39Hqw2NFCl3rB5VSl2+0bBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWPrQH4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWPrQH4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE831C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762098593;
	bh=5SI49HZoN9AycrhxIzJlJfG5VU7UC/DoPaWDlB5+cDw=;
	h=To:Subject:From:Date:From;
	b=rWPrQH4UW2xRRdVlpvO9wn51o5w6Zu4uh+BtQH9/S1tF1YMTUxlD+tZ9YerClECUS
	 pUewZrBBFvhc0JIIF+D1dQDw41GT8tDdNyYvaBEsAWHF8tM8gAafOhYuhkschma+U1
	 DDz7a2qJnr2DOTNFTmAmQf4IVSybaiOjDV/RMmYXdzItfwNOtIDlaCrARV+HDYybeC
	 E6BIqM0Khd2FNP86W/Xm6PsfDt3yvTKCI/qzlW8UorF3vxkzC0VgPGmDTknAUuc01F
	 GLvBM++D8g06x6DFg70bzjz9bZrO2UMmwuxMAn1prthX/yQodFF67+wTgMJFlkfQYM
	 iciOsItv2UoEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C1CCCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209859367.2156.15312165925472897013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebdb3d628fe3e365dc00a358d7c5fd48e3f471378d0cbd23c4f4059ed25ecd8e
Date: Sun, 02 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762098593
