Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F261446BD
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715357543; cv=none; b=r5D37a5Qu2TtDvtmq3BGEaAX7KygRmhw3rNlGjYKH2nZS5rJZF++jF6I86JWLTrBLswkgYFqR8yYHYP0YQCkA/sNWwaswuY3DjX4zdGnuoOdcykh3AfFKJqAseC3aZBBDS4MY7Zpj/7UTrr9UY69LsOhDLpSxEYb4iAs9LQrsIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715357543; c=relaxed/simple;
	bh=aBxMssrFdx9jytE2SJdHxoWMmEZdq+XNi0AVpD7TJ/E=;
	h=To:Subject:From:Message-Id:Date; b=AfsOd3KT1z34mlEnCzBjOPRTLMQPk88oy/nPU0v98Sd/OH2IBsfMvtMijQBwvqmvPnPowOfp3D4bqIvyWQn7X+0yGStfnnhtfChyS0XbwgnUqBHQ2+o49SZTRwX4Jc1P68A2lErr5mYTZmez7jVEO8LaV3iI0jthmbAMy9NOFU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0/ai+Z7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0/ai+Z7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13D1C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715357542;
	bh=aBxMssrFdx9jytE2SJdHxoWMmEZdq+XNi0AVpD7TJ/E=;
	h=To:Subject:From:Date:From;
	b=a0/ai+Z744GM/0kL7xdlh2ziWHgC7GbQZ/bjWeYpQtY+Po8QXRO2ebOBOMr5mwyNM
	 sieIU8i8BsDvtX5gVCFKPuCydRh/+HOfMvPbOW63Ki7vbbkl3ueb9IfynNCyZ4XHbL
	 fsgwtd7M6u94hCLsOzJtGXCORcsYq24yNiSrgVWCtnLHjP8ZYZ8zoZEFOe6hBwaNM9
	 Use6vfFkNW7XfCzBDBalfRouXD6UQ1ZkfG8Bvl8msAw2SA1jmsEFvG4dl5ooc0NBKz
	 5Q50BsfBM+ThAymp6P0v9N1tbf6PmVH+hww6ikoSgeceSEzkE1+LbIaQAFwL9eGe1V
	 tlbTPmTmzF5nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD3FC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171535754276.30967.17156627064810459901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa38e204e6525d0e65e8c5ee8deaf9994d8cae55749404f1205adc8c650c857
Date: Fri, 10 May 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715357542
