Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A59A29
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710916697; cv=none; b=fgKFBaQYROBCIudLw6QbbQyVTqFec5wklLIUPJYA76KaRcJYMjFHIN8FYd1Z+n9oxHSZ2ggYNHiXlsAXN2Aj/YAEkSakNuf5FE4YD88uB+GqOR580KwXOXomz9zv7SYjCWd3aa/D3BA2acd+n75nfnw+qsBEAVOiAbFtksFHlLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710916697; c=relaxed/simple;
	bh=BdvxKtIQH7L5tyRMs0lNlY9nB48uMBKASKoAZKt9wGc=;
	h=To:Subject:From:Message-Id:Date; b=VNyCbsIN273Z2ZvR1KAk82MLv7cES8Pq+brccxdj9tqjP0ZT/Hhvrl4G87s4jFn0h1axWjlkbYMSEzrPwGfAcrLqrlJod0V1UpuOK5f1NLzOIj83iTycIeH7yFb/egCN1rfq0NeWAt8bTShOJDIsIIdY0wbF11eETeidB4IK1B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhoO47W+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhoO47W+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7001AC433F1
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710916696;
	bh=BdvxKtIQH7L5tyRMs0lNlY9nB48uMBKASKoAZKt9wGc=;
	h=To:Subject:From:Date:From;
	b=MhoO47W+wo9vDwVzQhk4BLlpBdMizTwOJeZIIhkUPxe3LsdmawnthD10m1P6WjXA8
	 jPzRMQMtLT1R+Srt2Wov4YinaoZXtQdk5r5ngjzxLmDf0BADs+hdqUpAiq6CbVZqvX
	 PCfPkEftjgqM6hGzn1w6EW1or0ZaxJjluRW0rt24/LiOWEGQ4W0r4GV9fYK089Cc8e
	 GGmzQkZ0KESNsN3Mqrr+blORTpJJZuSDx0oryLZzYD8YFt9E29ur6A768nWY6+xcfK
	 i7aUiQ+WvnNicmYKcy/XdEkGnN31BQQC04MHxVddpZrEqh2wh1Ac+00vUV3hD8PJjT
	 /Z+mZrFrVQu2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC07C54E67
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171091669638.18797.7131525273732455486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad19901ea5c836926e43e02553f231c4a4f6d81d5c6a802688967812b635f8ba
Date: Wed, 20 Mar 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710916696
