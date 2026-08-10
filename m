Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED5623D283
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786341634; cv=none; b=N8SBHeJArHI7zIPfSh+CjgRWhGUYWg96EtBkMkFGysV+kxm4e0XlpPQiUdTaOsGNoZxiAF6XRth0sTqTDW2ZLzm79SVwbd6z7e94WprTCGe+8ua1aY2h7EVEFATw5dtrLth6zJe6yMw2YRRaVZEdO6HvTGlWsCT7Vl+uHO96/XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786341634; c=relaxed/simple;
	bh=4deNgL8alIW9P3dtNmYb/fZhB2M/Lboc/xMrKUqr4KU=;
	h=To:Subject:From:Message-Id:Date; b=O0HaRFKyvTfe6GqTjWkWlfWx5juet4wyzcsaRx3V0T7Nxk3INLLYAiuzyWudp2c8cDLUq4bwTW/7WcoeGjRCfzf9unrlZeXX4eR7tk6iSuJqqK7mW4mTKxwmxpKsK6PDUY3B8sqp6tHR4ukzQhGvAr8qdqkgmK8+/tDlXdvtmIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=me2KrR7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="me2KrR7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE16C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786341633;
	bh=4deNgL8alIW9P3dtNmYb/fZhB2M/Lboc/xMrKUqr4KU=;
	h=To:Subject:From:Date:From;
	b=me2KrR7Tkk8IpuM/BC3626ZXu758qQLM3RoDT2c7um9a3Qpvujm94CEZMkWxQJmrA
	 buSzVWohxIoMwi0Q4qLw9pcWNMYqBFNOpamN/n7Je0nwcNOkVHvw0fdWTg4UhojmTh
	 ddEBHmCWwY5r9kNDI9GppQdfOrC0mw5UVhYiqAR8Og5AwlBLUyPVZUDA8+zvCW7quB
	 Ok4fne/veZ0aE4IJf1AjIKTAd0d1/+vVufTMGkHpaFWzdMFqxAi1RD5a7t11gjtbOp
	 M4280yGzsdFROrIP1A86zOZ3DmQjxarRHUJyIyUDbYjVo2c3eCtL/17cG1dKn/fP4q
	 Rj4GozDvAJhQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE2EC5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634163369.20980.13163255311348926124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cee5536eeb83628f3c57eeece30277f9917bc957efe9de8f20d00ca9c7c8848
Date: Mon, 10 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786341633
