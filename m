Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5487315C15F
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743839994; cv=none; b=gTJNlhiSgQbbHHivUaagW+oURTuqJBOUix73Ov4nHDISg/roplS9iGOwcvCnVe4T2qOWDzRYaNkMXvP2bW32TeP9Pr1H9zODEGXRj5MIxjQjuFjGeKhP4HuwTeqHVa5krs71nCJ+n8jfGnIQ+GQ0vPccl6IgXcuANvBzyf0IMhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743839994; c=relaxed/simple;
	bh=LQuxHdu87EV75nzwUuqztcJ+YLfIGb/c6tFdz9+YX6k=;
	h=To:Subject:From:Message-Id:Date; b=Set4wIpQhmvCi1OvBXVA5j4lpsNA3VwmsDb+RpGqWm9Mlt1wUze+OBxovI0MHAaZcPMSHua00bit6DqDwIMvIVhlpWE1TKZiea1Pf2iOZy4w51GFRCHCwm4mdHTOlyct9p6WHXsfheoc/353CjE8ueLvyZiDt/QY3mq3a597nWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRRv+kqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRRv+kqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DE9C4CEE8
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743839993;
	bh=LQuxHdu87EV75nzwUuqztcJ+YLfIGb/c6tFdz9+YX6k=;
	h=To:Subject:From:Date:From;
	b=TRRv+kqB5X89rvdN98f74VJ7IgWecgnA7ppqIHzs4xvrfLJrN4xrbnMDd7vU1ShEH
	 pNey54fJojOfSwULOXFM+7fshWJfyD6XFTi69uusBD5o5p+zTjHEKDuqYd/jg9jMzw
	 XWL6KxcLlMaemVK9pS2fLiZK1ekoR+NjSkDffRbTjbmxPCgt3LfkMKg0YkL7J9DC0K
	 uyKFXKBRsVk21YS3A36L5m677g7pp1CB03UVTFMc9Kodqe06SKIqtXq+JVu5BpQ+n3
	 8x2QnblIP/pAkeeObZZWJgwYgsd8WLru7UkyldNCSQTeLT/9ghs0bMS/zbjkuCpHBv
	 l/EQ9XMA9MimQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98767C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383999360.10862.434073563904896331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd81e628a4879fef188362f8f557799d1fdedb90a0cca06efa888ad0146fc62
Date: Sat, 05 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743839993
