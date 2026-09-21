Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6723F3F3298
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790021434; cv=none; b=l2h43LAhZMD9QdpF97Yt1pCJVPHo6V7Hlb2fkKwImkIoGE+b4wPf4HXqZXSXpfX/3kgMenahf2Vk9QuXalnHGNm7qYCBUBr/HjXN2HlevOEaZ7zE3JwPP1dLtxQ0EJLOk+xWbfdD3TyF488AVlLbUZaMtj1QH5bSzTVphxcY/NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790021434; c=relaxed/simple;
	bh=t9D5AbeaADrmbNQ45GO6seGIgGxfwsAphGWF24wNaq4=;
	h=To:Subject:From:Message-Id:Date; b=GXvg+GLsJsDkN5ajOlyjNt/PSj2lEF7Brc+I2G8po3f9jLOmR7nLI6c+QUIKd4Ll2CcugdrRdbi71+rGwp+Q756xoJeaTAl6EfgOmodGkM0C0HgkqeyIdlhY8Jk+e00K6oGckylRVhwesvuvZQ5cQccVLTQeAQcoCnx0Vn36cOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzKVsAkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzKVsAkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2893C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790021433;
	bh=t9D5AbeaADrmbNQ45GO6seGIgGxfwsAphGWF24wNaq4=;
	h=To:Subject:From:Date:From;
	b=WzKVsAkB2SKUTCL3W6HaWuzhptK6xQpLH0VLuN6/BmZlAjXidl1A7osXPnyzWIBmP
	 CNqCDpbEDr+XUWfQfBI7c0Qtul799eAjrA9OvpHE/gvh5zyesXWSImhJ1adN4/VFlo
	 Xiap70m2jIZvHFvda/T6Y0JFa36pYuC37hYsD853miSBWH1UJpIefx8QBlpITtNk+c
	 5be3Mx7/Y6S6HO9UcKfCQCP8ziE8gCW17W7Fb+28zzc79R8k0SUqrTUJgK8Ojjflcl
	 f/svTkwWtDUpSNeZEFleboaEVYaUn3eIrdz8dAidg1GPKpdp727W9MKDLF4pmOAkFV
	 wG2orbi6aB8iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9CDC982F0
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002143372.1934.9001123130854096711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64b2db6d5aec32aacbb033d117bfd0bdc0a4311c343993b37fba2c83a5c6988
Date: Mon, 21 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790021433
