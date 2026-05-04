Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395441CAA65
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777911454; cv=none; b=qwD9CEKfs6cyuFeI9oZC32JMvwzgtWBAnh5sgwl6Nis9pH7mj4sb22+Q1RlJ9F451F8ctoKhUM1Pvh9z4OMQ1UMfgrfyAwt1AD6y3yphBcKA7vCIMsLlR+TQuTVCU3bmO3RSo4TjV21EYBH9mji07wBof61JWnkXWlgbxHFc+z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777911454; c=relaxed/simple;
	bh=HefZyxtuyyXpvoItiI/IojyJh/UWa3zcX61OkfIpquk=;
	h=To:Subject:From:Message-Id:Date; b=leTxxPbIdqYWZ3SFS2d4VG4hs2mkVN+s8x0qI0XLnc1QuKOXJGayaRCrtSJVlY0OkD3R1+FKWC1qJ9A5ScQnDp3OZs75LCuUpI9U5H6BshSKGeOjHV+FtqT0snVhDrzBC4eCSM7Dv9wLhjefBSrgdU4PCpP3qPn/AV0pRp2Rat4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9nFmKAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9nFmKAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F6DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777911453;
	bh=HefZyxtuyyXpvoItiI/IojyJh/UWa3zcX61OkfIpquk=;
	h=To:Subject:From:Date:From;
	b=d9nFmKAHXGDIzarMA4J8WOEVXk/tV3Lra6pxBJhs4Kh2viL5WDgUWsncpeIgmnVfV
	 Bj1rt8EGEsoGAFrKBEpY9PoNrr0S4tbliX6xWTB0rZTtdlWUJnHwonU6g8g8klg9dd
	 gpleYvqvbvuq3kVZmApx48QhFGqB29BUcHnIDCCIyZXMI0VffwRNI+rFC+fIxJC2ld
	 oryNTNF44pca2WS71V9oPSqtfdM2Nl2Kq+PgxOIReYDmEUjKexYaINqStkvyOU9sNi
	 rgbxpIqLJ6Xswlv+WUhATR01+cRL3tO7iiUAcMKS5AjM059jxRrJDufCzDxs1D+PnK
	 MR0mi3s1t4K6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD30CD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791145369.3392.4438055225050114595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14cbfe6c45ddba89f01c6329db6f9c8a6fa3d5cd8c0eb2cba7a53c5cfd1ab2b5
Date: Mon, 04 May 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777911453
