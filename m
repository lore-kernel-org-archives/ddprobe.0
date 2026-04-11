Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BFA2C235E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775867854; cv=none; b=ZIjsm+hX0dHe8a5VsXYkMv6B+jP5DicfCESpnlcEaFTyPg2Eh2FpldHeEYyCJBtDpciyAHqlfri5H6I87bUtOoP84kUk+wuE6Fd3NaHopcE0EOmXW7xkMMhFiC9AWn7+WIpUVVOGObGMZXBzIL9UExZeVkr2aEn5XEoDeiFOOno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775867854; c=relaxed/simple;
	bh=NK2WCi2horPkh3d2tudVvrowH1vIQRzHBFPREJ8Hid4=;
	h=To:Subject:From:Message-Id:Date; b=fGcxXCEOFPwY6yUul7p2OWEx8B8hOro9Ad7+7ciALDvHcmmlzjIOuXnYuqy07a/k4jnXA/mwLX9wSEd1Tr/wCsaB4mjeKs1oCJaYWv69TdtaW4OIG2kqt/PEc9oQmr3TuChuuLROoFBhaG2/yDvH4IEeebapJExh0D8C1wCXiXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAZmuEeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAZmuEeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40B6C19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775867853;
	bh=NK2WCi2horPkh3d2tudVvrowH1vIQRzHBFPREJ8Hid4=;
	h=To:Subject:From:Date:From;
	b=jAZmuEeNaiDRZnO+QPdqp98jjkhK7c2onIKsbyT5YaQRUjuhquKiPaM8ZVJcDubgD
	 goVsA/qsZBZ+MTQJNxHfX/h8bFO4IKBXcH+zAQLLT/J6As/ndbghKVleYSwQq2EC3I
	 8ZD72nGcn1NoCkUDhyyrI/k6AtrBGJSbbhqGE62IEruXTzFAykfHSUX8cAi7s/qd1A
	 bdDdAsFHXyKMdmxMCW07IQj/FS8v4XR/3XhG1Uow291fL01FPrmowWfsJkihtaR50f
	 5tk2oIzTKplNXW086Kd2C7Hedwr2PNiq9wsROhib+mgg/sLehqnqfjmwOYqGOtxt2L
	 9PantV9N/QtOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1561F45A17
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586785368.31063.3297283592092224542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0e4982e7ede07f834fecb201d837655001a2690c414579ba9595ed11b3c4da
Date: Sat, 11 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775867853
