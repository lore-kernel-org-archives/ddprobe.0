Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1706C3218B3
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772461494; cv=none; b=Ix0NGi+BbN7+ZdhP7J0dAUxIuFQB8UjXCSyAtcHrDiPzGRZAaFSVAIkazF3KlmJwnAHnwZkvlOwS5OPCdI/R1fjyNg8C3EGLa/NDk9MY3DJ//+xngKb23iPkoiweGjHPcR0K1tAwQcFwlQHoR8cBu0KtZVapYBtE4YjtpKcetx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772461494; c=relaxed/simple;
	bh=3j8fliiq1y8Lnr2DnEsCD3WVnFrE6qCh1gY3ZUV9CSA=;
	h=To:Subject:From:Message-Id:Date; b=sySstoIPWqjHrHGJ7eExLln1OP9iRGT2NMzIWptGJv+qZDtB/oJioz4YRY1nxVDEfqtHzOAamdOPHLNobnBWAPd28jXbs3G91XX9ATRGPoTq3t1PbTO9h4KlLDQ/udjVB1+Lm0qenEua4Tkr+ghqDCj0nyfybwwcJBCKYrzIuGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ty2aHWn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ty2aHWn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A08C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772461493;
	bh=3j8fliiq1y8Lnr2DnEsCD3WVnFrE6qCh1gY3ZUV9CSA=;
	h=To:Subject:From:Date:From;
	b=ty2aHWn0QGtS3rUiPbdIVyTmClXPR+7mlNenm95kUcMsRGxIpwfTlVTJrgFX/lPAo
	 Y8UwxfzhV9pjcIVKjX+LXMc6Yv3uBHLDhNfOmVV85IBxXN7zg5EXEUmWSl3obgznx6
	 QzMyRY0uB/M8zZMZQ/AYoec1ZyEMTrsjIYpM176dG/12qJ7lgutLcGUMvjEZymh0CE
	 bAMJdgfGzh1udIe/sKjmM9I/kVH5Z1p3TpeWqHHNYlSIQfBudsC7jDfw4/WknCRqHe
	 Fj6EiZPOwZ3GbdoZO5g1cjoXZm1kDfQEd59QVsmRpsYdMy5LOmh6h79SnBDEyLcplY
	 1fZxAI/F9KCFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A26BEA4E07
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246149361.14056.5036818648726288404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6cdacbd60ebecb4c1ea50f22c2a6b0f7c8c1dc5e09168772378d3d46bb5c5b4
Date: Mon, 02 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772461493
