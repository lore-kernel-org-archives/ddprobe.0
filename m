Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A711DE4E7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753900194; cv=none; b=Qkq+hz8HHDtlWC2pFand2bYJOAieN8QOu9LPG/Kryr+gqqrtZWjsLJFADr/+bb4v/S3tViMpTEtV4HboHLw8//f545SHP2ueArqUrsC+iCy3ptRIwfeMpGCaX9oLX7SYtYZuWeF56seoGfMNN/hP3U3A7GX+0Sz5D6QGkEM9k8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753900194; c=relaxed/simple;
	bh=fk/t2cbhMDwXJVlmkexVDBh/KM4TULalkxh7Pq2DyUE=;
	h=To:Subject:From:Message-Id:Date; b=XCBcQB3NGIlZnzr2uxvH92ZJQsBxmWRuyb7FN5gPeoQFtpV4WR8QmOSYr7SD0/WNXATFqec6GX3o6/PZ02vNy+bVFErmSeB1xzLLHHuTwdsYDGYL+Nkt77mwVcPhBdSb/8KCCwzfxWhrf+NeKUuuOHTNNz6BEAVazq0of+Dmgx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTgtFjTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTgtFjTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19E1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753900193;
	bh=fk/t2cbhMDwXJVlmkexVDBh/KM4TULalkxh7Pq2DyUE=;
	h=To:Subject:From:Date:From;
	b=mTgtFjTUrFDF9ebvfJhDt7YEgO+KXIU/CQlWengz/ysVyOUV7KbtvUnQoH+FrZ6W1
	 eO5urtCCEa60BWVnMArcyc+7ICG5Tfd9pgeqo3fzvUBVwrigIv+PYEnyvPphxed2KV
	 vs/VBZOGMedLxA0XfudPNiGpHrC2b7lDn9s1nzLYTJ/8jUz8rBSKIgUW+Ov/6PucvF
	 7yCg8HfWTBuo1gmXfQpLj1gotLctSw7mZw0lOUX+npmD1n7F3iCCW3ripbrsiQFkbI
	 P57fOLZbEOwpsYYYiejc5L9BiGImlSRcNOQ4aBAasP2la7WPTYEJsnyyoH+Lo8qA1i
	 HlEceK4JfUwgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F9C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390019358.12323.6042402963874845177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2ed9a9fdf78ee0247e85ad7ca7f3cd1708946b5bdd696819fd7b3a2dd4427d
Date: Wed, 30 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753900193
