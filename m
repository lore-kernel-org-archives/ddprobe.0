Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415FE14AD2D
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743326994; cv=none; b=K4fo/gxpFGjnM134M7X2UkDgzha835G0dvozrCpNHVI1twJUitif5zf96AT/lNT4Odl4fMjPuKQwzPpKAIMok0Jkv4MVWzDnH1FQE/wihSd5pCJ5sL3JF1KAGdiIwPNfomt+q7W0bnrVMO/MfYvawGu/Rg6aecORELbtDGq3kRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743326994; c=relaxed/simple;
	bh=Qohz+9NXZG6FhIBSG5SajIu3lISR9wAOmACqbh3aVZ8=;
	h=To:Subject:From:Message-Id:Date; b=LCcfQFWiCFsNUY2FcxpLNKUfOswGWNqFOs8T5yIY69z2xj6P3mzUPIWlYZK98ZV4GyEY0K4biFNlQ2G9jZFPwI5+eElrvwEJN0rFdxGZdGiljqgQgH/LeGNwvxVfXvevOzq7OUaw+NKJC5hSSlB0hOVRA/1N3vXWbc4aaqPrcKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8rM1xGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8rM1xGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41E4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743326993;
	bh=Qohz+9NXZG6FhIBSG5SajIu3lISR9wAOmACqbh3aVZ8=;
	h=To:Subject:From:Date:From;
	b=p8rM1xGiEbFL5f5RgKSfx35qNbV5T3cRQfXKJ5KTar8bUZu11jKT4lkbThSSTeaV3
	 vsUWylM9L43nZDQdgPXfahqS34+Sd90Tyifh+5WgI+YuSMECg1b0Rq805YcKTfpfQC
	 VNyHeh2By7SfV7XfpLisTh5ZXCkp7dwEEq2vhFvijG6lXFl+XV6jnABy0XLQb+awgN
	 +dP4dKgPvF1+nn34DDpUIlVxBX3w4soNe0QYcZGZB9HBdpMF4raMhPnQfMLQT7cy4S
	 hE6wTCIGKucol1GwYsrrAcTIhxugAyjMHq1ECRGSzFnTyBxsCRov2P+rK8TcRxFr2X
	 aHBgOzQTMpE0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972E9C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174332699361.32236.17874728362351627532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66417722fdc4f5abe5c977d2f688367477aab7e5a0f0ed0ae738ab2d5ab7cd7b
Date: Sun, 30 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743326993
