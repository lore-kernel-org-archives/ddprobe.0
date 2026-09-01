Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA82432E60
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788268834; cv=none; b=sn8b9+1MDRdP1WMYcBD2fMrSB3cs9PQ5bT3yUJoYHkYlyviiHfqBp+fSBy0t7lbKo7oZwWx4eFGwEymHKeCREJbWfPM/d+aWDyaTywLzXz75yXJYfaMT1goZKL3t42GLNDJobKNlBJ+smOov/BkVFeC/nDc893QkxgY9QitPd+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788268834; c=relaxed/simple;
	bh=Ma238CPh6TNtGghsCpB8E6PJuuZ9DYydRymAYKoYmAE=;
	h=To:Subject:From:Message-Id:Date; b=kQpjlpFD0y0nBocZK4n2Jibl3t1GQ7Usf58P2Z7AQbi42s1Z52GMfZ/vF7ZTRAiOEPG59xz2Ihp/4ewonbqagxGa0nKhsUtDHPc46g3H2H0iCH11fPgMhPeaXNfEnX96yGWOLOQ6jCM1WiSETzsVUrxP4ZDaW1Aip1/dy29UxfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWekj/RZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWekj/RZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7D6C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788268833;
	bh=Ma238CPh6TNtGghsCpB8E6PJuuZ9DYydRymAYKoYmAE=;
	h=To:Subject:From:Date:From;
	b=XWekj/RZ07qQrtHaJ7YBjqlexgNdLoSYRMyH0NrqUF7/ranxFas1igaQqg/bZOLQT
	 ZoO0ue3Icl0+zaYNTiH0hnexGI1ckYLVLIQbmno3DkfGB8/Ca1mW5BrsbhnUGrbGzh
	 VXni+3jeHh/9fZOcwxe7RKgFE2h1p4djfOIZqmvnyLjoY8N0tuQ1dFhvb89H8l4shU
	 54WESys8q7QhiTYlmBRSD9WsF0bzWL9NGW37QIOs+XMCJElzxuu2RobGIN2J9Dj/Ql
	 B3jgOnVNTzgdvCybnnjymilp8suUmfFLEyMFtzmkx0SsqoahNyxoHpjQk42Qo11Fdc
	 UDDoAf3BB/6bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1F3C624D4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826883369.16890.3786870132852350505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e03af63dcbf8d76f7cc9ea48e025d350ce8f7c4ab7a90329ee3737a2ee7fc20
Date: Tue, 01 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788268833
