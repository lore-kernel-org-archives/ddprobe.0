Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5125E47A896
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788301834; cv=none; b=qaQY4u9IUmB/xxM3S0Zbt/Ai6bDwk/RnB8JoFkTunzuvBetubO3Y1IS29kyhsG5ULEvqRX3D5lnNhkmYC+FsVy8UoZgoYkcKifWZLFN+gC8EJQSDb4TIMAlmnUBkCZFLX8OwGjB7s4Vnfoxpi6QlhAnXatc5pA3aDaDHuwU8s3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788301834; c=relaxed/simple;
	bh=3hZvnmqFaM1cNUJKcCb+8EpDWSNFTLbA95Ffhwh2bP8=;
	h=To:Subject:From:Message-Id:Date; b=A3fNQntQtstC9njQsEvap4BanXarRcuGv4MV+zDfZn3ET5HO43YnW7U+rF92IzKuNEur5lbMu0B9LOrx66tE6jNE47OtHDEczHUWBvHiJ0JxJRvnx+fhe79dxgzh5v/n3cjBFc/IMofRMBWsGzFP6J98yENkPik4u+6X47Cr/ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYCExl9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYCExl9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2469C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788301833;
	bh=3hZvnmqFaM1cNUJKcCb+8EpDWSNFTLbA95Ffhwh2bP8=;
	h=To:Subject:From:Date:From;
	b=IYCExl9YvsxDORWqwrLB+hsmkbFAnnB2pxTZKe6GwspufwkANR0T5F8GWHadPvPL1
	 QLEAM3lDq99FQQJSpksl1rCNK1VxOoHTYuW6OsxwUaY0dNGB9qHa0vJQD/lYP59Lwu
	 p6SmzQIq6Bs+co0augBRG1gwFvu5t0/c0H01NCgwW+0W99OtuRjmC+uuwbEDevuPJz
	 EGfoF1mvBQ+hZMDSIcKQCb7zZjnOJlT6plWpI/9aVZkyLJunFq9D5szVkC2aunFgwC
	 DuTobyOrbONPx6S83XQKIqN3ojEKqYcduJx2GURl/LfilufBFBEeUHdZc9b9dvXHAb
	 qiV73nvJ7HL1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE97AC61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830183369.19350.1133492247311484257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3407eca64d7f76bc8dc8fb23f4c011bc647f7e333cceb9d0e11cb47c865e79fe
Date: Tue, 01 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788301833
