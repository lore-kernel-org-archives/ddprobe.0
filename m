Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142B62E65D
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760966994; cv=none; b=TbEOT6HwsyzTvoMjw2V337av/HcYUfbPaPjuUEt24Zb5ociByLhqPsSpuhcCv9RKENI+nykelRrV+ji9OIjhIEIlCY03v0aY0sMRK0uBzZaQXN0UMt8MZCJGgBH9DNcRtkwlUhd8f62lfykC/95xBuJRQWly8P6JH+DkKMLZbSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760966994; c=relaxed/simple;
	bh=oGD4D5YpEPANPSYTxwIPPedHgx9EbgGH6VUX0x/xjKQ=;
	h=To:Subject:From:Message-Id:Date; b=oHMzDIbKboZvIF/jNotHrCYxDKV+7hHEsh6St8Qd1fDO73/l7VFdSkZKdk7QpX6sR/FC92IM/HiVYuKoe+KShrML3H8NQBKo5SGgVc6xFVOXVPyWGYPlAH8a6C2P5yWJcGFMTCgMBBSCR0+YERidK1dN0IKFw1dMitrypADnU6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTNpxSWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTNpxSWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA41C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760966993;
	bh=oGD4D5YpEPANPSYTxwIPPedHgx9EbgGH6VUX0x/xjKQ=;
	h=To:Subject:From:Date:From;
	b=RTNpxSWlWOtv7d62pZuFkCLJFtMC1iC7xyKFnio6MAMT3piaE6jDIqAwrNIcprU5S
	 vf1eUsxyLEpCVb3NKyz9aYKYyvnOmbH/HQl+k5pX0XNfeOWrSFx73Gal7N24s9OOVR
	 vpm/nKyU6BJm79WyApF7gVEJTrWiE/tvyaHbGb/TP+/WxmcpCZ7zagAwwoJCAnAfqs
	 STZBzzO+ZmACyX1wW3jry+S15+VwaBRCGyaKJY2KvaX//OF4NWetixnpQmsOcQZFXh
	 nHgc86UDrrRIM3I8vTOqsVO6jTz+DmiOoendEMlHNUsdVVkUTyY3CrMsT07LYhkimZ
	 ftxFRidnk2dSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F6CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096699358.28668.2944883285057047129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e348b4b01777defdc94729b0b3f72ac2b743191341c74f08bd13b235aee6bd0c
Date: Mon, 20 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760966993
