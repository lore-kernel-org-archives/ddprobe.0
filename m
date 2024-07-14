Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E02E6EB55
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 18:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720983023; cv=none; b=G6dpxkv6yokOMnq4NrgeGYGgPEwNUUH7d58Qa3A4hha39WeGHyKZEdanPwJrZftN2UIuktquIhapANE2NUkWC2yZ2jcGzR7yxy0wZ/703P2rcp0QxitjWbjRosc1kvTAAlNu4EcEFAspxX6rnToqEKP/IPisMNsPPt2DF8ZOHJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720983023; c=relaxed/simple;
	bh=0SQ2z91aFp706opSmHTrA1WQ9IbgowEy72wksc6STLY=;
	h=To:Subject:From:Message-Id:Date; b=gDPTkiR50jt9fIaM9qzaTWYvntl3M96OgIPvmlmI1Ot9WQmstlualeOWErMYdIGTdeZzNmH40HxD48Rh2YwcNOQqL9StRNx//3J1WEDfNnAdSHyD6qlwCDRbVzrZjKlrYfDC1rLYff2x32O/zylZTynjyVFQ6xBLow8sl9W5Eck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rY2OPcTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rY2OPcTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FA3C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 18:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720983022;
	bh=0SQ2z91aFp706opSmHTrA1WQ9IbgowEy72wksc6STLY=;
	h=To:Subject:From:Date:From;
	b=rY2OPcTbxM+vJFDVpcOUiJuDVkKoxssTYXhO4E0oPgc15KeJD8hK567nXbV6u/3uN
	 VroFZbAdApL+Bd5+AR2j5A8SB8MzL/13UFH3dOeF5yvGH+DlaR4wQuBFQBMnPG42hl
	 gX6HxE2vRHXQ10OQSYSpQsvhkbP+DIMwSkYXGl47Ue9j0SK6MjKzhOq6eZMn1VXSBP
	 EMBsdVUxbOvZwn9joRRnGZIcMxGUgX65Lm3ZZxFOIVryGMx87WtPQgWwiHbM+VhsgQ
	 S7OwWRsMzzRfTLjPE2+EWD0SzRmCaoTKcamotefK/uMt0cOBZyiLmDmFURhPb1lHvA
	 aXVtujf9Mv7CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9DBC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 18:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172098302275.3583.13402676824934862534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe04a1dbc85b39a9dcaa03af0ee688cf0a89ebdb08028268ab2732128d78c6d
Date: Sun, 14 Jul 2024 18:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720983022
