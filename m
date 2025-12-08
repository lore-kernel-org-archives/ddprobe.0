Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E6515624B
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765223574; cv=none; b=gw1oSFZ/ORjaeJYYbPZQL44TXPM47SWSACU4g6Q7M9+c6ZqrSXm1pQl131QRsSQDdE824iKf509uMtVX6p9lVzo3SgOqUqlNH/R24O4OY7HoItrtw8LHcvJPjTDTK+/FrfgLzP63vDaK0YTIBuXxzfbTM9wFPQNO8dnqNPNE97E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765223574; c=relaxed/simple;
	bh=gBPCgFWArZLEDMUmbmWx0KlbdJ1rlvUqE59CMjyt1jY=;
	h=To:Subject:From:Message-Id:Date; b=qUsiTppBTuO+bPrpA/UqK7kvuW5K+g74kv/PGwibzN4IgANTBcfouL+7s/t9RwuEB7oYGPR8sC3vgC533pBzK2MJuKbXogtDzJ2zmcofhtY7m+2/rxwmeupZqBJM6k++enXiGJjiByk0NlKz84VGiXh/KZCnumlqVWEJZjSj90Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPLj93ge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPLj93ge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8282C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765223573;
	bh=gBPCgFWArZLEDMUmbmWx0KlbdJ1rlvUqE59CMjyt1jY=;
	h=To:Subject:From:Date:From;
	b=qPLj93ge4qGmS3SZdOYtDCyI4D9CIfKpLyZwKARaJ/b0E4RYdl0vxjb6Z4qOL8/Ui
	 KsUvm7xfjOd4yzBQqYL8WcsvfguI7VFPxaB9/F+wJxthuk3wWOgVcrnjkOAGD321NE
	 XqlAxLfDuF9aLJZ7OxMICddrKilKo9ijugYDfMZ6Id/ooSpNXmEitJp4CeoU3LKSnq
	 HSrSZxJoouvY/me8POhWwDLf4KGahk3jKW2X8YGoiAMC3OG3D6n26oeMEvvDm8aJKG
	 1r+CIy/9HjrQzsZEjP1KyCQ8HwACzdHa8y5zP+OQskITnSKFgGhJZstZlgBI3fg4kn
	 prp0Q3jsGoXLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94626D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522357359.31926.8327322245434670054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d289e96f5be7f647ea81c4833ae7ce67c328ec4aff5ab8723852c708592a36b3
Date: Mon, 08 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765223573
