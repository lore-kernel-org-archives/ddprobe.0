Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76E1265287
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750083593; cv=none; b=nsdiJ4F7z8WjLHuRcklwBUKlO7dBARngxGvG0VL3wTzFlWM46LYeADkfVxxileVU3dbe+rgkRo2YY1L88zpzplN536zpFQBlulJ4zF1u8QzzcraiKANPrkK04wkrxf4JPjR1Rw8GPjgo1elxrSqfcCSbLooSg873T/GYgBmC9Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750083593; c=relaxed/simple;
	bh=Giq4xEYYiO+TFA/DxO33cgAqaayqaaQw4Q5iFv4HzjE=;
	h=To:Subject:From:Message-Id:Date; b=VWk0Ur40xN9QC/3L3afUEFDirTYb/XMfneyuO4H02wolTekFDINVu5eUGDN2xGgoDyXSvbig+o6g6NIkm6ai8U2pG2ciFFTZRc4tTm/a3zeU+HjjmXVKia6d1jPu2jEhN0HU3ccP+ZRh06PEHzcNfwNwGSl57zqUHAannBo4eJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p36QSjN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p36QSjN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A2FC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750083593;
	bh=Giq4xEYYiO+TFA/DxO33cgAqaayqaaQw4Q5iFv4HzjE=;
	h=To:Subject:From:Date:From;
	b=p36QSjN1UZKnkBtOxjiNGJHSPkb8Fb4Ld3xMnmVc68/+L3EdkwgKV2aOPRbWlBunT
	 LVXhFhePATX0OjbKZmAA2dlbmTIN4rBfUYSPdCdQ3ozoc3BNu6/g7Zw3TT+5DPKZRA
	 6DsXFkq/0pK+M7R4QXxon6rpToxhixU4hBH2fBLbIPICu/h9yNIolSys3NctZdYisc
	 8ukvRBLhl8Stjw+HfDuoDcxY3U2vvAZtCopadaMPyBG6pTruzeqUrudF4DEMTQYSlq
	 XBfL4M/sUHfTg9nh8ACZ4iumvjY7VCd5j4uiG5lg+GMUzSAqJwEydaiMvCiPrGzZXF
	 LZf/5q9mXGNEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9089FC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008359358.12225.13153014525526967454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39aff8a670af57ff7ab974bf149cb7eaa3358a0d2bc59324e4781c26b3639481
Date: Mon, 16 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750083593
