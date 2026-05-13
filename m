Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A79638D016
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778710234; cv=none; b=P/HCXCLcfurwY/1CO5te1Kca2O/T+Ptf8i7wYoDr4Xxk94VOGPq07OBcyvBGzKUevxdshzFrWRdJHWl2smP5gE5N4vAM6SV0AAHICOpIiyWXLil8jTuJA6jXc5olnZfBxtCvIWFpFSsmOhHSxlyrClFDoOzYt/YMrwqyKl9rw88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778710234; c=relaxed/simple;
	bh=GcFowPae8QRmmyvVtLsSwSe7o46f95V5cN0XVDDI7Ek=;
	h=To:Subject:From:Message-Id:Date; b=sgTDb6WjqU4HXuT+TdzOKWy11Gm3bjQbR55M/FIfbeIa/S1s9JeXww1gq398O1+W0qNfZnYTgHxaFtUfYWHeNJt5LZnDNxUlRUx/6hmAIt9ye0XKzv2zbwRhl13PDTKRMtqD4VyQHjxnfgAWGmdp2N2M8LWkRrrM+3SM/of2+fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O74G3cnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O74G3cnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE108C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778710233;
	bh=GcFowPae8QRmmyvVtLsSwSe7o46f95V5cN0XVDDI7Ek=;
	h=To:Subject:From:Date:From;
	b=O74G3cnOvjrU7Vs695on+9MXagM6Q27RWHvLp5XQ5/U6p2MDqTQN75j++OLdufP+B
	 ppFmgWZJkyjj5nTlPfYh5xGdkdUDLn97Teh+qEa4afLpUTnm4bUKYP/9he5pZseJU2
	 CMsU8s6tCv+oVW5Hs/7VwXcfhlMbxDPwM1thvdJxfHVV0ELE2bCjYpbB9DKrNkVotV
	 FkSgoPbEow3rrRuLo0zxsY6WPtxQtc9bvtOmWab6zpAKXogMUc/H0blOBJAe2sIHkJ
	 Aeme1PefvWqPNg8FurY9GU/dW+75oLUdyhJXYrbgM9QrxW96maCK2bBs88V5IqKn1S
	 W05CDrx2WfGiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE43CD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871023369.28434.9068752625105494623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d43e8deac6f7712459d691ac2ca728a6c163a0fa59f803c91445f4d1d53fdadd
Date: Wed, 13 May 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778710233
