Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0355364EB1
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768235034; cv=none; b=BJJdazvJil+UegXlqib+s3hT376OrLZQuwjRG//Q69sM7Ecwsq4roVY+4LmAb3jqpIpxiQoduc/Ysze3eV7MjFSbnmCUfbb7oy+TxliT7ELhdIwMDLGUIfHB4c2dej6/MhZFam6PJ2IDjpvCLWBIh8W6dHBcsP5whE3UKwU76GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768235034; c=relaxed/simple;
	bh=Qs3gxft6kdvbgKC2MzBM34OPNfPC4emFWWzQEM/kd5w=;
	h=To:Subject:From:Message-Id:Date; b=RJw4ULnf3css54ok5ES60f4Dx84TJ+gQGGdaM1Ohg05p3RW31Or/9Z2rRLwG+Yt+esS3Qnj7Ceq22WHv+ovGJHbvlqlcDgOKgno48+x8s0QQQhSzL+ffk3hD6JNOJvz9ps5YM+rEvh98PDOxNsAEYcuCCPRDyUn2x+ZlX14mYaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luogiA8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luogiA8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A230EC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768235033;
	bh=Qs3gxft6kdvbgKC2MzBM34OPNfPC4emFWWzQEM/kd5w=;
	h=To:Subject:From:Date:From;
	b=luogiA8sLQOCbaEYBBWFo3HmV2nPXab4bgDFP+OwVips5W21L/SAYK9Z85BXRQh11
	 oirenhLQQkpUJleg36QvOT3v8mnEE6J8UCZicagIJc4J8Hbovg7erMfhUDZtYl73iv
	 oiMBZ6ci0Ui2JZnRJHzsgGPsS4Czh8hKvPpR0ylNi+quxRRUfESNF+yFE1eMtXlDbm
	 A+CFmr2kX+andkKIrC0MieCyMCNxCwAMepagDGVZsSIhH+I3ueT8vbVrj/K3jkYZPp
	 7hjSM2qX2/aA8sFI+XOhaztqF17Xilx/0sdKvv38d/3k56Mn9WTI6jHBNcvwRoenL+
	 U3bGDW+lZdkcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF8C9EC9D
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823503358.24466.13732548469107529727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d37a02ddd4f0bad28bba23e4cb8df0ce49b1b9d19797f8f783e245d1decaaeb
Date: Mon, 12 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768235033
