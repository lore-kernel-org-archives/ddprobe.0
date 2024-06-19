Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2080A14E2D7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718804963; cv=none; b=bWYhhTL6dZxsiAW1AsRly9YsZqvJ8RGbZfbqdUuggBRB0kFeDfXHFG1Aj49AsOOWZ5YiTNrX2ET16waHa5QCCZlE1jQWYxG59yyLJTTy9uRX5/z9sD8hoMu3akx6rBAcsaKiZAZTO+5h6RFW1vPwdl4EVnix0Ue6YTWx3vCjTXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718804963; c=relaxed/simple;
	bh=jtVgRCeMwBUPdW30mYFS6w3bEM76EbjFQr9Zk0JngKg=;
	h=To:Subject:From:Message-Id:Date; b=QFGOO1zRgOs9YLpLjuaLdyERtypUjmbV2ODq1XllxqziUa84dmG1bn17lQZo85hlXWO73PdvmjLD4S3WqSIOtEFe9EvgBUuh4DKT+B03R2vrFPrAzpvGyh77ZZGbT/ZupKFTA3BEivrLwcEJDetseVAtFU57BQOXbOfyMZyigKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKx2qMWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKx2qMWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8091C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718804962;
	bh=jtVgRCeMwBUPdW30mYFS6w3bEM76EbjFQr9Zk0JngKg=;
	h=To:Subject:From:Date:From;
	b=oKx2qMWa3BgENzVJvEWyD6QAZesF9Euhc6SC/SQ1reGlZhaysU77KU03ZF63jrwnW
	 YKOOAka9PNZDYMaj7Fo6AsCu9Uz7NCWMXReXHC2APYHWKjdjN52RJRRm1YhsWveuMM
	 tSkx6J5K8Re3fVMDbb01142dbmPRw2DSq+VyAXfycDQE+UgQG828/++U9Vw8GoUzlI
	 k04IoG0QD3+coiy4U0/6rPztiofgn15rgBThJ0TjNhs3CEIh+Kw9AnoxtsZXHIsqvB
	 PZ9aYtKZ++2e3lP+mU6DPfmYzNuwKfULTRnbCoM13XZFayz7Qqo5RL+Ydsxp4EKF19
	 48tXA7tuc4GPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BB0C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880496279.17508.6762881633041519694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8a52ba0f87f92051f70d30eb6f61a03e5c5d25324592a062af369d4fef67b9
Date: Wed, 19 Jun 2024 13:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718804962
