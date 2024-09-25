Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D57B80C04
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727282754; cv=none; b=tzsJABdwmh4+vGrp96ehTJkuFY8ydUAWHKfg+IQp/a1nViLolkrYS1yASaRXjhzWunAO1Kv6bsmhkNR0BGkX8uZAmSlnL0N8hQj7g+NBADZKN7PlT9g5jYs+kRMmzghgFLCUgpMNvDOGLq8N/hH5kL/1vW8ov/ngoa6eCzlLPZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727282754; c=relaxed/simple;
	bh=grEXP2Z4zcdYfO2nx47c7vimp6MPGqiYwVhKvinlB6Y=;
	h=To:Subject:From:Message-Id:Date; b=Nk+4LR/3ch7H7gzasgbzi7q505FfZJfBF52OrDOgO9lXusYfjS0box9sjxIuXIQmVbh2kElFLISJJ/ZxWsT672a7e4WZiY/E5oiM9TTCSI1AcgNcEsPzx8fuALQGoUaGAd6//aKyM6rVUeJZf2JBjZfiqGSm7EAnrKPTvq6yD50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RL1DAmM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RL1DAmM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A09C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727282753;
	bh=grEXP2Z4zcdYfO2nx47c7vimp6MPGqiYwVhKvinlB6Y=;
	h=To:Subject:From:Date:From;
	b=RL1DAmM+0TChXtz6cQ4xsNKaXg4wXr7pm5y0MO0ticgsBM2XWx8tmzbeAQw89Qmwl
	 IAOdCwhzTv/ZFZqXwbdMaWDDu1Nex8gA5dVt1CmooDQLu9Gx9kK/CWB9YxfxJaVSHK
	 0W/8VzZXTwrmjZ0ImqhQKBPh2HMYWJ5VKzhj9VVP74GN2S4f7e5IqBnEa1HsOsL4hH
	 g6cuThYx1+cPSMr+4Kfhw+pG2DMNbxn95y2ykqiFS+Sf/0QiR0u2XHnKIJ0PNJbuDY
	 PYeokLWJBuC7dR8NMvDKXxUwxHF/RSQYV4nzguhuuXv6IY4/1QDsmJxSjSOdPuAKSb
	 SLgJZgyNA6fIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9586ACCF9E7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172728275360.17479.17034129823074786613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f527d9eba1aa4ee7e47c44e786bbf47f84ae08f2e25ba127aff12ae16a9b70c
Date: Wed, 25 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727282753
