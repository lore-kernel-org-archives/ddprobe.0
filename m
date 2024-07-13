Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDA0168A9
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720832963; cv=none; b=CiJUA0afOrfAFJT9OpPTGAx/a+BDxvY1jRLF090E+WeXV1IC/7cLB7NrqPu5wrr6jgDQQzNPa0+0iSsE4xjdMGrcbdD4y5n7IiWdrMwq4zspomG0J5SYcozW/fnsAfRkhToyMvX2ma2N/hDz97CRY4WHTKqgcCstxs7ctiTG/kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720832963; c=relaxed/simple;
	bh=I7f02/rGaoau3rpbLtU+5cehFXX1J9quwHbaUi3NDGo=;
	h=To:Subject:From:Message-Id:Date; b=ngkj9QB56Z16Drr4THRV7/v/mEDdIbHq/7sFY/4qN0WN9VSmMpMozk2BK4GMOjmflFb2FvKsaZNOcMJm+8eEgWxI8OBZd4MKYm9ZGASyQ40qAKlZ0BQJhxQFxVzTAk9v+TtobjGo2XXcJRV8ynju+xlxC3ij09tcJdg2sieEtp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGfVBlp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGfVBlp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE14C32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720832962;
	bh=I7f02/rGaoau3rpbLtU+5cehFXX1J9quwHbaUi3NDGo=;
	h=To:Subject:From:Date:From;
	b=aGfVBlp5VG7ahhdx7/bwPZKM99btiol77df5ouocdCFBV/CYHopmpz/nukudepu6P
	 89/aRV7NOmnJEsJfNoJTU6JSGyXrzaFGAgcwdCa0qxZIzBebZ57h2g3qur/+jAq1u2
	 H8EfLepcTaN114PnBOWiTMC7ZHsVBdnl7EBB5eTRNDMgAeQsa86y3ikjYiFh2WMeHB
	 qUGUlITB7ysPWmKdl7miuwpAQ51wSfjSuPQskOOuwIhFv6R8YcvNAF22edlcx2W5+N
	 YX+wNNSYov5UFBmu8/vsauSgRz9g6iYi0Ow0KL1uExae4HqFtkqgd/ssIARWDRx9MO
	 4VjSr6Fy3mvxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C59ECC3DA4B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083296279.18557.16936323906302788062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce834c5dbbb87cbdb029be8d1055d7476a66504a8ba520d4742087683926d8aa
Date: Sat, 13 Jul 2024 01:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720832962
