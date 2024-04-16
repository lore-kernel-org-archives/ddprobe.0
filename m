Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C525127B7A
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713265763; cv=none; b=rs+pMkqz5kSNtJTxPOPZVmp0fDdCuYTw7QZQjxcdznm8RGhrYBtjuZ+rPunN6fgx/jUsuKLEtAZb9X+vVb6HOOZh3kEqB9Q1LUdmsrAMfFKhpspLMTv6IqQcvkg0EvNe7aQh84QuYrofUeZmYrW0oWEaM1HpCSTDfSc+zHcHM20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713265763; c=relaxed/simple;
	bh=GDi2vxrTnYONvs4YdeffMFxS60XnS/2xb/iSRHtwHX0=;
	h=To:Subject:From:Message-Id:Date; b=tLuRXsmkavN+dkCktgS2sNYtRbnUcthXq6YWZN6bhi7fPqT62vn93bz0okThxfMWSfftV0JH6Lb0Mt6V8FsHPQe85afHp6UwOihe+F5CAudGPbBscSAhxECmM9apSdaNGVPXooLGWaUNNuXIEGDLtNinpaxPgZqiMKQgjNDo0m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ujki2ndb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ujki2ndb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F21F6C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713265763;
	bh=GDi2vxrTnYONvs4YdeffMFxS60XnS/2xb/iSRHtwHX0=;
	h=To:Subject:From:Date:From;
	b=Ujki2ndbQ9YIWpH5ANTknHFA0pXkb2ZXBUWlG6DxcxQQEescRSHgbaRafslp80VAG
	 0UX7fzSvAvAuxYQvO1nWeydIq0/a+pZaRtociROJ+30Qq5I7opRspmNQf5MGqi63J+
	 MEtIQOHIhCn7obk8wdaMiQQojnooCnP1zd0NyJbfN2K7Tza/JqHaZHSk/3bKRzNQuQ
	 yIEAQLuK/pB/MhekilSMOuNKoFnFRdxyORo38ZW5gv0I/hhv29X+cks0S6QA3OAUM8
	 tgV+i+v0KqTq7a1/TnvRMi+c9EWNmSAZuWf6kdnlr/y2LsiLt4aZ9uvVZG3+SCLS8N
	 PtvoyNjViqF7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC394C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171326576285.23232.13759550891349170229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 774dc2ad7751aefe76bace392f57f679e85e3b55e79f0b9cd7720b99735a3123
Date: Tue, 16 Apr 2024 11:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713265762
