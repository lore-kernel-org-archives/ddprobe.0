Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377C822B8A9
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770051834; cv=none; b=n8twhuyhhJ94tUw38muwGSmv5cfL4cz5+FRSv0xbdJDXLuKFyuolz65R+w9Mmxt614acQuauRkWUEhZSdIlLRLMxB8lvGcJR2vQ2cRlwfoGK7HL+XS5eCvV8ZF509jGlfzIoG8NBmeSkOnYUTz7UEBiDbp3E7crUb4vqdF1n9vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770051834; c=relaxed/simple;
	bh=z5ALoaEaign6KlM08gfUe9DD/Bsg12E1x67TekZIPgk=;
	h=To:Subject:From:Message-Id:Date; b=ivLs9FxDj6feO01LdvmQWW4WmL7xNXV9GrSMv72eCtO10agx4AabqF24ikp7fLIK1qtjb3L3u6Ncw2NiSjoKxkTs/KkjEGTeAG520o0c+TKVIjvmwiPhuH/6wSSO9U3KmG8XJUV/v//XGdce2m1cEyI2Mgi+SnZPh/ZLSv0aS2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mihGsaw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mihGsaw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF21BC19422
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770051833;
	bh=z5ALoaEaign6KlM08gfUe9DD/Bsg12E1x67TekZIPgk=;
	h=To:Subject:From:Date:From;
	b=mihGsaw0g3MbghnbiyaHaHoLK82xubnZc6LuUBOghHDQVyCU6Ri6d+t63gc3fyPlY
	 fvzlj++MXrf9g0P+RQsmU1orsxKkoWlz28aXc6rsPd+P56hm+1sIj0PKqS0nRFiNAQ
	 VDmdw163K8YTszUh0jbWqp0HVWN0mUKr4EZe1HNHJuqdIl2PBkzFjU3eJ2FPoB6wqU
	 JyghgLtIHZcxaaockxWwp1nDpMSt5T6VyIeVsVUGKJ20kYdHq153tgIF1/Xmf7Yy/G
	 eZQ6i3bDvy/d54TmUd3Bdamx2aqicJ+cfg03cptO4yue/v3EYYF5i5vPD4MnQ8nbF7
	 Hk9o/2JVPD7sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA7E7DF08
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005183360.6826.13360068932369122035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c23bfdb4e648f230ea3229e9822c73987cd4796302cf7182b74524326aadc23
Date: Mon, 02 Feb 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770051833
