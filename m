Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423D72AF04
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 11:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740309534; cv=none; b=oGniM/tb766kYnslxYptYegRNymvLTyGqvFF54ZSUFhOsbyyJCJWzMBIaSYbNGU/HzjQFtfkqaRz7Us9NSQZXLOFJVnTDv5dKlRkb3/xif+eLGUc+LyvUF9cRTb+4myttYyw+XI3Fvv57sBzkGFB/O+o3Phm9DKo04nucY7oGfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740309534; c=relaxed/simple;
	bh=YJsoZvMaEu/lwH2InfhLtDBIo7cLYlsjKjq86oMVebg=;
	h=To:Subject:From:Message-Id:Date; b=GW0pU9welTdB1gG0dgesBgVfcZKcvd/NZkTNmKrGoG1zQBGCYfG8IDxbKl7atvOEuZAmo4huo1k0z6wv1/dFPU7cREhSEwjC7VMIVO260MSg+0qtHqst64GZrI9717ns1EY85YEHhccy7GQV3vlIJVS/Vf2Eas9SF8xfy+0fm40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tz6zRh9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tz6zRh9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD539C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740309533;
	bh=YJsoZvMaEu/lwH2InfhLtDBIo7cLYlsjKjq86oMVebg=;
	h=To:Subject:From:Date:From;
	b=Tz6zRh9iQ/OCNZ2geohu/zMAqF9ajQe23+ap/iNAmuYI7hRFPXwOkZhTgzBy6nyjK
	 M+99CqZWqFixiqFE2gWqwrgVTdn/8MCXUiF48GSdSxkr9f3fI9xXv3pBPa3Mk33yQW
	 iZUy3RF4SXEf80m+PFyV3BWcTc4qti2q+jM9ky+nRRdOpn8r1EB2nk9+XIMAyzD3EP
	 Y1BYnrjjn7Q+Jp7WiFknpKivjveu5uWzZIyP4h3Rn1xs3zyfFfQI+9oCdhIXBX/Wuw
	 wMuJBEbo59QUOHyiULwNlW3zAr8oXRePwpzPOM1S6B7SWXXG1XbuEayZhxMhSm3kZw
	 EXZSpVlPfcbzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C27C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 11:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174030953360.27648.17785329686259476761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658787279be0e1945899fb4c8560072820808fbff3740a83601966b32831566c
Date: Sun, 23 Feb 2025 11:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740309533
