Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5A13F0763
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782906514; cv=none; b=beUjKL6ucs3s/MFR0Hk/uKXgiY3YYK6n+Nrsmt/MHWxUbs1pzL/4H28R8iPkOV9BAskHK9upn0Hc/XOD/6ZL9CdvSd34pIWoncM+Z4kj+mm/xyUmQXU2sAM3G31FlBd4NRzUiL3/Q11WPKjVbpUslV98yqX6WSe9Dv+IIrxSWGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782906514; c=relaxed/simple;
	bh=3znkxpWQ/bwTRC4TnMgCwdkcSFaCg2WtHCwvcOuwSXM=;
	h=To:Subject:From:Message-Id:Date; b=FuGd8eOAjRBLELMZvPWKMmB9M74gKMirRtFEXgjNgTD1eJ7PUT98tM+agbhSWS269VbRin8VNTaJSuaIcJf5iUxz8CXvtEtLlavsnUP0nBjf7AyV0IK+7HKQisf+lYlCrreER1rDggpaH6sesNx25hinSXtZ2UDQh6y12ABoUnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoezrO0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoezrO0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3092C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782906513;
	bh=3znkxpWQ/bwTRC4TnMgCwdkcSFaCg2WtHCwvcOuwSXM=;
	h=To:Subject:From:Date:From;
	b=LoezrO0yY6OteOy+jKIlhJiqe22ygaXTrkWR2SJC7apFDT7cYUydsWFxNjo7UarhZ
	 xdxKmE+obTxNMsgLfOPL5ayE852Gv8GLTolB67j9ahZ3NeQTlSUqkINzoDjd4ZzaCE
	 8ghbrtkUxfPchPP0J/vRB1yhbad/RzdpI3tSCJr0s9hrBUvJM10wyn37aWktt2DAuE
	 qi34xRT/TIO/VZKqQcJ+kHooMOHqTIdDbweOtcrPYSgOBrhJ4hlCLuwpFRNM13Mx/d
	 vNk6cXHWtfN1DJJHKeDhh6NeWXWXJxitL2Uf5f0egNRIYLsI3vpjbmEZPCPTpw1RS9
	 Bwu0H3R+u0v+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB911C43602
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290651368.30286.258737856872824109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea37c737561845cb6b0cef03407e0248e778bb7af19f0a6263120a6ab7478b9
Date: Wed, 01 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782906513
