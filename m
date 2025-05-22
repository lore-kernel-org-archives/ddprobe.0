Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330EC13AA2D
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747909794; cv=none; b=gsPO8VB7d4poIcmeLSot697dz8aVm4MkYfvxk0KHZ98tBPaHSk8DohNsbcl3HnUVjJtGl63MmwRn54Gh2+Z+j9apucbQ5Df2NuqFQVPNOjgtklmZjsDXRD1RVF7lUa864XjOQF+KcL65tg/pNUJjj03ktwN0A8K8toXzlVQ1KBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747909794; c=relaxed/simple;
	bh=J0h2zn1LXkszzq2HjC6s4adOwzHuaZGwAdPmCkGpDcU=;
	h=To:Subject:From:Message-Id:Date; b=TuTNqDruDu80e3XUhO4Lp351ti8Mh9R0BYqjRZl5jaZDNBBWT+MeZoah8Iho/4O4UpKzxLkpr0gWeQHxdWKpaD7Wz0kDX3JEW0QEd5qqXHS13AGj626rt3d6cLXqaTdQfePgMNrizzgE8q3I2acs5jGPj9giV4YfY8nAvDqNZHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1l+mWdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1l+mWdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB9CC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747909793;
	bh=J0h2zn1LXkszzq2HjC6s4adOwzHuaZGwAdPmCkGpDcU=;
	h=To:Subject:From:Date:From;
	b=J1l+mWdn7Yy7a6aDbaUixCrQKIvNJr2QeI3TXBtKKdLKqrELsvqEbf0unqt+1Zdkd
	 m749aZSO00csK3u4Ud5JSXDoq4C9k7nHx06wDDLRVM5+SBxk4q93U/fpBj2/P80d0h
	 Jkidwmdr5hs0XPwoAjrNjdobfwvk5wCIsu0LMJ48zaeL11xwv4MxH6ehB5JlBrpGFm
	 Uf1XeuKBl9MbwiNQJ4gIjV8lko6rDDj5Q+T++ccAjrQr7teF0/Jx+z9v17d0o0Cjs0
	 mcxz4PfOBhrKjkcNcvp15ospxETVE4cDByCdVMGS4fMXWy97lv97YetyXrzVb5ZCv6
	 uNqaFsidz0yqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E89FC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790979357.32233.2747873226087467886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b83d4506fd53a0085982165cd3e43b52c808782092ead5319d4980252b3f65f
Date: Thu, 22 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747909793
