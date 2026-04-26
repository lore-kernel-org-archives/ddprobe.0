Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1712817AE11
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777229254; cv=none; b=DpNW3wxYK+QfHckx/CpGYxyt4anBqEDwjqQvlCxBkTJvRY8X118XF+3c7LKvLHR2CcnuX1V0/4qcy+IPFezWgE/HIdcN0K34igHAnJayllAw1fxyOKWL6iXpPYExZ5PSb9bcE9u0YfYAlVECvzmaEBYHHJFjk5wmmx+YSFrXVPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777229254; c=relaxed/simple;
	bh=QVI7XThVS1ubgtAsSZUkNH9dJ4RmvyuGKrzugEgXpPM=;
	h=To:Subject:From:Message-Id:Date; b=NMNdVmW4852cqguoEcdc137MVGRuIK0ZJSCOwoMmkbUCPTM6JoZYTkLVCHNTeWIXqAwyIJBbe3W7CIP1CnhoAU3+e76BXDxs+Tpg97saWi9Tg2nrMQzKJOctWAHtYbI3T17RUPl4CnouWfLfitaUE5UuTRoeY5Hze0HZvyPSbqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUattIfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUattIfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A8CC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777229253;
	bh=QVI7XThVS1ubgtAsSZUkNH9dJ4RmvyuGKrzugEgXpPM=;
	h=To:Subject:From:Date:From;
	b=SUattIfOv54KDQh2Vs4UWNc7VpgoWkYGJlBqZZTZwRpS6fu3s/Def13nD1f+5lb6d
	 ms0JsTZ1en8QfWzLzQLwX94XoiCeIP85L+ajLPoHRSENCbA8qwIgGrWVjDHF+ThgZX
	 yv5xuwvtsNAe547+KIHNKcu3OwPO0G/z1pCDQtRXejJ6bDf6dtxl5vg5LWmJsCQ/N5
	 treiqeqYdJ+5TINXUt6AbNVWEtsUvZj5PcqLkebqB1p27uegNgyDVR0eumw0RCGNnB
	 ruoeblSA5I5Dtu+GE1C+Wuj+fVXaa62HV5CYj374zGkdZ93zLSITAutRttg1nZyCy3
	 Tb8kcadAbegHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B091AFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722925368.9077.1660925173324859199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5e57b73183438abd8e4463bb9db0c589710f65c2cff1373a21f83384fbe9cf
Date: Sun, 26 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777229253
