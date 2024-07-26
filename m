Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8A42B9C4
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721975154; cv=none; b=cgv3W/HsmnJCE1y6z7R0H8BFAOVnoQT21QKzloW+TFF+UE7OejFA87pGnQj6eXzgVfCHPjg9x9H9UIR1dEODEey91baI21Cs+AyM8iTpXSkNLcZVDv+A/heQV+9NMKgM66Nri4s7/krrM1+tmQfILg8FmNi6+8EtbKpXznqvtlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721975154; c=relaxed/simple;
	bh=MSeHawVPrGKqBvV5anvwoOq282728t4EHaKRodll+Us=;
	h=To:Subject:From:Message-Id:Date; b=jg0mg/sRYRF1TxpCr0Ui5WjsiY27B+SQxtJ+92NYgpe8CH8uCugdSbOFa9srUsDg33Dyenv455YAlGN81RVDWAYn2NfM4a4CVnf82UzB35SSCt+Fou6viqF5Hxng2vw6gMfWZUH+TdKj8xz+7UGDF7MVuaSjOLDPu3oj8pYuxJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtgZWc22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtgZWc22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3848C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721975153;
	bh=MSeHawVPrGKqBvV5anvwoOq282728t4EHaKRodll+Us=;
	h=To:Subject:From:Date:From;
	b=FtgZWc22MC4RkLvl15Ii4jOZ/OexyPhC/nmxHIawxU8QVMumJtQl1iYrGI5Ljns7m
	 FYMwsKxrotACP2dXCxmSIdoael0j/3HFXwPHtPRSSQpic2MBASs57NR+bCVWw13eE8
	 9+RM+krm6ppucN290hkwKjQ+CSozAJ6ok5dkcsvkd7fnIJa/UlyTsY5XIFawtbfldO
	 KwqlMfykcEjB6l756mYzlwU5/mc6ZgJf9ZjS4tN2LWOMAij/V5VdQYIWksCcLjUrtX
	 WhdNud1vz6OdgirtewEYVRybizXlHzdbOdf8DjKKx/rwfKrMl/KBTBtZsDSb/rgSin
	 Xs4YiYpSGJDAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05BFC3DA63
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172197515364.30003.10785185944769549979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640af7290367722890db3cfee6f21f94c14d0568e1433893bdcd49f123e30167
Date: Fri, 26 Jul 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721975153
