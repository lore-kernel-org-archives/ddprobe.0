Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396D41D7995
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753610395; cv=none; b=t60mXy2j9DHJI562013QGJTLNwzw3vfeYgIagL+XG9DxwkYC6YXaqh169W2yg372iwKUORPoCMU8r2CERL6/z411aSO5ya+LL2A6309xA2FCNJpYIQNWLxlGtuAw4HR7nDda79gjc9npmG2svadk6K6PM7Cs3nFAB2U8RCXGuEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753610395; c=relaxed/simple;
	bh=xZc9FS/jFjuXbGihkikXh70VuZboHHHYXNgdTl26qJw=;
	h=To:Subject:From:Message-Id:Date; b=sElVZjAokMYMEYHHFr4bNgeLNUa+lEUC3taWGSCF+WGov8SoFoijM3Kvp2c2YTyFlfkw1yRXjbF94Z8w5iSj5O3YurhLAkJ/JG/Nrd+Bx4Q+Mhv8GZnwewB4yUY96MWBKQ7Mnyb7guUBvPMmx9D9MStTw5zR8zxnsT26CYIQPiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGIwywIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGIwywIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE927C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753610393;
	bh=xZc9FS/jFjuXbGihkikXh70VuZboHHHYXNgdTl26qJw=;
	h=To:Subject:From:Date:From;
	b=bGIwywIph1gmZtCj1cLEflsT8zokaJVbA+Xwfwg7zFK0L9jpvJgg9QPxXF39HaVcy
	 8WjMR9o1to2SmFTt15hp4gJgU43NDK72HBhoXHCPZVyUOMsPpGO9mTRv8aoiatLcC2
	 u1OGono9zMHWzElw6J12YYsynXK7MBq4/cI90TELdunx/ewqnXudHSEiShdtZUEMSk
	 70wLmyqJEUT49CX3uoT/2xOabxSJGdU2ybgk851z9SECIC/b3oOzkRIjr394/mssjT
	 36MF7jCF1CSY9uG8XgXNzyCrtFZUkx5GVnJOb9tkWzNcV+vo0WT7sr6YeZfrfjRus0
	 NvM25LhCN/6QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FD8C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361039360.7084.403091533023134566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e58777e42b7142b582dde864ceb174131ef32c063561825e30f812a03c1390
Date: Sun, 27 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753610393
