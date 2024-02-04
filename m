Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22900250E0
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707075497; cv=none; b=RpksGfqdS88rRRgc/o54V4dLo4x39nNwxlkfe63ft2DAfvuC6xHXD25Ub1gp2EQTY2aP0EqiPGW65amB6cXlo4KJGfd53kqj/sjv4twWIJckELURqqWtVebidi/spPHsINufgWh55+pOJ66KC7IjDSIrmFPnukBF51RsQ6Irz3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707075497; c=relaxed/simple;
	bh=Q5xYXeb0GtLWIgsvVkwCFMnXyDtUlWXkGzLeT9tEZvw=;
	h=To:Subject:From:Message-Id:Date; b=Haztbv4Yd/58D7INJlI9sWyzQ0GSmokM5ZEXKy44byZmZ3wu7M0qs2d1JVE+fq+1YWismQXKBWx4icsuXlG22uV2YHMIptB+jjEyLUOHmglTePm1vmTuFpNH4TX4tfZfQYqBhNBbKSbcuAICjqt1Wc2yj/LJnwjJUlVXQ5x8k6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLl0Z1id; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLl0Z1id"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 893C3C433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707075496;
	bh=Q5xYXeb0GtLWIgsvVkwCFMnXyDtUlWXkGzLeT9tEZvw=;
	h=To:Subject:From:Date:From;
	b=vLl0Z1idU3Xpja3fsDu1TVEu5PfXLyApdOqf+FK17TWVJEHtmlSv7+w2mdBxm+Uch
	 DjsTIKNVtTKT68ekok1PxQtA6MoFxnW3vsRnqFEtheXQL0gIdhn8c6+2TFD2dSgo0M
	 YfU/y1Pha4xbcAFoLEL3r2XptTwU1KQ8IiixmJaMQke3ZxlIvcTWZjKO7TNThfQPgM
	 jMKjWaucCumxJGUjUCoD0vV+tkGMZDadmY2IYB7EFMfXhPkDfSwVbYa0Y3ZFVE1267
	 DPq8tW8QUf4OEVwd29aXr0jkP2AqMW1mJ7wXkoqNrbRbu//evz5YfgRht+muKEJbWd
	 nPVS0iWZ7wqDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C114C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170707549641.24993.4368316723088096084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8907a797a234157f9627f9b20458a931fafce1798a0f869c848de6064853c553
Date: Sun, 04 Feb 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707075496
