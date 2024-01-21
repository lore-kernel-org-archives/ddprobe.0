Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1880D38DDC
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705875497; cv=none; b=TWYSw4+rxM3CPr6kJjb8f+BQMdPnYwCocW7wX1OSJRzqa5OopJGQ1gggtstQ9rlFEID5X49Kxx3wgJwgy9oSYKOXrBai2ME0aP7kyl6x+8jDONEFVacdSQ2p1sJE1fWcdgKpOztlm0+FQKRoXCVSvjb8jGfWBXfnBLIeo5RCyms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705875497; c=relaxed/simple;
	bh=Rd0zG942Cig6qK/FnPzu31HsMl/liufpHl7u92EpKIE=;
	h=To:Subject:From:Message-Id:Date; b=BsvMx9w3TvEoZV8dvl+yvYZX2mP5Qo3bcMpJpIt/Hs/JWFAIx6tHkbLE+BTrpCs8ZGr7o2CwZ3zkQceqqEcqHEJoES6YE+kIiaHjl8dv8CIeeBa9VgSNC6ksXCAyhKWGnCVnBvoGzwio5pvIrRKO8+XdLdYNqa18IyNdZcLdUoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrQjZn+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrQjZn+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C4FBC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705875496;
	bh=Rd0zG942Cig6qK/FnPzu31HsMl/liufpHl7u92EpKIE=;
	h=To:Subject:From:Date:From;
	b=VrQjZn+ViMmFC9yiH/aLTAuYkpWjkmcAlqhoqQS8jINmWnlEgIqDX2oZGct2Y+Mi5
	 Cx3Hli1eemcvdVaJwfgA0zy+tlUObFI1ypoBMro30QQyGQmTog7j4EbNYu1C2Tpy9g
	 JdRZ0dLZqoTxI7u40nDVkI8PS5/LxkTN986y4Y2O0p5XccLq6tASWo28pwaPhYBXDP
	 aGf3HpAzo9IGDq6hRN9CsvSBw0NggOuskYdZqT147Cy6o3pA3Dt1a78ADDxDF3azwY
	 tdBjnGj/RELBfNur1VXXNHB9bgxOW74575v3vp9jFmi1Ei6jIIKbFGcHvO5RvxAIp4
	 9JW+QjbM5iR8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624A3C47DB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170587549637.20889.5019149507200767253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2c442545c9f5e1498042b790dc74056321287c56de71ac3501f625e084eaf7
Date: Sun, 21 Jan 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705875496
