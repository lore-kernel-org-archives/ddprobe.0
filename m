Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAC719F127
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732798554; cv=none; b=RbtY5a4oN1dRLjuqGJ/f15iqWs+ndH2p/t2Vpp0UWxc+IcF/THcafttbUUVLKjY+x9Mq72yGO0Uz3HETMIVwodUEMp5kxcv3kMo82w2vmGuBeHpsO/AYianyegjaXVTi7D18kwKWYrbIhHwXDFdyqvxzfO4PlGbmpXc6iHzTR+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732798554; c=relaxed/simple;
	bh=EQDPwApiEr6c30hvGwDl3f6aGWxkE+j6BA58TDRRXPE=;
	h=To:Subject:From:Message-Id:Date; b=Oh+bfX6V9Vsjmw/KrOyugigNhelGBr3GNiSp/MN6yzi+xZ5G/RTJXGHYRjFNaW5tayuSxiZRaq+ExzlpQNyR7I5cqhEByLtVnosutvt+9sydkiZG+K68eyrnjJeviZ4+JfpbftXIDPFY0oaBKOI/ooIX87q1BKOsmcOaSDfUfsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNVZ9m6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNVZ9m6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD336C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732798553;
	bh=EQDPwApiEr6c30hvGwDl3f6aGWxkE+j6BA58TDRRXPE=;
	h=To:Subject:From:Date:From;
	b=UNVZ9m6BsPN9bc2tQb6nsJWgaRPE3/XJ30mLeLHOHUrBXLyutK6+PyiSXqqnMOgX+
	 /2ux0LrWxd7mpzKYCyhvdw8yJsMIm3yBbmjEEk24bbYouHXka929KsHcu7WFSkKW+D
	 U/LZ7ab4nPLOOZrCByKwL8Ce0UyrezESP4fdJX44GmhPDuoKzyhT3iIBo5fU0bZtkJ
	 XC9L5t3qvV66LI4uR2n0Bh3rWheFfA3acdmtDWTVQxDeo0Z2QLP+c4Oo+UxsJGFhVj
	 vU0cFXlchgHDOmPOQADAhJmdHqXpAXZ2VjY6UOzbepxKFfAYbwNyfjAuvUWYvn7umh
	 qrD6BpNNZQRyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A733BD69104
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173279855367.30694.686008376607363593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc500c9c702c5f142c5231866e286e7e0fd01dd4b2f3c52ac68547a525ab1eb
Date: Thu, 28 Nov 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732798553
