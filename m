Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BB81EEA49
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766612634; cv=none; b=Fgm6vgzY12Lszt6WYSajPqpuwNYBtSzakAO9ETWvA4DNdM9SIP/P5WsLSuRn+bEdMBtHLDTESMIGd1RzfvByP3WDP286VSODQYGlXn99rOZSfv35NvW8b4624AfDVLhn9B6Xdi/Lh9NoC1vxEX5duqNGqn520RvFhLn+ceuVips=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766612634; c=relaxed/simple;
	bh=aaS3fAGsAiCY5Koel6bzhg1Xvtcub3SSQH19TAf/2BI=;
	h=To:Subject:From:Message-Id:Date; b=adChewbiUb6bo95Owvx7mfnIrP9m+BgltMtjqcoMLeOdBJjdERNL+vREoy3bDnKtDJW7Fn1wWPJRKLgXuZijqEuo9uPk9T/2f41lpM7FWR4q3dYb+2F771V+ouYOm1TwFKAQGLjy/9qy7M8WCn6CbpyQtaAkPcG/sxZOJ3jsGv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=do4HPLTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="do4HPLTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2ECC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766612633;
	bh=aaS3fAGsAiCY5Koel6bzhg1Xvtcub3SSQH19TAf/2BI=;
	h=To:Subject:From:Date:From;
	b=do4HPLTScqAJmrMxt+njgHfOoXYd7ddEhjuCOqoKTgcpi6/zz+1XOqG2vkYGHT33+
	 q1JhooQXYI5YgZQyZyeWtXhHRMbqUnKAyjJF52r6zQ4He6RW6zl4iMsiloa4qLf+BI
	 dPf7nD8VzC5julDxD8392rsldnn6yqnCjep/ghqxLEC1OmqJJdxrVvr9hLprNqyezF
	 C1zmrBa16KVX/URTxVYvuD6ujp8AM3zzKnWgVyYMRdvbqT11kMObt5TzOGhF92PAta
	 UbNi61v70MERwS0oHhfKAy9Nz973W0O735MEWHxow6Gx3dynkwy0yTM/fnXE8VtlA9
	 UZdZFlsyotD1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBCCE78498
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661263358.19157.2795746620678126154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337f4a0cb7e5db88b9688d5c71e6bee862ebb1d36aaf4a2cab8d0f1c5c738283
Date: Wed, 24 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766612633
