Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1461922A4FC
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757165994; cv=none; b=Xmkhvw2dtbCAaF1pWu0glZ+YmCht/SkFX6MZ1E2v8kocpvOdoKrzJSPk+/72pX1+sSi/nrSEOyNyqKN75F8wPasdWIce7Wxuve0XY0c48RpPFun3HQdMiUZajws/pQgbGQVtnFmRmtjpBX17xynkrsKwouUyu/OV3tKOLeft1y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757165994; c=relaxed/simple;
	bh=0nnSN8tV/pMg95y3NFo8Sktnim1nlnvtjvDIXQU/lDg=;
	h=To:Subject:From:Message-Id:Date; b=NQQyM+yAC0iYXwwZPteS6kXSDanI/N7i2v9tKTURiPEsDfOPzzhFNYMTcZwKcNmg1KJd8Zlws0OG52wxw3WzBeOahT/tJmoESGCn04EybLaOG7cQJ1PZtPFL/bdx+q1HNC9vlDg90nDp9fGuvJhLz8OdHPOrKH980OGUpJTyJBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLn8LSgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLn8LSgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BDAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757165993;
	bh=0nnSN8tV/pMg95y3NFo8Sktnim1nlnvtjvDIXQU/lDg=;
	h=To:Subject:From:Date:From;
	b=TLn8LSgPdL20qs+z+lPNlw0k/Jf1BDwsJGAh6YzBGBtEtc0sz309+41LqUrO2rKBu
	 +VNNLm5BtaWRLK4eqkYpByHXpaPqhRoUeYvOcy/uBIwzkeJRI0tgbyke7r+RqR//LB
	 hhB4T46K5EbK76yfqfcxl/LNGVAru5UTrjPL3ivdX3rWgYLswA2VG0G6u2ktFSDgR9
	 qUUefSeUKXybKXkaeTGKKpEEukGRbBLEkw2f9cEt2TdDPRV99YErtIf/R0U7Z7qjFY
	 vi1ABEBV4xucbtf1QZSCOpfo+ad79MZwUg/idRDZyR25twuxx2iKjJHHj0XjdGxol4
	 z3uR38zUCVXUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF50CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716599357.22490.6663948938796832083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40e68101777004c6cf1f4c389ab55a69895d605fb4d2dad5d73f8ab15632778
Date: Sat, 06 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757165993
