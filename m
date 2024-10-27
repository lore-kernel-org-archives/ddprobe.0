Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEAB27442
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730066754; cv=none; b=JavdZW0dRrqtsdLAbZwgF8PYlXmmtMAbFnyjwC8O46KI2MAY3Gzo82ssS/wOvMixO67SfG0xJsvPoYwK16ZCXzu/W7cY5DhK/1lnEYRI/ycCSH68aL5cjlbzu06p5LGQqIhVkcDR87jCIvpka/jn01wbn9i00jcdcBMTT/BSEqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730066754; c=relaxed/simple;
	bh=zXK0DRr3B7IcfJ9vaDGG5xhX/yMPVrqW/oiyttiGjJc=;
	h=To:Subject:From:Message-Id:Date; b=WBmoG9EjuZ6jb7IzPR6XbhAIxCNERWmGO1xLobnUa3nU9MWsijpFww2I0Tp04WXZ3caSZcu1Z+FBrepJvQp5BIBxCnKLhnjWpROcvaXh7yhTDehY8tVWt2BzsfuJRjWSq5EUCxLMWPctqV88efjHGWJKzChcQQj4sSu/fGvsSqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPILbmF3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPILbmF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFBDC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730066753;
	bh=zXK0DRr3B7IcfJ9vaDGG5xhX/yMPVrqW/oiyttiGjJc=;
	h=To:Subject:From:Date:From;
	b=ZPILbmF31Ix8IKzQf95CH1GHCP20pUPj6RITMJcxyn+8y6zP4EN9dDzWVrFrsDypl
	 fNH5UXmGQYiXvCpLZeecG1ARKIltcfRTRM+WSd+U5uK5PWQnnszkigvRpGk57l8/gy
	 bPvKCdcTMIZPgyOD4XOnloZtBCZDUKwnZSDC6FDagQtZYY4pmkn8ewoi+LdPVPhcDO
	 aWjUoWdM2n+7Y5hlYaPdf1ArGnTc+7rkv6dE10O13uboo9HzU9YIRUJN5pmXc3KXEY
	 mUECz3lnDYOXVwemIYazQbWn6QSX+oMeSbqSz4CglhurpL9hBs31cvTlVnsMlB1sVP
	 InsD5Eu6AnNWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97597D13589
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173006675359.20537.11182881385984306017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f5eea9646bcd62905e94376239c74c3ce717efb6d5c2c7df5ecb623e2084a49
Date: Sun, 27 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730066753
