Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8EA39CCEA
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790322634; cv=none; b=GS+0JsrpXDaddguqLIrIOJZwTx+9SnnVCYBPYvTyj9sx/W4HqRSbo9yBBJnn2mtlj3sVIdArIJKmeLDSOGeFu5EtI+khzyoSH1xMG2VtNxStL7eotKBIRFjhnam6jbIbNa/g7Fj/ZfZoJ/SPFSo+wMJ9ygHA+pTw6uqBQ0SMmqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790322634; c=relaxed/simple;
	bh=G0wQMfd88WTZTlyefzAQsl+hpBQo75YY+YmflY0ff2U=;
	h=To:Subject:From:Message-Id:Date; b=W+AF4NnZkr7ytQtvj2XAv0oX+MX8cvbMRj/7BDrtfI2ndx3dzDYB6++Xt3xgBVwB4wYbnQ5oSAVog2mICGegc8DGVbxE45tLelGtgXyHgsDz56DT3eZY5FtxakB64dR6tSjugRacFbypORR2UDymbfb7z/tG6W2viXK5fJO+0mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMUcH4Pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMUcH4Pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49CBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790322633;
	bh=G0wQMfd88WTZTlyefzAQsl+hpBQo75YY+YmflY0ff2U=;
	h=To:Subject:From:Date:From;
	b=dMUcH4PpW9agSHKWmlkLctNW4vPreHEARht5z1+020Bv73/llV5uY/Mz7pXri0hGz
	 d/HRv1pTL3oBJ3lUkkfCa2Y9EDKx8KFuLbb3jYZh1A7CmFFpsmYRRJrMQKgRQD9tpR
	 u/8rpNcOO/LC4cXEsUsvCMONFXSFwGNMgxP/Wb7AvTXgDmMtVvNp461UgeaCJN0sg/
	 OgSG/LIqqfyyhf0tRTKGV4jCXJmye2WRiTv6fyqoCZRKw5Crcoy2fpDEfL7XdFer9j
	 R5in0JtkB7TgmNvTALyWt6OwdMD0Tq8tePKtRvaZm3YViqIWzV9/wuLiuDBUWFZdGo
	 lXXPKFcxSn1QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC479C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032263369.20207.15800575246551593246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3fd5394a9d56682fe05ccd23a8befe614b88b3a64be559dbe5cdb4787c2039c
Date: Fri, 25 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790322633
