Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1676927453
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767404034; cv=none; b=SJvKsNPsVhKgdy7QILiSz11WTkj4k6QhA3QNCYWSGx5/YgwRHgx3VC4q2q4WhrEVP4uR8dSO229SIakDzLUbV3tWA1z+PbVLJE1AYEFsk4ZCQrKvd8M1OoXTkbfWpgxV+438mhMHDKZDWzfv7aeCTsqujsUUbKtf8IE6GTGcEu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767404034; c=relaxed/simple;
	bh=eQI4gDfc7CrkIQBXRqiDi8XPqa7o2iMj0a8OWiKnzJ8=;
	h=To:Subject:From:Message-Id:Date; b=MV2pvI5gN0Kv/b6f5ukXBX0617rD9wLviCdYkGM/kRSodVtVd59sQi3+Fwzuv2dwoPCWEULjk4VuXKAncfwkxtK18a/R2g9Kh5cZKfITbk5rGWjlRkKfbIJehkjDrpXqbQmF6L+0Zmj7FDY9Ns5zyWGPDopfo4vnxijLKKohFHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjPRiCbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjPRiCbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A596BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767404033;
	bh=eQI4gDfc7CrkIQBXRqiDi8XPqa7o2iMj0a8OWiKnzJ8=;
	h=To:Subject:From:Date:From;
	b=UjPRiCbsGIG4xeTdtZlp7CBcn4ScyNY1NEpV6Klnqmvs0JTnxeVCNREJgj4JbI6kw
	 HhC34kkJ4Cf6ye8Z+avUGNY+dgQUk2Ftp5fTjff7yFOutyZ1+K4edrlfgg9TUJRaMA
	 MobQgfBe4WZx7dkxJ2Vxq7Tq0FYVAskgM7PXgB3lgc6ILZ+7MDPnR7n+3F43gFic25
	 cNTYbdPDnyLjDa4Qf7YyG0iJKTedKOD7FsFlx5EJm1r8A4UA04/WGWBnObCdnTB32L
	 d12NstkhoUy37i93L/hnY0ge+H59MjgWS7Yip0ZuaWc+41VXHPlbrO/X5kUTATOxBN
	 8vtgC3vecxftA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9109CFC6166
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740403357.24119.17952862754048863860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621903f5e61c89ac83915a37f3c880bb1329ee9bdc450f1f361744baba6577ea
Date: Sat, 03 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767404033
