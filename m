Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F27020C463
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765527174; cv=none; b=IE1IuKt1ZQfoCAd9iUc/tSy2JJ1wLvma6sOGOt6cd+HDLyyxwM1JP9+/vmiQWId/mrah51anyuieCzoRzq1GOXRC4gpwWFtB7Sv43fvwIMbc68GOkeUZ7qOBA8fdEnE80Kn0TaaA7DmU9meSogjHUGdIhKSc48NMnVBcPyhPOLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765527174; c=relaxed/simple;
	bh=ST8umYGCeBMxTolTLywCjXmnI6L1y92oj2cJiHokiro=;
	h=To:Subject:From:Message-Id:Date; b=LGChF4ztWA+lyjsMs8DqVsmQFcfEv+9g1K9lgfTASBm2whantOdrVBlnu9TPm3LuNbT9hhqs8CMEIEBNipBToSj4zowwkV0MHMXFx+k+EsNKjacLF+iHaEZ3EuvLoXcrS5UEk64t0Hye/VjGqoiP6IwQoe61HVGOCffxAk6uLVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ej7KM4xC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ej7KM4xC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A485EC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765527173;
	bh=ST8umYGCeBMxTolTLywCjXmnI6L1y92oj2cJiHokiro=;
	h=To:Subject:From:Date:From;
	b=Ej7KM4xCl73QaT/GGJ+MgVqz0YT+3i6aIeAnyWripH0zVQRed9ILijw6fI+cjFZSF
	 KrCzijaA12AnyDTZXlQXIbjHG4ZukRJ4yjb4Bql/sqwfPpG8XozLdfup2BaCYMI3ZV
	 0vD5I2AzqotcakciRp2RabSK3JpSpE8bz0PYw1d9GH4mTFNeDAKomLLZVgvSR5f2Hg
	 LKCoxqKu+5Ycyr88ut1f9Dt0v/gPwKiF34RPkizgIY1TJNnW68ho92sEIrrxnX3u+R
	 +Ciypob3rR4uMxdcOYy01jA+tP/lstpwJJ/OhJo63GHnA0z1UX3kr8qNpUjh9yn+ot
	 RtLuaXM0Py7Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CEAD44144
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552717359.10678.6785441571436196152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33cc2b4b21d7583d1c038647a32a7ef65116f8491ea9717b4e77dd351bd9caf4
Date: Fri, 12 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765527173
