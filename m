Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A8527456
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784434714; cv=none; b=PmWRqzjNoIDgbDNo3HXsoE6bOSo/Dj9UYqox8UJElRCihJhpcFh/ELkm+oqYn+0zthM4r/9IQ9sJionagh8WIvwLIJi5nPeAxWxtI+Op0eXzsHigdmUSGxi5zxvMw15HD+4pPce+WJPjH2CCkA3WWbYyzISlHk9dNvQ4Pfl8jJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784434714; c=relaxed/simple;
	bh=FsjXGWSiCgLEs766HH+lIlre1gPSY+NEcHkY1uQa6As=;
	h=To:Subject:From:Message-Id:Date; b=o6lYy7h6WL+591gYUhG9mDHnUAmExmUb07tjEUzbVncFdRj/lX9ucFL8czCXYT/d200luFBJrRInUhU/wScIKePv70I4r41+SsNviJK/vt6gzOAQbehh01CcGC2bsu0znunxSBhhy9WH1IhUowypNb3LCHDwomBB9jd+terXJ+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwF96kA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwF96kA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1021C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784434713;
	bh=FsjXGWSiCgLEs766HH+lIlre1gPSY+NEcHkY1uQa6As=;
	h=To:Subject:From:Date:From;
	b=KwF96kA2Y/pSPHxVxFFL/y5qtNLa1AjVPYn71r7jppy+ZMkP7K25MNmDBK8RCvoOn
	 RxsLZo+vDwm0JfolbPg09sjE4IDMtkz4duyWiVHhhQnEmXTijhII0uamuyorfeJu2q
	 R/i/gP7S9GQlJawfXNSp0M9A87cndYFqUQ935HFDYlfvpHCshKwRI4GzerpxL14U8m
	 bt/y16IzwazXu3+hJwsZ9XndMIQ2TsZuC4If7zt1CNF2Iqg/YU3KdMrCiHihRd2TlU
	 2Dvq2jpim/ok9W9yfZrVsD/xY2dDBLf9EhBXOsaSbOxRiFLEGASe543DTpbhdd8Tq0
	 L/1PNuonMLzNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A4AC44526
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443471371.5010.11580445088873092556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9283b56bc93963d7ef7331f8a15fa2d0c36e6e2a6ef0c6e6593bbbe3260ccbb1
Date: Sun, 19 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784434713
