Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534E73E0C5C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786000234; cv=none; b=C9vFFPjpOSpDP/Yml42wyM26LOYlkGBku2lIcIA9lQNOKZFhdd8MRCHc8kGI8+z5tSQQ6ugWyf7dCQqkV+hPhnYhNPjiV5zeNFoXcebk9tgzrZ2xR9OuDhv0qSVqCnDGWnQCnAjfmjyKmreIer92sBJc+1bn/PVIXgTFq5It6a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786000234; c=relaxed/simple;
	bh=UcGTjKWoitEFJTf5C6Suk0V/zPYey/KdvJVIIpg7EXo=;
	h=To:Subject:From:Message-Id:Date; b=Jt79D7JyrpDjKPbQhVhRgugBmLyPVZztaGPPqtQQOWSfL8qTpc8SFN9Ziff47DJ2RSRxINpGgZWrczRwIpk6Zsb9L0VcYlAFTHthjM5YFZmHQmoLvtthXBirGY9TCU1Cl0tlplvAHHNACRBs/y1qAXMTfrRvoiej4d9014DYoXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlqAbGFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlqAbGFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D237BC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786000233;
	bh=UcGTjKWoitEFJTf5C6Suk0V/zPYey/KdvJVIIpg7EXo=;
	h=To:Subject:From:Date:From;
	b=RlqAbGFxm6FZiSf/YT0WqSYMwTjmP0wLATVhXEmUSuUCkeYjLRetBk5YIAy0YIgas
	 PHt+HLJjwlZlK7l9R4gGgivAhxcvf13TickR7NruApXKxvqdZpH0rPZecxnC1jWESN
	 1X4NUnW7drQnesxtpiO6XHunxvRjq3N/gTNOVm88hzubD5X0XaavAOzfTu1tb7aBxs
	 xbY7fgmBvCZAnbWcL3qa8jiJE0E3bmj1hulXWuMUT4dnC9hNs5Vc0vlCeherZ1N2wh
	 aQ6fgymNEHFoJF0xfc+6+dFvvJwxZQrnk+d4EY/pCIDkMTHv9s6zAu0QOD+wKobgTg
	 jGrbOvDWId6AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD47C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600023369.5908.16237578490595835482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f724a5579fa8faa5ad80cdf7e8156ec51dfab25b1bc76adb1ce3a731ff75252
Date: Thu, 06 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786000233
