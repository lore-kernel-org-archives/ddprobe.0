Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3865121FF2C
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746514796; cv=none; b=JjgmySQdOIXfU+Ou1ppIwt5T6Pn0HGnGXNSlUzHKav9Rsup0YjZpfTYoTfdbfVMS+XsyOpLsL+qxfW7un7+Y39eAMXrpOdEPB5iX8nGgqIFtZCuz6aRzPz/uc5r4ZPGrHTv9ovUvNj3KG9aJJ3/1DdrrBd61WxNLvLtSklX0/nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746514796; c=relaxed/simple;
	bh=VFQQNmVZxmjyw56iq+GWCjSSoWNp4T0IluSug1b4JHc=;
	h=To:Subject:From:Message-Id:Date; b=rzxMKP0Mbt3fLGambkWhn/QtkpPCTmzQVLNb268HyJFoogyssrzPcqL4qfgeVsbzNk8dj2xbjx+ZZL1fIf2c3gSkHGOOn32h1AaGCpAAERUFZswXibRMzNnR5eFracUuB8DIZUkQxYG3hWjylea1WQhXy5QIqS+t7BXe6zldydU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LooEFJb5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LooEFJb5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A036BC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746514793;
	bh=VFQQNmVZxmjyw56iq+GWCjSSoWNp4T0IluSug1b4JHc=;
	h=To:Subject:From:Date:From;
	b=LooEFJb5YDbGoX/1D3WrwpjUjacK1XBtYblEjAU/IBuVX8ynzndPEaDyTwOQTlAGC
	 3rOePxdbrNGY4A44nKcOzSPqEN5OXjbsbIY11gNMf34jMJ4AiNYEVH00qTjyLzKeNV
	 eI3S4ICC/LdxSuWfLMZSLY/GTjw1HectQIrTXJ+9VyHHi+KljoyOEr14mEzvaETaRg
	 J8BumbzqqwbjUyLdhb1s32cqQghLPhiEbd83GIAwL5iBPueX0kuJfQVtZZvuKFVVRX
	 sBZtXBO8xqA9ppE9k3Gp/TtOvEpfkoehH+JYk3ZPXhRnS67g9vcClPEFQXiBb6Lial
	 F+FKG6XL3/85w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F069C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651479357.13164.12537709334209916691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd13af8ae8c9f38117da69340f4dd40202b9503d3cc3978a0661ab89a3a78cd
Date: Tue, 06 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746514793
