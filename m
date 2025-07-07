Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42996267386
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751930994; cv=none; b=r3IHXVz4SI1Ye/m/bHXFNI/ccFwjZKJuaEs2VloKF6I1aerbT1LsdhwdaDvsl4nBnbOXyPz0Qjn9/4/Axkt1bg7PHvHD/afie+2LmuLIBlPdhN6Xl4pTzEWN6hg62QsC10+HtWp+yl9a3zuM8mqGQcmK4p3M5l/wSWAQb2Xurtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751930994; c=relaxed/simple;
	bh=rlgGEUXbOfQyWQs0RT1AayvYFhIi+V77wFegswSCpjI=;
	h=To:Subject:From:Message-Id:Date; b=Qvs6GpkgSRpElCb+HTgDWT9YlaP2/HdnlFMTgmIjMq7WLseS1tpTNglIV0Ad/PfVwzKAm5DG2pspNVbZy32OE2k1bWSpNQIH001//YahHJZIH2he75XF9I5JZu/Yq5XJH89owgBoNm9sHpPA2YVYHO+NTQcLng9J3dFju8iiAXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4sk2UGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4sk2UGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8701C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751930993;
	bh=rlgGEUXbOfQyWQs0RT1AayvYFhIi+V77wFegswSCpjI=;
	h=To:Subject:From:Date:From;
	b=A4sk2UGnucP6R2gI+Vh4r9sdrlctbwM1D5YyhR0xV6QPdvAcM6r9x8a4Ouwx4ZOTX
	 X+v1kpeUgG3IwzSw8uHplkMW6fnVTS0N2aK3yYEKGADD2pU/F0tbbbeWNdoi15NS3k
	 8JEd5saXsMzqNXIF0HyZKjrZ/R+UAQ+T451Q6vZJGfVyilwOsPj3/RKjFzRpSoe94e
	 Sto6yVIoCp1UeEAEV0E6FGzJK6BnlbZXGENUSpx6CFwA4ZraJKZML0HJBQbPWco0Sq
	 gcn1IQeYkoMx3nY0sCaLiris19SR3Opvw/vGgEr4hF74lfDgZpBnhhivHPn09mdcMo
	 bTEP7bg5MmG3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9553FC71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193099358.16153.18169641245965811523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d3ddb8829aff8d7682944db724e545b4c9dfc5446e617516b37bc1af6ed465
Date: Mon, 07 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751930993
