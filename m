Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9D820B1F5
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751701194; cv=none; b=UtCOXGj6TAgE9GWtyc5otXIf6yLBG4V3aHbQoV5lkgDv7hQBHzBBIIHigS3XzDckOVf3CewHUBuc30c/w2knSjTHOApDf2CedLpJl/S9h84sJEq6TC7+ocXryGFIlAy6jXcSR7uoJZ4j+6ERs13lxJepkS91Ah+sv0xV18WNBKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751701194; c=relaxed/simple;
	bh=+ny9ZdaJ76j0zyaTwxYw9Bf1nt9c/12emvcCx051K9c=;
	h=To:Subject:From:Message-Id:Date; b=nNhU1C1jfbQFhe4MUBntO9JED6esELb1kbCYXez8f1KzqVauLGl+0zqWK3NGYX/I6R53BNggeu/Znga50fQNMM35flVitLr6+vbsNukPzYKn/r534jSKvJIshz/Yj5KFvDBQKi1fuPQcc8IA0RuHn79Ab7/K1QWIe0HLF6WhCGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKNaVlTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKNaVlTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2445C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751701193;
	bh=+ny9ZdaJ76j0zyaTwxYw9Bf1nt9c/12emvcCx051K9c=;
	h=To:Subject:From:Date:From;
	b=JKNaVlTbSveykVs7FkmDts6WxTxKYHfp1C+Pgy4t4YCc19hll5q4GiXawtxHRPhcf
	 9W4OAeeQNPu7/qYAqq1AFfbdpbQZ7GqnGgJKqbIobIz5Ej/UY+Lf8LGyqe9ql1Frlm
	 l6TDLvUYuG6ZvPwijIvy3a6CiCXF5rhxjdcZW7nXndvnJ4WZVPCytplOfNVqvdQs5T
	 i0icqXKOFANfsYp9yB5gONLhgDCC/KyPPMBBGf9hbcWAGZ2qD6rjYYl9VuXANsrh9a
	 fGWiud96n3XhPYUYq9TRbLLnb4DDjGdPw7ew+njqDwytQX8M9SzPUKKk6jg3YQurQc
	 4iymwOmM2cXew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E80EC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170119357.1309.6771911224103267501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2986a3f3188ccac85d75c3b808740584c399e2626670021d73a3f7017346e577
Date: Sat, 05 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751701193
