Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334CC150980
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721562954; cv=none; b=Q+NpmicWTlbSHMxcuOCim6yuzDliJrYkpVzPsVvph/8gAC47o10qMovLF4RetgYnjvXLTvkl5v8+KsJsl8xYH876hcfohaN2zAT9UytIhwjBpCIld1p17HM203Sy9HW1Rj9XP6k0RurTpnN88CI+NDpOCt9VgQrw+ZwBr6H528g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721562954; c=relaxed/simple;
	bh=OjQMCi/COsgE31s66JdfS97p6U1TttbAJYhEG7kQdYE=;
	h=To:Subject:From:Message-Id:Date; b=uD8eq/3/u9OuzoWyF7x2u+Z0+haPTC9GlZAVEG1enH2KZ5e1IhOcdZk9OT6lLFZdPA/IFnszm8ut7NX2x5vIC3OMtgLFJx3EWupurLhFX/+NsF4pzhN36pp/rRZtacImsJ7Htv46SznQld0I4eS65SKfrnZLYA+CZy0fsCotCAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlUfYaIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlUfYaIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B149DC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721562953;
	bh=OjQMCi/COsgE31s66JdfS97p6U1TttbAJYhEG7kQdYE=;
	h=To:Subject:From:Date:From;
	b=jlUfYaITQ7kJH4THu8U5lhVCh9HQxU1KpyOfQwmVTqUXDI+yimZ2QvWrIogBmC05Q
	 mEiCZpM8nSgpI0GYbzDRvUyf725QpkP3SF2UXPIfu/JSdsvWQIAEN/e9f47AV5yyfq
	 xKWGibPqX+fxEeecQnN0QBunO3A3LukFKRz1ocKtHvKTZFMBuuc+ZwRcxqWNmjFH0H
	 HzXUqFEE2WBxI4Uxyq/CBGU5NVdUqpGhJUMgvhaXdCs0BlCqyiICxcdSfa8M3qcU3v
	 LsXNlY2aMkY8tJLk/8Fhfe/DCyGp3hoFae42zaQFbrEVIEIfCjoQOb9pMhMXHSRmCr
	 lGvjOF6GBNhgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D90C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172156295359.18774.848533581573699736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5329eb7b80c9d72db32f9c2ee80749819a8c3075245dc9566cae706880a35621
Date: Sun, 21 Jul 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721562953
