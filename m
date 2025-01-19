Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540272905
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737285954; cv=none; b=VryRofBXfWe/CAcw1vahmU/0sM8jfOYl/r36oEngvcb+t/7WyavqeSKTNZhJ1FbFRx6wSbM2iEh1+18olnD7MUhp/FnovABFj3YJIePdljjk1480/A81KMIFkjUD7PmkES0Q6YgjkKhTPs9GLHGrw+lgfFSYkB75qec2QqhwJE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737285954; c=relaxed/simple;
	bh=gBqDuh+KFgLWojj5rZ0iVOMLtcYLR35brIrWhYzfh3k=;
	h=To:Subject:From:Message-Id:Date; b=uO3cKwEix8JEo0fadP/McMl8gmoBPM0tFAqnuPPPzRQWvNALCCIXgVR0lOrOwUnnEh1r6ZM6D/7OD4z/PGvLgexHBBJnKy054V2kaudE0GiExQ374xxx9rkzxl+2xkglxeMDU6Pynaf4UXBZKZ2+rpol/cdNy07WwN+G8dPeW2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0POshDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0POshDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD452C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737285953;
	bh=gBqDuh+KFgLWojj5rZ0iVOMLtcYLR35brIrWhYzfh3k=;
	h=To:Subject:From:Date:From;
	b=I0POshDphbGDkF5BUmHN54aL4kRScHfK9ZM8HhDfL9uCJfuFIghercRjPPYf+FBwT
	 LDHnDpNf6Vcpm0PN4fce/VYsEgFH91C6ubfSexh8A1BZepAZOJmiJoFq31IKDdCk4V
	 w1AHB5a0Hwi8aVMo4HpPLdrrym0Ox3NHc3s0B1xVpYEjsqWswplOE3/FG7z/U/gGd3
	 XeKc5BBOQYv/7pnkEIDQZKzJID+GTODR7ZH0DhNG8LYqf0vKnUI1ha2MEXo6lvnUBK
	 3NpKGA9PIWfLGhh4eqZ2h7KtSGqPYShRXEa4okbeUhoDnbMuNKn/0gCEFsYujObRTC
	 q7PcsODhrmHRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A465C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173728595361.28166.11265613609345050485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11dabcd4c8878d20d84b1da9e62d111467206462b56f52e7d5b7e7188e795879
Date: Sun, 19 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737285953
