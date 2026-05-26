Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460EA34F24E
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779822154; cv=none; b=HZqr3AoRU7TrEo+SQPc93ZONxEeGgMKaTLgR/q7WdxvNwF4X+tgbwS/8FTtBSLTEMuAorXiJ2q4QQnCf8shdFy1I11OZ6/Ey6AKmWsF/D+SvRqrEe/Z7XIkvjaRmQbNf82uU3kFYceK0psxg1Pk5mu543YqRNOtAd1fiOfSsTXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779822154; c=relaxed/simple;
	bh=egKO+5FL9cWWe+7p44++pWXPLjHJSW+GUbHj5F5islI=;
	h=To:Subject:From:Message-Id:Date; b=ZsKPu9ezXDotOM6w9Z0Oh8i9xAJNQyIj5Wa9olyvrvf2gJtDCPjuP+V1+gz6Ny+4RWayD0ErCUABZmiK+A4HA0SkOihXpCFOKDNqqrnfytqw/KqWygVajR5O2Ha1bYsWXlhQF40m59UYX0el3DWR20nLd0SA42jYy3mQuh/QrBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhXcEf48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhXcEf48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C152AC2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779822153;
	bh=egKO+5FL9cWWe+7p44++pWXPLjHJSW+GUbHj5F5islI=;
	h=To:Subject:From:Date:From;
	b=mhXcEf481kTpfSwCNNWyPBstBGo4OGZl924OnrLYb6LJdTN0rzTPiYvh6bjK3lBOA
	 cN5JEkT2ri4v6V6le0yqhhml46MTjyBXCkqArSLmA3tsFrRRVOxk3lMVS3EY+0E8EN
	 SiaLMXevzVIkdeBTEVf7InZid5TeL0+CRO8/2Jg39iE0v9awQ10bpO1ueBV6DgzfTe
	 1UsqLRC5J5bPF2Dt2JWAws/7TiDRixMdAtHPXctBLZaIZhmdqKlnkARmN/mxEOZt2r
	 qomb1U6SNox8UEKCFgILrhHj0GD72Icsq1PYBiAXA/IUSUQEY0U3XmR0Gq5gIG1M50
	 MR+mEIGGaHNJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C1CCD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982215368.24435.5271183995983311162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5bdd2488d193bb0df9ce098d8298e9b0e370959854f31f2ed0a8d2a5a8611f9
Date: Tue, 26 May 2026 19:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779822153
