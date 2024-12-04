Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405122500C1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733274954; cv=none; b=X7u6XY7zJEVqngZOZCSZdE9xYoHQvaWdRozUFwjJnIdbbVPRL1g7Njw0ssYped0/xVkHR+/ihQgkMILaXieAncGrubmjVaGzY4l2OOwLmmpm5SInJKuFoZDUHhvxGlJhriwBDtC6L9HlFfdub3aHre2yj60EWbLbKr6LCSGu9TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733274954; c=relaxed/simple;
	bh=JOffotZWKVa1ONm0SCIS5R/FOVBDN+hAy6h/LelqF4o=;
	h=To:Subject:From:Message-Id:Date; b=cJ7/P3m9323tvI8xcTr+vvuu9KX27OvJkjdyMYrHv/4aTD7tTkSio46dp7/ZVaJBWgaRj67FZST+hDwinOixlA6lbqaYigFS9jQ/lvWC9FgQvY9oMIjTYo+UN+5G4cg/UbeJdOSlt/tgpWTcwMjmIWIIJgRisstrq5lyV2xGfXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgTy1Buw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgTy1Buw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB4CC4CEDC
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733274953;
	bh=JOffotZWKVa1ONm0SCIS5R/FOVBDN+hAy6h/LelqF4o=;
	h=To:Subject:From:Date:From;
	b=mgTy1BuwI+IpVw5y8SzW4sHVrPVuw5+c9IuImfB0Ki6HPSg7agy+dzpIUkq7NbboA
	 zxZEOACMfqQwnDgf+dM7Vi8/xqSy0rnoLTtTk6Zyp/bAXpApT778iLUi6WqDKQ8WGV
	 z+TThMkNg1bfQhsghmOitptNsk3NZrwI5lwmM61xDE+OYmQ+rKFz5Ye0ILwYkup8df
	 4Fn5u176c6WcuXPMfKgzAojmWY7S4Ax0VwLBypIvAOwUhPgUA72GG2tWgmVOViJvvZ
	 FsFyiz2Bck+urQUETsOfdbx6UAaAaZOmRvt7A6Cr1PBWLKqRkuDuAw5B2BFMU9xMuw
	 AjkKrO8sA2XoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5543E77169
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173327495365.8101.8589189504085349827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90321cbebe0da0784ff7adf3625c90a262e2c15f63566efe7c9be1513344634
Date: Wed, 04 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733274953
