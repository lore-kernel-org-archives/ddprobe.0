Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E6823C503
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785738034; cv=none; b=lOUG7mG0X5HGH3L1IWkplvRNEseFS7CVWeHlJTRl6qa2H19ob6vfwFbkj/gNLK+1YcJD3u6CVLgJGJhXkC534JKp3uf6FkUJZ2zUznsB3xYnWqmcx0S/eroc3j5yzWWKJqLG7xqeXCZTBhjEta22AiepbV5oAqrObAR41ATNV/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785738034; c=relaxed/simple;
	bh=3beiNH/pTG8v77mFpi3mbpJXOunszHDl80R5qAhYIUA=;
	h=To:Subject:From:Message-Id:Date; b=tSJBaUdxjbewmumZK+AvchqXbkZmu4Z/pidGENoUTc43dJ4JNWT9/FMd2OoJKW1id2KwAdRWjg31wngqIJQB3GhLhWQQvRGANhjSuIr1SD7/WMFxklYWkvdIQzClXUkHoLRF7FSCFKh9gc+sD19mraQ32Stc8xYDGHOZniWt8Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D15YgC9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D15YgC9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4633C2BCF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785738033;
	bh=3beiNH/pTG8v77mFpi3mbpJXOunszHDl80R5qAhYIUA=;
	h=To:Subject:From:Date:From;
	b=D15YgC9gD4tXlOx6yS/fJfHh3bVCsqrSvntH6vwsi9Na1RJKI7laI3MuPxhsL2X3N
	 X5azlr8p2MZpXWsXIfR4TEogX8zvYNuuaKaY7mXx6JygoXyMcCrpJCoNIhuh7rQk+G
	 FGSfTs0YR04xffLY6JHqHOwH3He6xRUrSb7nD7z9yfhFnxahOWl8sg+Yz0VHdJ2+kQ
	 ZYf7q0yogzUWJoy7/2yR4J8xzZ5cvrWVfVpY9SMUgqMNVdKI8tlc7KV+h21wpWHNt/
	 j1i0lxVsvEYDUiVwgGqBreRFSO5rPb0ZiidXC5VtmSLKKBF/DRgZl47hGpIpP4gcH8
	 W5oys8+Qlo2yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAE3C5516F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573803375.9738.11740695364675841464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16726c4cf8bee0b7d6c1c91ec75f3d4ca7112322763c5c61a3b49171c4c1dcdd
Date: Mon, 03 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785738033
