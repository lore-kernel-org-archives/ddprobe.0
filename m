Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290522BEC27
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769416434; cv=none; b=dMv4Sm1vMpiIgo7c8VdwI81DoKAnzpmcVynGNoWnjpPptfBgA9RxxmljuAjb6xeWBDEf1MufE+r9afxgP/kpAaZk9fiDxY1s0rWoc8smKnrWt0rp7R5s5Ym/zyJIsah9QxuA/s/zG/6RiSDqymOOjd0p+1SIQutVVLdAWiTi4U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769416434; c=relaxed/simple;
	bh=/b1FWVBSguzOAzdJaAiq6zbNnkxxF2OHe76q5MF6gMw=;
	h=To:Subject:From:Message-Id:Date; b=YADbUVQSMjPOm0Drq1Fa7i2s6N0APDiOXMymWNGB5hl0JsUK2akrxk3+NqyY+TtE+ROvTJfnE1r/VPz5mRCwhXmH1WPnbO9IkNye8kUCcUkjybRclFM63rYWEH9wu+OfL8opCiCBDRS5Yrudyl9L+MsAtdzyawiFGsNEBgRr34o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onH5xxhT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onH5xxhT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FED5C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769416433;
	bh=/b1FWVBSguzOAzdJaAiq6zbNnkxxF2OHe76q5MF6gMw=;
	h=To:Subject:From:Date:From;
	b=onH5xxhTwQpG9NJZxTExd8DeT5DAa6mwgIWiXpRmK26v+ST+vhjm7kvYyrFnSMLGQ
	 qbdLXcrHc2jhY1mimJgjq0jlcHyu1cCaFfuNB0CEct+xmC34Tcl7z+pufwevRcrcvV
	 5QAdKiUAnpcuRfj4k9K+vj/rwzmUaQ4fl+w2HUrurKu8DwWFcLYwO3gDTMiBjHzR8z
	 Hai3NiKUaTshyiEDD8Myy+yvDyhgdxlGGS6Na9rZLKDgr6glNVMh2MkQPp6YGtnBl9
	 xeJwpcDImn38frE2DWMg9UdoJbMLzg/4IM+HW6SmqMwF+XAF7tE0X1QICoKri3lIB0
	 tTkq7ixDViZXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F927C88E6F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941643357.24730.10075502834051770706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2e97faaa7d140978ed082cca45cfeb443e9d215c6349e1ae36081bcb7f56bf
Date: Mon, 26 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769416433
