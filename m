Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345122AF1C
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750354794; cv=none; b=AFtjLxu9bfFSMlcLBC/6ShsGmJr1rCMbUyp3L92waGWcHuOyVONfUgB2rx4n0A+kYGvT/apkRmGQFp2q8P23/YRCafIExXfH9mSID2uCNFAyy3z8E2CnCYT4qqEXNw5riuhva570ey0UHwPyBd1Vj4gUjz1rAtYVIERfhLvphTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750354794; c=relaxed/simple;
	bh=8Pa6J4iVJ4cK147gbhq7kDMck7WeqydFI6jWfj+OM34=;
	h=To:Subject:From:Message-Id:Date; b=Lg2SCFGUMWgOsnaNbRF3WGlI2qFNyaUc8LjlaCSH3jTV723rrgJu4ivBn63hA6V2Q4AJywyK5D5nQ/gEmgqXoCuSmDrK7EGOussC7aBtGDQr1mTxuyWsmbwHnNWHsEyYlo3jwJePtNHlDJktamcpZUb4NC2oOPuDDAe3YMYq2Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9yGOM5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9yGOM5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23A5C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750354793;
	bh=8Pa6J4iVJ4cK147gbhq7kDMck7WeqydFI6jWfj+OM34=;
	h=To:Subject:From:Date:From;
	b=G9yGOM5/EKASyvQz4Y2mcYg8aWW7VKUEE2uDL8jWbBXWdJ09APHqlJsqANIzMD6B2
	 R8Oto+rv9uioqfiGSE61fF7sI1wxVrU8idmSWBT4ZDsnGGHw1gZBB6yFD8+DP/BP1C
	 kPLvk2eS46u/kykjUnLszi3rLfATtmzTu30LMOkTodyMC8tLSW/qByk6MP/Nsc58/c
	 Mx73O0bQo7Xh4mAmjk98iI6cPzfu+LPw/sCBFg8RM4XCgBeTZNH8DfI9Tmbj9mF8eO
	 SX4FsZQUCaajxhVCz62JqvXFQhryW9pDma50wbGZQuDcVhNQGtbnZyapEV09U8RP6i
	 uc+0Ga5btwLBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A16C7115D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035479357.30580.3212593262044323781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe7cb328be3ae54f281568bbf544055d95ead4b07a7a91b9c73e0e665856bd7
Date: Thu, 19 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750354793
