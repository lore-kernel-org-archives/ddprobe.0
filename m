Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A8939855
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717331723; cv=none; b=MKj5/HpvJCrujsV8vdcCR7nyw1jyM3Ie2CrD/vK05Kz1DRtKyayZtKZF9WjMmrO8qTv3oVj6lt5R6aU7O8cpYqfwEXBQFerrSsc1xXUOAUveNfoV25jiqjQfFEcOJJgu1TsovJs6TqWH2vFRXk+4eUIMzu0CLEL68XFr3G4Y2Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717331723; c=relaxed/simple;
	bh=ZGk2xule8415VdEfQdo+7l8YfoD6Zf9qD3qS9EyEGHM=;
	h=To:Subject:From:Message-Id:Date; b=LowXfxESmYfaHV3kUfjPmx+EgiZ1TSi6MN0MPTezmw2ruXbIQCGyLcpIrBNLgpGUg9SyxX3T1eO8Q2qOCaXG4Pq3q2dndk7jZ7sjdHmn6iUFMd+nWUJQvtr26oE5QrM4SaGj7HpqMtm81xjlNQfB0PyVKP1Oe70lpQ1hbvXTYjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSjgraWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSjgraWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70D5C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717331722;
	bh=ZGk2xule8415VdEfQdo+7l8YfoD6Zf9qD3qS9EyEGHM=;
	h=To:Subject:From:Date:From;
	b=cSjgraWgkJqo2zk3kDPBuChy4oIJeSpqkFEcxEH4zmP7Gko3Z8s3DAIuJmj1Xm+6c
	 CDnHjMqnswf3loDL0250pHTh0ujOmK0e7UNMDiImsEtQPUNKb2rQ1pA2CKWwruAV40
	 ++m3qDDIscvLE+tWUO/VWJYfPz+4lFmt/qySK5rIcFGPa7zTSYrnADb6leGZ5gAvsp
	 SosMqdNRMWSyCGNOiplC/3qY7C9i04XkK1TcTJEFAmEQEVhjOtkFEKqa/Z5TLg+uOg
	 eoJTKXmME1GYVrN3glVOC1XunzmAFehbh+64qR1xu2asiPZQKsU6RMHj1ty/OHlSAI
	 wBuxOM3bYotCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24B3C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171733172276.19299.12392015586677677540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed86eff99b8322d0ecb3e17ad249973f1a698f7cf05a7aa9bc3a3923501f34e
Date: Sun, 02 Jun 2024 12:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717331722
