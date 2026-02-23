Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8CC34320A
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771824894; cv=none; b=Pj398ojCUAPnjrcuCY7mTX90MxdpDWFAjIL+tDtgtBQq0pWRm6WquGB73Ac+dnyvCzL6AjFgGOUTOwHAfcqXzo2VPjJSRbUeLSLW1x0q94kHX5mShPuIVaOMlOoHU11spctC2md4X4T7Ii/B8c6e54suzO5TifZBDUUnk1fFiZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771824894; c=relaxed/simple;
	bh=WiDSEMns9kO+YJxFsndarJM92oO26WLH+p1Tz2Asubw=;
	h=To:Subject:From:Message-Id:Date; b=MX0yhyIDKgHJbgZvys+mQSkFzNqwWxTT9KuIv5D8hvWSIK09vs9gpnP73uo80J2wkDH8csNEzGkYT+7tKjC60KA+6yXLamDPLZpWtnuMbjQtp1lnrGH/xeWZZht8UlFNEspTenWdESyJ55WTpLY+a4ezMMBEY6+nVXcxmFGKnaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXJXkJzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXJXkJzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE0AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771824893;
	bh=WiDSEMns9kO+YJxFsndarJM92oO26WLH+p1Tz2Asubw=;
	h=To:Subject:From:Date:From;
	b=kXJXkJzJLRfN8kCTwy6LcRvubQAR348GUTy2fl91uBE2Iu3RS3E7RUmWA+UjCW3Bn
	 sDQhakWuMHg8swfLdsu88WyxxzWEuEgkB6sdpFqt22cCnhtlnyjE60lF54LzT3SB6z
	 uoP0rSpk2VAnfiP6Hjnxg2jE5c/GDjWDcbEKcM1NYPuznnAlUHjexR9T9JXpYE6loX
	 +CmkYIkFlCj3vrmu993Pjmh4EG1zrlUlsImkpdhK1WAvY84edAMyRc3uQIv8nbgr5P
	 lTDmRA7S4zIjwto5WsTP4gR3m9uFzHzioWxgBuQJUmotpR323BRFTH5AnKoLJB7qNd
	 K4c/5Dk0FRcLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C42E98DE0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182489359.18346.8559479344403174396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b836bcf117c78029da0a79dd4ae9fb196e5e0a8e07ddf0abf3071a7d7eaa31
Date: Mon, 23 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771824893
