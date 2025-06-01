Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C021917ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748817594; cv=none; b=iiUE2O8vbkAepzjGh1psBMdvTE5Q5qxrp8jEzkN+/4vnLO6Ju8ZkqfpWDEEaKWzaO19DH0JjkgD7FsnM4+LCrl7WziQB3T71nOsmr2CvbhZffos3eyuvddyRVjy5k1IHRAnClcxNvCWjVhksK01nbG3XbADT1lTY0HWRD0n6yc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748817594; c=relaxed/simple;
	bh=e+xsx3OwmnGMDrAHMYjX+EfaCQnLhdXEuEHzk9z0mZY=;
	h=To:Subject:From:Message-Id:Date; b=sHDAH3t37ilXl+/Q9ot4tiQkZMqGBFcZjOjbQSEVL29zKBFg5eOqsOwdUKX8EvcvYWHYYKIb5j7DBEjtICW1FOuQe7f5+g+I5MxH0y+JbDWgQEpdcrgL6ThGE8nuKk/IFcb8GFBjOLuOm6ABrDL/7Cw4eOQ2f6RoJb3YhfGp3tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcvVKDGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcvVKDGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E5AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748817593;
	bh=e+xsx3OwmnGMDrAHMYjX+EfaCQnLhdXEuEHzk9z0mZY=;
	h=To:Subject:From:Date:From;
	b=BcvVKDGT+WvhIExkPXufqTU0NiM9Wc9lz5EZ8efIwKkaQEjQ+u9kfwHSc8hajMlMW
	 Db5w5l0x1SBsasXqKUTOhyujtBVYzOxnSHffmjfmUhCdFHn6xhMx/jnbHYoxlgMqoF
	 Wm8rWkhg06Fxk78rZ5xSXZUueCdsGbauIdCr1mPx96rDZIeWVJ9diAcSEPm5vP19YR
	 6tzc8vce035NXYOHOApn8Onl6kuD1JZiN+TzxRad/jT86pvgv4two8cdHucUHNnKpA
	 J7+YGKY1nfH/vR96y2N2IQV/vqNewbXp6GoIcNh6JL58JlN9kgxS9UwAoOBAdbBtOM
	 kPDYAHLMPiL8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9218FC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881759357.3554.16882400827877873043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4cdc3ce838365f9c666d177f0341ce5c7dcb4628e3f9568f603f5d9a7f5c390
Date: Sun, 01 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748817593
