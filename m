Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7CEA94F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751946594; cv=none; b=skCru2iE1/Pb1e4cJEPZuDCuoXNBt8Lcu9FHRG8UqxfUGWb4EbuxyGgsILPc2WYCARyQh+7NMkOAHEONf5/DTnwFEdPROuPX/L6rk3j2lYsN0wzHQ60JGww9TW+tB9Ky5UNAL2/vgkez8SuE8WLo4IbPltFLNCBAoTWPGPovAUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751946594; c=relaxed/simple;
	bh=vNQLwt8FQi6nrt1FK42Hh28snHqduBhdZk57TT4FGD0=;
	h=To:Subject:From:Message-Id:Date; b=CFykIxv2LqpRQ1eppchJkm+z7XzynFU3ZHdlYNwunCf6gOLfgl8a6P61T9JdfDppdt5Vz3+rZ1qPcXdNGVh407EyEd9EXdIeuTe5Cwpt5zDTGnGr06N2bLP38z6ZdQzlcUMBLz9f2vQQbflU0AMYNIHgGnQgUZaqE5aqjtTbeDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tz/14WuZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tz/14WuZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4FFC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751946593;
	bh=vNQLwt8FQi6nrt1FK42Hh28snHqduBhdZk57TT4FGD0=;
	h=To:Subject:From:Date:From;
	b=Tz/14WuZfjfjaGTMvNBwkNNDdiJ6L2PBkdvKir+U8uiuPIMz/OLXOdceCcgQYMEoD
	 nht6Zkx+yBfJldR1lfhq+arnoqZhJAxb671J0WXyfZHumyqladZJvY8bzPkYkAtMDJ
	 IwZJcfQ2UEilSgrHtKQ1gYxxMpsNMXoDxyPOJ/V6chF5Jtq/CvUxENhn4qc/khDSMc
	 EDkwm+JR4xqoIcbdFj4I0iF/g1iFupXYDGhJlMgGlH/wZDBiTW5ReE5fjuF4Aw4Ss3
	 aSnJT1xsLaSCUAd82Uc4fOjb/NJwwNo3rIFJwr+CmV7fXY+Eqae/4QpHaVN5dv9dtc
	 QdjIk0/NaAiGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F880C71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194659357.5566.8994591653890228212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f40e30f64b8a10fb84221e3f43ec4e197834bd28f98803816aedb828f06d4e
Date: Tue, 08 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751946593
