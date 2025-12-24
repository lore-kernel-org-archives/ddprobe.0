Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5DB32AAB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766571234; cv=none; b=FtbpvL2xdfJ5nWC794fOV5wcBxR0Mr3L47fxs1T0C/zAR83dg09rz5pcSy2fq7xC82GFGvlnGHA1uX87qMp9VzScbMrgAlzCKiWEuXmaN1EPNQ2MOqPK2CZ1sWbaL2hrqO4JxiigQCYJrhObjawFRVe0jYgVaaRewi+//8ab/Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766571234; c=relaxed/simple;
	bh=0BjsVajLmM6U0Bf9T2ibVwaBdTjb6T75OwcvWKTnv3g=;
	h=To:Subject:From:Message-Id:Date; b=mG4RTUjbyvX4iGfM61ynoLhApMXXJVCPLwQqykIERnWKPwJGXwnoFALttUUvpph/VVHvHV70rDevcgKkzxOEuFNsocaNj8PB+Ffrm5sNteDpFxLb8PC+3cxmUqvYWb6wi4fURR5Yc1rYZXtEtH2iRJF5HwL/S1BOd0Zss4jReEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlDz1Sts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlDz1Sts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF15C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766571233;
	bh=0BjsVajLmM6U0Bf9T2ibVwaBdTjb6T75OwcvWKTnv3g=;
	h=To:Subject:From:Date:From;
	b=QlDz1StsclyNBdqny9P5kaFevI6SrgmXcISs6egiy1HiYe4AvKCl2rcbPg25w6Lk9
	 RwvyqxFuepA6Kx5SMWBHRqOTl+z4COnFMvU6/UG5IHCpxpEq0pj7bQEAYzOcOpz6sO
	 MmpzAsCbOgHrL7VLtEImU5eUh5FTZ2HNXpYqbM6U4C2qqz2iWkiKd25X0TWosKolk8
	 6YNYPK5UX33LwcWRmAQKrRVsuIwQZFpRsUGXU2pTNexJlD23jOuX/SiT99uthjbNJk
	 KS9ABVtP6MZYg6CVuBZbuCC2+vi/bXrY/nAMwrUnQ2RX793UX3yeH3a/yIPPAo2PiC
	 vct3p/c7XEGcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF87E75448
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657123357.26978.7599919655146460657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237a9d8b01482afa8f24845da6e42bb0a3b635d59e517672972a8340fa5129a7
Date: Wed, 24 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766571233
