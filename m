Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1F738D41F
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780077754; cv=none; b=CD7jijZY6BdzuInmxwqdyI7+uRvlwyyz7hu661hW7NoQgMkeROVN7RMdhpQPQQ7kKNw68ijW36mgzlcCZoU78h4BDSfOSwxeRqeU964tFnUXJIXpgId3tfcJoPsdZZJREiaWXhZnUiNMqsWh55o+fA3wYhPHrLTygdWnruOCMd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780077754; c=relaxed/simple;
	bh=LS6fNLFmHZE6RLcHnGbRMmd8daThr7yKbwXsDNcZeVo=;
	h=To:Subject:From:Message-Id:Date; b=h6ABSXeQgba4bYkff4xVBHutjyK4aAL8Dz1r8HBBlCWUN7+6v1DUTT4/DZ1H3NmziBHeOPFejNwzZyGqiI1elMI8JyHGX++PrzkgfeCGM6MKG8eXxy+pgXUAwDpnn1CT7yE5ge95yGXnPsI1/PxYA0TcniYHmEkV9G3lhtk28Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niXbi7mg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niXbi7mg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04DCC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780077753;
	bh=LS6fNLFmHZE6RLcHnGbRMmd8daThr7yKbwXsDNcZeVo=;
	h=To:Subject:From:Date:From;
	b=niXbi7mgoan2tbhUd23agcTAjGYTLTO/mwAyJ2d9N05PWARmsGKx9zkrfIp3fl3uR
	 2GH5twlPYGP7h0fRDvWzGGMZ5sePlGHbj/5lv3XkgDrzEMEkA3HX4BO3tAZCXCWHQ/
	 0jwSLyb7xSTf3kR9yt9H7r6PQBH0fWPAbSCZ8DsyVnXApZDJazrjz9DFiMunqMqRbp
	 2pW9sSn3Gz69c2StsVK3yhzscvK/LzHG0xsCgLz8UVlizEvRZVdRS8o02pFVTqa4ih
	 NPECAaPAEw7cOJQTtglxGectJs5uVpdeo5x1FMmKRkPFHJpYh1k3XJt9ZbgQTJ76NK
	 5prl83yHxnVeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D03CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007775372.24501.9013503839623839034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd80c8eb0af3ca84f24bf5214066795a9d00d26c2689f77a236757a6f5d907a6
Date: Fri, 29 May 2026 18:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780077753
