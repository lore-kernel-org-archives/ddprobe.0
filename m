Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3211EB5F8
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766645634; cv=none; b=czrIzCjNYi8D9Lt1hVFta5CdTIKoEknhXGicJQ2UHEhSG94pE7HVfHqamI7ugVpMhg3BxaeKILEPf/bAxXorY47xhQwB8SwIKRHSgh9l9MzE1PiXJMB1337SeEkCVXYeZD5VIhXHpZqC0lldIFb0cQ8dK2DqBjBZ1HrDqoAhP6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766645634; c=relaxed/simple;
	bh=acc//Bkg5qpJONJVXREL9AxTfX87cBsbAeBP7IGBWk4=;
	h=To:Subject:From:Message-Id:Date; b=hInFiTCsrHAYoQNtcOqPPpz81Qst3yBm5/xvtP71LvGE4h4gNzIkqQJ3rusLmZq//Z/W0gahwENYCcL+CVEoavqyjOFwboaz7WKgrWo5eFZOU/VJexomay32zM4Fkyr2vV2J3I1BOqkEJbjRQBGJvg26hyvzm+DZsvnBBoK/uxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVknet4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVknet4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC560C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766645633;
	bh=acc//Bkg5qpJONJVXREL9AxTfX87cBsbAeBP7IGBWk4=;
	h=To:Subject:From:Date:From;
	b=KVknet4bnEado4dzm1hx0Veh7oGEogOIEvRIyn5L5/N3qMl8bAbEvVyem6yG483tX
	 1vGiq+h9JKw+mHhIs5WhbGsTJinqdwToORrmQlh0DVuG3GHetiFzWlU3GNkA90jmRr
	 7wqpSzmwTDquLIwXgM75s3pltBqfGY1VGiDC3mN+9KncuSSaWUy+vWWPo2O28ljyt+
	 pk23wOYpz7x47bSn3P4Jl6NeC7+tw8WM/Lq4oR6tdrNQ+iYplxZyX9EAKsuHDHnFL/
	 wffgK+idavvEa/KG61gtbNAlc6p6n+LCTYEWd61fOdc5gTk9vxhImndZEvW9lBEVOk
	 TLuToFzRIw0Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA50E784A6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664563360.2741.11380872684590809898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e590a0f4238d1592b7fe8f0e57a1c841527ce46788007b0cf02ae941706c3f2
Date: Thu, 25 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766645633
