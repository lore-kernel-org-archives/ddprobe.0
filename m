Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2E54C900C
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791830434; cv=none; b=i6vmNj7vUnpDvwm0UtGPxiT+opyMKDPMmKwSwNmcKnPcZR+OBvMtdKasO8KxJpVdlyhqWXh4tVORVLs/NNS6WE8Naxas0dY9RmZWWnt8Fn8qoG00BZIMH4/NEduiVTGyg8pXy35lPMX88qyr/ZF0KFN3RTcEXZxBBs7e+I8tbFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791830434; c=relaxed/simple;
	bh=EDpf9xCBI0y6+Teg2dRJx3yUVOZzL1SbTZZ14r0mflo=;
	h=To:Subject:From:Message-Id:Date; b=ttW9Q+mGCrOjoGWWZ4b62tNHSSbl6RKl2TkrH1TF0Zy05ELignURvq4BT10BfSYyQX8ZDXLqh3zUx9AuyTtaPpqPS4TBAYUYTbealWu4ZZ6fnInHBGasffEaZrefq0ojhmZ5l8W8pyi7qCnG+kDEbkuvTK2PqH/TLjir0r2LQj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyvfZTP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyvfZTP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84F0C2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791830433;
	bh=EDpf9xCBI0y6+Teg2dRJx3yUVOZzL1SbTZZ14r0mflo=;
	h=To:Subject:From:Date:From;
	b=MyvfZTP++ZOQW3lYy2lEwbfdmX81y6rWOlaYUHdmM+2vdqj4WDedwkgyuEOONnUyU
	 fKrxWuG0+0D0rnRaw6Kx3TkpBoiI+I9lvj4ZGH/RdIEfomeIG7moUK8ME+tl+n7tNv
	 FVlvslTye2RDxhxNS14M/PV7fRG2jPBeL0PJRC7Ow+B5xcUttMahh5dUlmBqzzIqQU
	 J/OWDHDGXzAh9qRjLB3xgKUbfdOm4sx6MX0RdCoWRZEDhYU+zFtHWSiK8J5xh/BsEU
	 GoHI+Sj+Rrfn2DUskZIPJrHpc8RMqPjw+i/NzlQ33juAqvd97KuKzA1qptXKVids9W
	 xiXLph7TvLtBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B398ACA9EDE
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183043372.21787.17293380030129093383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0010d83f351d58d6f32ef0dd2bc816aee64111c3ec65bddbcb6a485ed969174
Date: Mon, 12 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791830433
