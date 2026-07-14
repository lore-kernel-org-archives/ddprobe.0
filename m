Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4751E184
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783988314; cv=none; b=tvHLuy/5M0pVMtF+pgYVsHZlmZf11SLjlV07m9eoIhOVlGIW6+nzZzirblcwFSgZWJNvHJn3irrku3cqwSmc2IqdgntX8l85rmmPKQvKOLucjt3TVyARapH0Qjywes0EXO/U/QOilEHIq5GSsprUKUul/dt1SPtkSjUiTxzMO0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783988314; c=relaxed/simple;
	bh=D9FoqBD0eVMYmZuuEJIH+oNLsq0D+smqhuToTPzczAs=;
	h=To:Subject:From:Message-Id:Date; b=fgvUW23Kn2OIL0KVZpcaTCZI4s2ApBzruuZ+I6wvUb3TGzdgP9Kxlw6f4Txa710rPSTs0pKOdp85e8p5o3Ghi4AeIxKNE9G6MUUBOgeN37rqSOs64KFry4BFofYxPY1rijyYn89hlZczMXIx4Kd7DTBDM+j/S7M+IIe8lg3uHcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dO0aWI7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dO0aWI7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FE8C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783988313;
	bh=D9FoqBD0eVMYmZuuEJIH+oNLsq0D+smqhuToTPzczAs=;
	h=To:Subject:From:Date:From;
	b=dO0aWI7ou6ue/+CX5l2W1IicSyfwDqnbaU1Usq5IW0YjohFGTb0SO2vcRhWRxmov5
	 RPZ14pdTUX//MGSQW5dmxVa0yI0QSonzmSDzyoQpUqF+LSYUhumzG+hkNMBOMlrhlR
	 K1fVXeIxqk2g3FWPlJKb3ktNqlHdmf82EWXKXzKPk0aOUi5WshoJh064raNOqApyBw
	 6Ear4cS+1rU81lvlS+vMOoKTbzm235+V9qjZTxXC3G9TP1uPoiYHWsHuhNo9AX5mTa
	 88+m5vXGY7G2jqlNdPRlBnSM9cVdKrorOGeoAUmCcc4U3fYGJZwe3ZV8H7MblNB/s4
	 M5qO3GFTJcFig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A971EC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398831368.4382.11615742987338641737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a561900e8e497023f78a4ff90d7af6d2aa6b9453d6e4597cb4acb1324699c1f
Date: Tue, 14 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783988313
