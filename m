Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD90D371063
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777271853; cv=none; b=JNYVU2cLxTIDkMxxgKDFHebdUwU/IqWp3D3aYphGl3p998rimV5YLKuX45ML2y6P6ZzItH20fo4KTPYTJzhiWQULKv3ikQbUk99bazk7YjqoHfDadwhGnymWc1xet1/q9gs3ZKH27j1FgaEsVgBk7Phjsh5aKWKp8hcFjBFz7go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777271853; c=relaxed/simple;
	bh=luAT2Qk+ODe/a3DsbWJ5T38ho8kujB2c8AKnjrKzQv0=;
	h=To:Subject:From:Message-Id:Date; b=FtAprVCdXA5V5XbKktPHfOfUIgVhrpP9P7KCEDEbIyVG2/Q1l4pAxR2JBqVDjMOWzo0+C/fOzNzidOei3bS0/TPJ55i5av3F2LgZ/zDmmA4AEwe0akSS1a0RB6PsrC0V55/oFxhiecJD/tNUbjpLY/SwL0GDhjJomM0/aD9Rqws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFpU00Ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFpU00Ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8301C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777271853;
	bh=luAT2Qk+ODe/a3DsbWJ5T38ho8kujB2c8AKnjrKzQv0=;
	h=To:Subject:From:Date:From;
	b=bFpU00IkCatQ9JFEIJ7JffpzKzHYKTu8PcvXX/uBuOoVgJ2xWmi4dTjGaEK34U+De
	 48oqZuv6WOT/rxVdC3bRIwoCkqdgsz+qdPZTb66Vitg+gLdMTmX0vliwjFuwyutScj
	 E2SGZc5dl+tHvJSNm4hIJ3Yiav+697i/TtY0MpqMp8B1GaiOFrXbnDVizUkLIufWcG
	 U/AZlrEC0MmeeDapXv+SGTG9WdIMUYkiOsaOQYx1wxBVpbxrvmYo3oFrE3ykjspgQQ
	 x12OBuDGSLMtxZZ6IrbzCJV950UGDugLr6CNvBN2P09nCd+ukRZfnygujtA/lfYywt
	 Lw12QCpy6ACQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA2FF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727185368.29076.3353241682439773862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5719af401091a6c7fe27a120b232ee1e13377627d17943efc72ca8e4eb955f5e
Date: Mon, 27 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777271853
