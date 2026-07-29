Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E021FB1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785286234; cv=none; b=BsvDht4Bt4kghZWFxwVUpt+W9T7jZG9osAmIPjedYd/vEWlBIxEGsnxCJ+MB9X/auxr5eoxP55rVzcw0yIbAh/XPtw3/mxPlmMyGg30wgiPTGlww+t/bxT7GQ+Hw1qi2QOocP1KXN+7JbDyYlibbLIxuPrOJymFrKt2qKr90+5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785286234; c=relaxed/simple;
	bh=TmU8VhRixbFCqeiMET3MBhyk7xtNnjNPit3smbb3//k=;
	h=To:Subject:From:Message-Id:Date; b=rwNlcOhCA7dSJIzUisc8b51CFRIokwjbIDcdfNQkyDEhJ607gznHJNvXJPLROCLSDED6EfVgVkmL0wn4BFCAiY1xXdBKs0mBBk0DeUii0MkVfFsDlJjLa30fd2r+ASeuQRpAZgoEwuiKwEgOUA1Objoiy5SZMz/YC+QOdUKFNN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYxk1as7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYxk1as7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6108C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785286233;
	bh=TmU8VhRixbFCqeiMET3MBhyk7xtNnjNPit3smbb3//k=;
	h=To:Subject:From:Date:From;
	b=JYxk1as7Y/7WyNpV9AaiT5b1oea2Jj/LDpHuzvrotH5ZGvmLp/vgWCuEmDOTN2jnj
	 KqkxbKah7AoSLu1asLj7o4ONb27fH4NMBGq+A7tn9UVgOwVbg1+beEOuxQkJMGlrah
	 pGlGvh7BBLFrBOTp+HtFrw6L3keo49g8s1jTFkV5TWjnxuqTraPotCe9JlWJiXVEsf
	 OCXZ6m00frBvcGDASo6hKlLiq2ukL04uvZsAuiHA9K0AaWHRnWANyxFzM8yACWWLX1
	 Jx5FiNcs/8bgSnc9Hljcn5thK6DW8XB8nB17R9A0MTPMx57HUlnssn1W/eQal71Cwn
	 mieEOReJtkNpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0688C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528623369.23989.12904129546984401693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60334c839912ab89a11ce3b880a1c84d96c90b628d074fb4588792f06f8cedff
Date: Wed, 29 Jul 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785286233
