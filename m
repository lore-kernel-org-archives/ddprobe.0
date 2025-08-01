Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EF71F1517
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754071194; cv=none; b=VHOCHs5Toi/xRfr5Z1MSLIYhHeXIUfMPiBT8ZnVunj8KOjouYc3PgMdvTWP0YrHc4k2I17GWciV9jdzq4ZSoKgFUFRCHM4aMeCgJgElgToUmSK/NQt6ins3cNNq/wb9kV1xaY3teiw1+kxIDCz7VxFbS1l1jN4lzMPLapbB8ft0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754071194; c=relaxed/simple;
	bh=8sijRdCizjBPmaQZZdb98+TdUKpWed0CVprbFc0h2is=;
	h=To:Subject:From:Message-Id:Date; b=i9yC1JnJLgDbZ04qRPlGOyav6LBx0NSVHSpilF36Ua7VMGjEDJccId6uxQPm/vkvQLKg1HxPrXEogVq1cixCLKoRy7Wf5dyqosu/TB3WOHfCX/3r4lilxOpDGFz9eVfTRWWNyfX/+KAds0pDKTySnF/TssI+G3Dwcf9lS1zJg+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6p+NFNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6p+NFNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F03C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754071193;
	bh=8sijRdCizjBPmaQZZdb98+TdUKpWed0CVprbFc0h2is=;
	h=To:Subject:From:Date:From;
	b=K6p+NFNT9Pyel0DS9HsOZueHM48QGE+N/jJ+s0k/ImoXweQausZoDLr18MYWdF0EP
	 HMO/A78EQ/mYf/F//a7q20KCV4olMxpYfgXOcuupI+d9Zb2ONfwn80KRg87pAIQMTR
	 +JhwmyGRXesNQ8Nv3kXgR7h/JSqp51df5QLl3kGHj9oBL0wvAtzMzVF6FGk5Fa9LsF
	 qkcPQkWwoNIm9Lvb166bl3EBGykzPNhSNo0Y8EfdpCaSaeEj+mCo7g+EivaPKHyWbH
	 zdRCa09eoI/BEEm9cDSh1hzOTcQrRu5CA+EQBk0vmkJYhGFIc+JLK1TkKZ8NA86tRc
	 Fa+1UMWj8pnLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95241C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407119357.13653.8217304142246084840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5f7deae7b2a6191648221592ba604a6bdd1bbcc9560662c3984edbe0639c8e
Date: Fri, 01 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754071193
