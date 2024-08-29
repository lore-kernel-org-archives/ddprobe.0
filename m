Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC6515C138
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724968554; cv=none; b=NBAQPlLTQXm46u+xgwrdGfRghU70yn1vxeTpAXAH3RlA9BHSzr/vy+lmmbVIrL4yxrPXgSakEv0dVZCo977gleIcwTBLknYnlMHhUd8gkTNKHuQzVOW3fHlyZbO3M4wSuyWoSVZtt45/lStObKkMxIawCaldPhIiRzIyrJltNkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724968554; c=relaxed/simple;
	bh=WKanS7DAsjQ6nA0Qi9LBGW+SVN7tXj0ACWmoStNyxhc=;
	h=To:Subject:From:Message-Id:Date; b=lKdXy6CNrnJ/oBYc6IoDwCxGT/3d4zEoZ3KK3Kia5e25alj6vtZltMxAPU1nrdy9PSyhb0Q4LgARMYEDQlFoVsYcpkF8ZKhcC5EN5UnOHVReGVd1lNW2rVE5sCVcAABtUWMTwa7B9wjho7GTwKtsw15UmeIxp5274j3sWHYln6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhRQfdM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhRQfdM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A822CC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724968553;
	bh=WKanS7DAsjQ6nA0Qi9LBGW+SVN7tXj0ACWmoStNyxhc=;
	h=To:Subject:From:Date:From;
	b=AhRQfdM4Vel/RpbxYxNU+Xb/2xykDZMper3lNX7g8TZfT+hL5bKJIKIJrleas3som
	 6QxjThr/69L24XaZst4Gfoamrjj0UNl3h8jK3N1Me2RaHEEBdmm/oP1v8QsMWXAYEh
	 wOygTUxwJgA4YCBPVt/XnRkiF0P/H2BOzYIShKvk+hpLY+zPLKQbPHIOtpYINht9gJ
	 ra5lZhfDgmu15+aGcHuDLoLzVFNEyGaPReCzqqECCJEqZizBAOj3tOCvlAiAbLquJK
	 zVRvsgoufDeZqQ7ahayLaAJ0rJ/LgjjridJRJhYnr2TjoYu8DcyUsNrq+kDEl87WBJ
	 ttzA6dEyGGE7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98566CA0EC0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172496855361.24009.5058370365692752263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cdb22e84e569128bd832abedd2b6c24409e1e068ebf5b539c88179ce9a191ed
Date: Thu, 29 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724968553
