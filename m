Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4C91C5499
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786752034; cv=none; b=jqY7RIQQgQ38S45pi54iMDChDZrJOa9sanN/z/S/5j5TlACyF5Ar8hEDjIW/3x/tdHtZuKYkrHmHUqDZ1szrjDWhnE6o4CvLu8dPxzAENMAsZ7ETcfwcNiQ9vhLvHAzK2O8mgmWpmAvSv+H3/zjP8V6+LvTMf1J/LjiYoYNkoFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786752034; c=relaxed/simple;
	bh=pDBhnnAD8V5uKBHIopdcnUOoIohSfgQJg3KC7Ya1JpQ=;
	h=To:Subject:From:Message-Id:Date; b=G5tdDpiOP4X6Ifydf8z8hCfISPVxx5wLDJPp6nzeTkLZeho4jJ0oQ8ei3dp/kw50pPD6L3bXfo7+cbad2SdzzvoSbuEWQBBgD1YaywyA+sZzdSb+zrJ9C1rIEEcbZssO5pwhSp+4otpgu4d3QzWn8CdXRmhFVh2u4zMKqq5aTqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hakCfhbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hakCfhbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF184C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786752033;
	bh=pDBhnnAD8V5uKBHIopdcnUOoIohSfgQJg3KC7Ya1JpQ=;
	h=To:Subject:From:Date:From;
	b=hakCfhbHxb4pntoGulNrOC7v0aDrypOIdb0y6MvgQYke9HT1mWaEWpYFjAI8Txmu9
	 +X1LuLTy9MLUVLAqc5QEWvh9oS8KAzWh7UGnVZEl+UD3dGEUGJ5kqXm5jWnBXLMrbB
	 N363dnuPPjq+TOpcvSz+kwgwYgWgIgV7M/blP98MoxqGTW5GB8H3/rJV0Kh8Sd+Ep6
	 2tGtiBFy8H0IvO8626jnWWOs1XTEKO21gnOojgI1yt+mBuTSGhg6vXnukQ2ULmiRpk
	 jkAt59ijRHx40OO5oezgy9ZIsZOuxlF6E11Vs4gfx53UuPtDW5mpnkk7szPMiJd87O
	 8Twt5Cck410DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7A1C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675203368.12721.17054354821755297849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bcf2c6a1f08dfd2d431642e6a78db06db4a3a105e702a793e26272a2eb97bb
Date: Sat, 15 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786752033
