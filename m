Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2386521B9C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755149394; cv=none; b=IR3FbY6/dSVwOSj19OUvwzMnk6ahu+YbT7/ZZ7JN2CoGCey88J1a9XB1QHmpWMisAeCTYNK3uQYk3A9/sYtvW12rolSlvFx4XxEk8DhHBAwitgu0C1Pq8WMwbwtsH6lfL2W4RYpT2y4szXx2HgZcHmLXZrZv9pJ73Qq9NJNQC8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755149394; c=relaxed/simple;
	bh=Tn1q63ufbCN+XNnim3Q31kpwnbYPh0SYo7emB+NieLg=;
	h=To:Subject:From:Message-Id:Date; b=eNuGfUKnxqAWzoNFaqaTPSC5yfqUClYx1Zsnm+NmJ3yP01wwxazeeqyUeZE9+XumM12fLoFYlfDRiUFdsRjsZZloO04NkDPKauxI3cntcTDTKf9XrGMiXS6NjkB/NjziV+E6gg3D0ivEUa2vqV+KooNwC7u0YKDyQ0DA6kuwbQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b42r5skO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b42r5skO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC89C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755149393;
	bh=Tn1q63ufbCN+XNnim3Q31kpwnbYPh0SYo7emB+NieLg=;
	h=To:Subject:From:Date:From;
	b=b42r5skO19jDUc7cAQz6REocmwAZR4y22J45jk7qe5uoX2E7oaV6okQz0df/benmN
	 Dm7m2ARQMk1ZQxEyLmUlWBBpd7K37jlw6ExxF6lUGpsCTbUp4i6FcE44B8MiKjKw29
	 hsW4rEGyxasLb/SbvgIJx4xjpcse7cudLU8QiWoQmBT2tFxv+jwCyDCedL2J03DLP9
	 p9wATQtfNQDAj3xTinkiuuiPpGaZA28XL6u0KRDua9WQ/PoupxwuvYDCp+xricpXL9
	 dRU4ReD/c+Rd9xCuoDHB+xqwYJAR/M6cc8xK8oh4tg/otvQejeCwHPrdA2j9sfLmfA
	 5j2aoBuGR1lBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF23CA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514939357.24400.16769944478954182169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5c67eb5524cb552ecba6d741724e6317f869e906136321d7c3d1e72fb7f831
Date: Thu, 14 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755149393
