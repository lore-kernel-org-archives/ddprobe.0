Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF36244684
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772259894; cv=none; b=DFdvqtnt60bcETCi68Z/RRh3bC/lF1SEOZSzB6vBdi6uzr6dtsbTJIwwSksDVHh/la5lpuA2nWFmWTCiQJKsx6izEjHMIxXSPNUnsWBhTJzWJwox5/SFcaYa13NleHbSR+irvDapP4tDeqa7BoionI5XTIesSEsgYbGeGecuo4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772259894; c=relaxed/simple;
	bh=p1oY+5M4uIyOFNefN6xNMlVfGWIceQT+5mAzSRCGHnA=;
	h=To:Subject:From:Message-Id:Date; b=NYixbOsc2RjluguumPZsEAACOOXBj/McojajbxnwHwYaIGjmTLvGM2MsXi0mktUY/zj/ZxkokPGR0103cmSp0jUmob5mxwrkN7ZBNB9xaPdYQtCyJa+uOlPgH/zBjlbmcadV1l1y92y1tl9mOUrzdHEqYlIyDn9keyslDjoEZF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEv/JrO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEv/JrO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F5DC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772259893;
	bh=p1oY+5M4uIyOFNefN6xNMlVfGWIceQT+5mAzSRCGHnA=;
	h=To:Subject:From:Date:From;
	b=FEv/JrO4N6eXivOMDZchnsot5rMMpF0Gtn/Dc02fdjkqBycpA3jdKniI50vnHzfLk
	 nIt+9Unkj4Y5foAlv4y/d2LcozJKAxkxSZe5QJARtl1K6N1CSZaxehEuIVlDZDXj7n
	 dU1pl8Q1idZxuq+RzrJDthq6NxXYYuWT8m0Vwd99GlImbXYmG6rDQzdoZQGoOoz5UY
	 FnlvsejAOOpKJm1CIscuJmSRksGtGC4ppycKTn2ydGoe5PL0NVadxYJAIweyy+Bn4l
	 muEa6tHbd+7WBCa3Iud6mSV8RLlTT0BEEiOoYOxt9qGEv8P7FQsaZ9z09KKOEnO3N8
	 4cn1ZcT/cNq0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E8FEE4C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225989357.3645.10977458180451954201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5963e59f1354a7a705ca2dc27a1afa0410fbfc1f80ed7b2ed82249fb87260fb
Date: Sat, 28 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772259893
