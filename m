Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462DD158210
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713955223; cv=none; b=hd0htzBGn71mrGOHWqmOsmCVK0h6JruaHWHFR+MxXbmcCtPdHPXwba/wBAI8lu0ilfC0PGP0cvKuFIuYcqiOlduW/Cg/dMgcJexQSra6/RDWJ5WSA48VNpRYN9TizxJx6EeLX9M0U3EyLHP+xR7TJ3NoSeKK0AqEnQ5/Ebc9gHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713955223; c=relaxed/simple;
	bh=bstJe+XBsO/yFQ1twlVaviazSIkPgjcRLSw18R0rclU=;
	h=To:Subject:From:Message-Id:Date; b=txGETpiCYK/2x1+Hd17sY+jolvcfUZlh4JdXTHn5o/xqrxbUSrbhjCoU7tvwRf9g8kIv6IHJaqhx1h5zuPH2VBQGw4w4Y7XLrOcgInz0aWRqq4FF43mxyjrC4B1bIzzyIFp59s5q8bj5Enst5tFQEU2b9gNKaXxI6WS2qq0uZJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chAoWq+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chAoWq+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A886C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713955223;
	bh=bstJe+XBsO/yFQ1twlVaviazSIkPgjcRLSw18R0rclU=;
	h=To:Subject:From:Date:From;
	b=chAoWq+8LUOizXMfTGaI999Ugvpk1Z+zDm+VsuwCuRW/2iBjOA3joZDfKVJpnteMN
	 I8mmhwsJcWdstZizERUVGH+gkiuLZvk2oRX85i96AmKewpmRayZCyik+nkamW7aYlE
	 bBDWHa0gEfJWtbjLiQUtrR8jnQlX8sJjLwgJVywsP8NUf6f1+ojYj2zPTCWBOfreqz
	 h+NqRY3rxmrthOTnY+Tz6QKCyvCR797Gpsu+4W4no6vnPiJajEs5q79UwGnMyOu0lY
	 f5dwYgkeCYODjDUyZU3cOmxSR28ZLA4PB1ntlf0vy9cbM95HwF1LqzNV6slm+Qinw8
	 vrbHOD8KxIJTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D98BEC07E8E
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171395522286.1185.16856795608102823462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f0b44fc95d8e24d0e104c0afe09771c4030859d83e271361a515f2a584bde9
Date: Wed, 24 Apr 2024 10:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713955222
