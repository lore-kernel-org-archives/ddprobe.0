Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9222144D7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771284894; cv=none; b=NGea5tbwsY+ktU1P5LVRQNEz7VOaZUGzI+vp7+V9zjpjZRceIpeRYnpKFJ+/10ehv9QYzzcN6f5wMtA+6APiLwLNbqalzJmku3smCqncAMe7SHx9RqmY6UguAu1mR4bCubqVQO50C5lvqF476BaOhQA2Jx+jT8xLD+C0Mmqxa6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771284894; c=relaxed/simple;
	bh=9TWcfo7WI1/sxPte83O293pUcyZmZMgSJen5QiPjlOc=;
	h=To:Subject:From:Message-Id:Date; b=lRbbucHjtRnaB7QUXjk61b/n3F0DK+NZNhw4hxC2evHQ30nj7LqUXbLqRlz7u0VyYpe/WBqq2+0dfUFpgvcBsN3XjA8hs1RqehJJyiS2wlf/Ip+eyk0ADXopVOBsyn2S5uDlkvaJlTdm8a8BwNxqSnV1st2LwwJzZoETPebGbmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+intk/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+intk/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A172DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771284893;
	bh=9TWcfo7WI1/sxPte83O293pUcyZmZMgSJen5QiPjlOc=;
	h=To:Subject:From:Date:From;
	b=C+intk/SJH4VQqaLX5Io9tzK9wvDEXrmDHtan2BWOLnZxsbfsLSzM33ZPjJIwBpZp
	 i61eYnhYib3hNRZN7rXMQi2WtELY/bgZMbYG1nA2x8vPXBjqzLcjSjpVWSs1fxVcU/
	 PMeOpVHCM7Mz5muyl+EpJtD5BLYsHjX8GmKjDOrHSYyROa3lUqSyG8WXolDD2rqjUD
	 JDA29sEowIzGJuDuUnTzPXrP7LyDghOV4vZKaAQeGXAFoJZaV67wY3TjfmRY35vfoH
	 lzoNJpk7P79+XSszUW62CxII+UZwkupdY636TsQOaVlgvfL89qEHhXcbb/maD9jjr7
	 OdfFsz8OyHMCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EFAE83845
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128489358.21120.1311417889005917736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd629cd9592361c072c040a070d3c3033194b1877a6038af0f866f851cb3f6c8
Date: Mon, 16 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771284893
