Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFBE1E5729
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728489354; cv=none; b=YRu4vpB1AQiK2OkkVkItBGP44naTWvOZUnvNF2cgEl4tg2MGjLRRX7+9KCJZc2n3J1Zxzfmno9uGXLYI+Ej5BJV9/gvli481medev07ckGyUyLauTeC3bVHUE/TwVdz5aX9/wPq4f/Eha4P1r2cuf+c+tr6dpQx4Gu0zanHDhVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728489354; c=relaxed/simple;
	bh=+s2lfZKf1dOdWNaX2FGOi3PebEzg0tn7KGVw/pqTXC4=;
	h=To:Subject:From:Message-Id:Date; b=omuJvsrxQ/J3C9aarkZcSeG0Z/ThrnAYVEiLotBy84Wk7fPpsDquBnzObv2ffgvhfIgeNBZVM1Th1SiGGx/EKxxChXpctJcoXAiTT5Od8F18lEZHC7lbfKvhVTjk6d2J7Fj0dkP00MwynPjmBBKU8u2XnQimsGphpkmNrtB0mWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osa0/nQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osa0/nQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD288C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728489353;
	bh=+s2lfZKf1dOdWNaX2FGOi3PebEzg0tn7KGVw/pqTXC4=;
	h=To:Subject:From:Date:From;
	b=osa0/nQiCve/STN2hZfJt0lF+MjSHBdo3EZRoL1LPOfF+scbs/NSewvGwfnF6+qxR
	 TxVuxFG1qTOcQHJ1k29bsfD2zY9VawIelp1whtpHtN9YknYERoRHpOrAHQKa/KBRp6
	 etUCFfTcDT5V41hIO5WPzosO1Jftlb1r2FES/lnGyE6Lo9nvcpZdJcaL1hkCBX9KFW
	 /UpzJH87ibIdLjArUWuVuHuZ78bqGWiIBDdVdnTVhd+hXX0Xz1xhQE4In5ml5X9T2E
	 HYbdN9Qjq8UzEfwAh/JuTGlvNkzDzHyU1i2AasFrCJOOG5kWbQBi6PXuGsvFGBGVlP
	 thJWFj6luU8sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABBFCEE326
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172848935361.12893.6019239701372582983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea633e8850e63d9e7a5dff1c6f6de09d7dbde3d57a004afd517e2a423194590
Date: Wed, 09 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728489353
