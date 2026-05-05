Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2600A390CA9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777981054; cv=none; b=GgmR3UHkDw8okEvEdustxHx1WgWAOlHoKcKtfwV9vvozT9AKoh/B9Nu86zJZCLmWkejKKJxEY7U2eMdBuii9hK+UmTAZGDiGTV5Nnc80nddG4ufoX0bLiv5nHLERVkba8QU1dR95HH6fOWXv9nKZtRm6xkPpn5PQps4LFeSRFR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777981054; c=relaxed/simple;
	bh=k/5rIxSmXuz11yIW0eCiyLTHD6ei+ptpApingGQ/lM4=;
	h=To:Subject:From:Message-Id:Date; b=ODsZt5nD7glzdncKp7tRUtg3T66B7dg5rJnIvc4g+O1eVRCb6vfmSTzSiexorV7d6zeASYA34tuIxuj5zhpWGGvlnndweA5R9GpAqI0VP7wJeQKWe0p+kMLx/LOFJF1NWJV8CZj8I0k9/ozRIUsOyElnMIPJZ10S4hFAZBEwxyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LR4MjqAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LR4MjqAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB802C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777981053;
	bh=k/5rIxSmXuz11yIW0eCiyLTHD6ei+ptpApingGQ/lM4=;
	h=To:Subject:From:Date:From;
	b=LR4MjqAZd0GtkDDKNT2iVIal7HCkATzZ7BqQamQNYb27A3GcyEhzxe0EAWUFo8G2j
	 d7Y/eL0VKw55dtngFkFNpyi+OVDFY3xCfxnPejFcqcAvl1TJRYfAXDG3J68cFf0UUS
	 /R/jlItfGKM7gxJodeRcniHnRJbPHCBMplMrboQSg0wxB04IKM7pH9DmgMmzFl99eq
	 R09FwX9XIlVDuVexhjf4x9xsmjTxT9W6/0E5lmahyNM0saGuCHA3+M33JRcHy/ELZX
	 WnGYaBacT1bSC9jqzlrIbCbDTQYz1czNaRt4nzZsnKGmaq0UyDW9F4S8D1KNL+DsaB
	 /MpID6paNgi7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA45FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798105369.29523.3136756561674061857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052f9a8ea4d60f32d343405adcd5c9f13a52210fd04e4e0e4be2b80c7b6abacc
Date: Tue, 05 May 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777981053
