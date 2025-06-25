Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCE91B87EB
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750819194; cv=none; b=LG4BSM4K3+g2QXc2FdPstaNwptT/gY/pkqRnUy0mbeBmmXeetMPGxu4WDwXTSqjKX+Ymb0uT7d3AnkD9MQ8S7+mQY0wWgVXCTyhTULuZTgUrUsx4rQsdOkxtiurBXwjH1MlK8aTX163Tz3RlS2I3ZYnBCku3dorF06rb9qBGHb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750819194; c=relaxed/simple;
	bh=mIX1h/trm0dCTgBOCrFGgEZodog/skFV2fFQMqeOf/s=;
	h=To:Subject:From:Message-Id:Date; b=HiRqIikNk7I5scMQvA3g/Uipn1AlnpMwBjj4W9CmOEHn9EmwzwIlJlbHq6HiLdIzc0kz6QZJTeITjJQsId048WMadChYGRFG0jUF/KyFKlQnCgChiU+Cgxed7ErCx7Yac0Bd8e88SK+8znR0W5LSMCuXhVl2DZaLisRV+BmxX2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGQ/38Xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGQ/38Xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F3DC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750819193;
	bh=mIX1h/trm0dCTgBOCrFGgEZodog/skFV2fFQMqeOf/s=;
	h=To:Subject:From:Date:From;
	b=HGQ/38Xi4cfzAnh1vvBsAG7jGw9rCg2LCnOSaEcB4KixUpL1TnoXqgB/zw1jSK/R6
	 y6HEtz9JkNxIX2ppVXO1B6SMNp+fipDR2Red+pWHGlhFXXYShdmlXMo8TNivqNpwnm
	 4+rfpaMg/BnQaJ6plHyZnctCA2uKs2bRVENBWAR8PAfje5pTwNTFoetHrPHKoPnKq9
	 Rm5E3SBP+9618vUQLDR9Zn9AQ56Oc8stofA/IyemVslW3ZWzdKheN3to4C7UyP9Ks7
	 +aVfKxcdiJ4/Aq/SGm750iBPzqC4Xx0vHQhUfJlbfZZIVXXBxS0dnSqmgIj/3d9Yq7
	 MxwvhwyEEUU4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F169C77B7F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081919357.16317.13940680344517547173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3598f205775365718b0cb3f47dc776c234377ad35fdfd6cb7fa1016b1d317cd
Date: Wed, 25 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750819193
