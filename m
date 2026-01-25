Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2DC1C860B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769314434; cv=none; b=ubS8bMJ+ncZGwsWU6bDqcQbFjnifTY2EaxvLkzqyOvxRUV1cIoduGnJjmhB44CRyIbLz9jtukAbZgCkL3SasDuOy0ChvLisEL2so/jEkLOwsIXaMy8TbKMECE4ljPcGavcnnies2kS4QDruWE2bnIdpPmcbStXpYtV8Hh5CsDM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769314434; c=relaxed/simple;
	bh=WnQcL31Gui/wqdA0VqKVq/WpFgWnq0YazX3srQP1ib4=;
	h=To:Subject:From:Message-Id:Date; b=fFW5TWTS0ikbyqer5ww5510btJEbygBLoNbfbwxIDC8qKkriBQLIs6wNm70couMstlfifuXpW3g9WgwS1GMQ4kWFe4ujurzyltaBLHLkdLg0/PedADn7WHacuHcrqhmXF4ZNlHzCmbUbKq+hndQOAN1oMMm0W+X+Z9cko6eBnqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOHdGnkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOHdGnkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3469C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769314433;
	bh=WnQcL31Gui/wqdA0VqKVq/WpFgWnq0YazX3srQP1ib4=;
	h=To:Subject:From:Date:From;
	b=kOHdGnkYzHywbXa2+kaMb9oeHhyMJgMZP8VNj8FvajTQ2zrFR6ICYsbNufQok8lrz
	 gwj6/vYo7TaGuBmnWbmT18m4FKY1J8oFfseVzz92SeHu42ViQkUPVliSO8nmmaXoEC
	 4LhqtmhFMTBBueaPUZ1dfjeet+wJDY0g7PVkEp2iFwsnzqRe9QosrmAykxz7FIuzF8
	 YYj1fxaY7Zo2ZmBIB4paonAlcw5a5u9jZIoGA4YNDbo66Kqy+OhwRVhSGAYMDnwSJ9
	 HW9NMA21flIG53H0BVmnKKwtkqrvSn110zQaAVajC+c2vVVpkE7ZEtmslncOXct2hm
	 LHm8KXmgEOjjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F13E63C85
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931443357.12220.18207196586558082614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40935bace49c525b460724e8aa1abd09ae9448394bd58ebe2ffd7196eaa65513
Date: Sun, 25 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769314433
