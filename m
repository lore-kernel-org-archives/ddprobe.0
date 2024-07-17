Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735731822FB
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 18:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721242523; cv=none; b=bvDw9pxrVhXnWguX39JyLnbf/YnqaDPcrDN0ILqs+JY8vHdfDTB+owETzXAtRcDv0udIet/6IWFnXDZRaJ7DQ48wF8ssfLD/tjIguOJnT6kkOrdRXIXLWSRcwV9pliXetQQPfcQhoOX5SULfs0nczXgIkNB2NUwPfxm3h2sSr+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721242523; c=relaxed/simple;
	bh=z6GS5ocYRluAjnCT1CLwdbZBVJQvKd870rTwZCjvP/Y=;
	h=To:Subject:From:Message-Id:Date; b=DhkC68ScWoMY+J9sLlT1xbDOOBT7Hc2LgAWeMc0UtzbvCrVjfDfxZn2HKX5Jt8MivCsKbWPpLugHqgpaf0CY10x6ah1VbNYuZ4CkcYvItR9gUPGuDvxEcaqC3UQzFJ6QK6I2nCxeyZK9FrX7J1QzVc+iZy+osq7zxx1WrtPLwjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXySEbzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXySEbzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3647C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 18:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721242522;
	bh=z6GS5ocYRluAjnCT1CLwdbZBVJQvKd870rTwZCjvP/Y=;
	h=To:Subject:From:Date:From;
	b=BXySEbzHuBQDSeYZDAZnRuHB6iPWe/pPrDL20obzJ2Dxzy7pQg5SRHNzt3rccvSY9
	 ZswiHSr2L4VNH8qTgRfUqjprFfdAoHjM9/OmUZmCkG2AaSDT6mFo6ZoQkGJx+tkRnz
	 rM8Ho9Cw6hvdeNI+uFyoRVDhjVDGiLepN2CkM0JD/3FbrmYteBpNHP3mMUdVtwXioh
	 dk3VXOE9O4F9PVXsuJqt1Hq20MAkY7QRmnQ9y4fedD7sGTMd+buw+eqZoQmnOa6A2z
	 g3EiGLiqKkp/C7a030YdufdV6RxET2ptZlZAryLtWmndxbzJf41kcsVVjfwqu95PDb
	 QO8+wLFNKYgBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A23C3DA60
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 18:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172124252280.8708.13770314352981132699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd0027d690586780d5c40ddccac1976607b2a816d72a0429079303365a52fc3d
Date: Wed, 17 Jul 2024 18:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721242522
