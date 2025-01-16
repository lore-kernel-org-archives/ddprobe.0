Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B14B1DE3CF
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737031554; cv=none; b=HipL+bvzA+kYu3ZAkoa0miMtpgbjfnKhnOE14qZP6tSj0WQxbbNpeRa09bBY2FyNpwh/tbvZof/YFzNmeMh5Wv92S+ZUN52l6VLJRFWxFbFfI94wT5uFFTpTsE5E5/03kjsLMOD/VQCy5BgpkIWiQnEKeuTavAzdLPN5BLTKLZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737031554; c=relaxed/simple;
	bh=2nPXDbnAIibH87bc+s/cxxXCjTtHC3i9cjGPFLPuFC4=;
	h=To:Subject:From:Message-Id:Date; b=tkoFZtZ6ud7P/TJkUShIbJrn5c2T/y927GJKFXO4bsCH29WWeB5aA6K0cIGLN/pGAdT0KkNGC98uf/6oRvkqBO20WicvVyCvAiFc5pPOyAYDCnUHotFRLQkyFu8O8M4SCzpZIEhSfKY2sms1f3vjem67/skUlPOfzyL4mtxx390=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6emqadm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6emqadm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B686DC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737031553;
	bh=2nPXDbnAIibH87bc+s/cxxXCjTtHC3i9cjGPFLPuFC4=;
	h=To:Subject:From:Date:From;
	b=q6emqadmWwlPPCyNBIPMbwIg/i7ZorPMYiFatDGwhL47pfzMqgNTUnWNzrYgdXhqr
	 PFH5lPTGdTFqRm3wB9P5cP7AOC6NZk92zqgtZn5mF3ZPBprMfXtJr59vg5c/HXLmz+
	 ougksA5qPbZCsQfswP4P6FlHoH+Qz0dM4I3DHfefyto+YlY3+XP9jx57gTfs1najQd
	 PM8uQbSyJiWSQCwVZqfKFdP67KjCXFjMgn3PTo0scfL4IA5NE5PAmo8DQylKPh2JDA
	 BxiB1O5W7RuhlaF+TiLZY7lTROZTKteXhJvQQelBsdTkHkPEcKejI064/rM7P7MhS1
	 FONXGUK/2qQug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D8BC02188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173703155365.7306.2753001381336206309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b38520451a855f52cad7458ca38b84ea8f501f0aa184d8398cc42df93d1c17
Date: Thu, 16 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737031553
