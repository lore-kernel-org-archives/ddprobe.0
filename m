Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB0634AB00
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782932314; cv=none; b=SYxbSyLNwPRVrsjioykrO9YX/Atxo/knuVpYguRzSX2+vuxi5MSqgsDwzPy9wh1vs8Sczk/Udnwm1yNA2O7X9t+pbOO9Ek3Pc5rpF92tmZViQUQnP4mzng+lmmesLKbvzJCbO8mP3ibxnRWV4FYKAl+2DMiNGNnMDlHnOuDZ/HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782932314; c=relaxed/simple;
	bh=d2FRhsAmcUGTZSyBc3qr4wgI/Kz+ecf7vHE8uqOyPb0=;
	h=To:Subject:From:Message-Id:Date; b=n5WnL65nDDWhmHCMGZbI48H3l4lihPifJIsf3q8E+CZjKcVnIr/lxXg+E9FzSTAM3X064P2vt86ZVK6S+HLUCJ8Fxjnjj/7Kj0QiXGWmFuZ58uZ95pvRS8+sLiTC/41+IXnzCWJ1TNA5XFePaR6g8zwsVk7oiz0alOPbXm8ikxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDScMyKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDScMyKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2925C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782932313;
	bh=d2FRhsAmcUGTZSyBc3qr4wgI/Kz+ecf7vHE8uqOyPb0=;
	h=To:Subject:From:Date:From;
	b=DDScMyKy0y1fv3rAbq92GvMwd2QuEJWHT+KTrPDgWly2kPy603BlBKoWVivk0J8j8
	 4N1eACRAzEcPrCCrs7iNdXxRgfQ2tDweDWFmGpUDntE/5PyWj3ZzgkkxESEfsfEOW4
	 13DZuejlj2Kq4bV7lM6tqT72w8u3Qb2jZvjNHELQ5hiJTh47q7spnWYw2soTI0LFHp
	 q4FNzreVAUX917GwUsSeuWmR4Xswh3QTNtZKDgDxRd+Ww47VR2peg5Cai4Mout/EWl
	 yjYaxPwTT7RUAee2V5Jali8Cax110OPuzaCXe3bZUomqu4VfHUf/IkVFgc/cPswVcS
	 X6d8Mnyy/JgUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CB4C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293231368.8400.1224556054644055878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378fe377de1864a4484cbb4e698a0398a31aad1784a262137c0c2b7f139a6f98
Date: Wed, 01 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782932313
