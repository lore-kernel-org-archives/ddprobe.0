Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E527D1F5E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705497497; cv=none; b=g7k9cMC+vtF7YlGlMuwFIJ+jQN5ASDTbVrBkwJYJhvLLuINy3Ff65arlLZVOZgBxrEp3/wwUjFdfQuDft9Ln+/d67w3ZzPP9QOkBF5ATygqWQ892BgPxny5vBrcItPolIwMBj3on883ZaZl9UZZXgj4b5mRzwXvBaS/0GHTfW64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705497497; c=relaxed/simple;
	bh=JI6i5P5SOMeolECtHIEHtmI8PQJ9FyRUHFMTcNnirhc=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=VxfQoxmvB1RoqF8ABgW1jgb0i1/raxLZ5MKXE2DIYfjruKEQP7JZTR+ekGGVe8nAyPrb0BroKxF0d9kmKleizr0Z53asUDBfZamEPBFfrDM/6sz87XkhKxiAOOhW0GRVm8b+IdfQbTMp5cBihAtuvv/yOFBnC/ZS7nVE9qzNOO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y15MGkpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y15MGkpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76FC6C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705497496;
	bh=JI6i5P5SOMeolECtHIEHtmI8PQJ9FyRUHFMTcNnirhc=;
	h=To:Subject:From:Date:From;
	b=Y15MGkpcLxscpLbzOL1Jf77JMIxLXOBKNZ5apyRAC7pa2aKF8E/GA3/OmRDnNMs8P
	 ttti1cA/E14N340soZNjQHQpnSFcKgQFdByvKnfptnGpZsKiVJ42XYQF3yCF4hBh+m
	 eSpZOXQG+xEXZacFb+Htfqhp73W7IskgoDww4j1TJo1pQblK7e2ZsKcqDtq3MADQ0X
	 soRnDYa5p/9DEcaDruh05tV9tBzDYbkqVXqGkL0jA5HoEyrDYUEPwki0C12vMoYXLL
	 etLSnmGK6BO6WqEHXDw8q3ApbQxRM5xJ3pEZMJVT7M1yozz9WAP9yQpFwO4gNIrOgt
	 EUEYJMUC7I2cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B26FC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170549749636.29164.8284367273968243567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c31e01f3a3c7fd297a0b837cd5f95e24a16b041f603d140cdb0332f127088f5
Date: Wed, 17 Jan 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705497496
