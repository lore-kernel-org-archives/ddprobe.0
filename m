Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4E31F4E4B
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742639394; cv=none; b=U7FARzY+JuqFzvJMdKHnKrKjVwTr6VS/IRqS5Ef1wBALkyhrnkPPlg0UKGLaifKla1BrhwE8zxtlEDl0wAspnIWghQ0LQW3ItmnAMhZ1NHYycBqFXfL3s0UM88bn4HltGshxh0Bdx0G+cmf+59ioRmOLcy/fp6SDAmspUnd8Ni0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742639394; c=relaxed/simple;
	bh=K4wYROGfPtGhLvpK7zaBlyhd2RCl03QpHiHsl2uxu3U=;
	h=To:Subject:From:Message-Id:Date; b=i/UG/bQ8uXYWd9Q/PUll7nQ8vSNZjc9M0fIBCyT9QS/mZHknv7zcwZkbVSOTOl01lD2y5SFSr1D/1fz7fuwRxA88SzMLoWdMqNFmNUer3XtWyQBCzvPUkecZgWIAbZJ3kkw7Az3HJaRkoLeB+wG4RmhTc5Jsy8aA46VvZSGfYXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLuRVfWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLuRVfWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC55EC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742639393;
	bh=K4wYROGfPtGhLvpK7zaBlyhd2RCl03QpHiHsl2uxu3U=;
	h=To:Subject:From:Date:From;
	b=oLuRVfWGtU4GV22xkZjKa4QaDYvjCOSeQWvdA+uQbNK+MvAaaY4YeB9tJfjARrZY/
	 VAQn/AKvs/9f0hsXCnk/CtWeiEcVIt+BQ94kFesB6A74ir45AGJQjCAxpMOP1Slnb1
	 N2884+fh59vfVuWfBMSGMKe9NjF9B0nFd7T5NmRw/tW6J05rsr4c5PnEXtCjoTa8Fc
	 63W96hZQT7pbj6jWR0AJmuCURSDM7ojen0pr1g9sfzI325LTBHiW+ZQCqU9U+Uuqbo
	 ghL8+d5F54NRG86rnjwph+wi6Ly48uP3f3I/p/0CQxVmEslCzNEqrBLGTGXL7pvgMm
	 tFQeR7XNuTlig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D996C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263939363.10199.12690813242935152010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82113fba5f62e3f1eed32ce6f277dfa86ccef1293fe49076bb388aaca2fe1062
Date: Sat, 22 Mar 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742639393
