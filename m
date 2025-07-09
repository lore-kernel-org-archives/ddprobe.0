Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB36823F291
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752088793; cv=none; b=VocuT7Ddkzbhoe79vnmSdUBF8VGSjCOS5dc/T4ErqXMFia48BTi+vsVrQdLabqIi6hhCdnXTHbVrIYCIRFZRuteODewIkD4u4dmK3hGUs5Y+nTsQBpws+Rj1kBudE63uJc/8RNcEzPNVDUOrW5mBd7AP/5um7YykhMC0W5jf4ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752088793; c=relaxed/simple;
	bh=v5x8MQRBupeQfSRneLhNAUP6nbNQaf5nFis4vyFiwHQ=;
	h=To:Subject:From:Message-Id:Date; b=s0gmBt/cQW+HKrALhQevWJGm6UUSUh1YlY69fxIA4/FaScOOOru2jD0GdifBk+7nttMm+w8sfqfzUEnklJjXTvFFgDS2pq/+B6kZbqaz77scpzOA1eBniYWtZbxpNXK/EhbckvyJqdQ7tU1d8lVXuPdK54Q1a3FkNVsNyzJIiSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KogzLZhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KogzLZhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC2C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752088793;
	bh=v5x8MQRBupeQfSRneLhNAUP6nbNQaf5nFis4vyFiwHQ=;
	h=To:Subject:From:Date:From;
	b=KogzLZhPZ0C00NIj6RntjTCgDsMBLZ2AV+cpww+1pqLgUFEBMDPilqRuKP8kuaUtZ
	 B51YY4U5gXwYc7RcZVzNu+/ALutjdFEaqSMr8HHf5esP+CIQ5bxxD53p1vPD9Mf3BA
	 /5w53aEHpNH476F8V6jhhqmgQ51n1wvp0eRw8Oc/79NKtyqep2wv49Bb8IGK7kT4kz
	 MULyzV5fMfWkd7XK3/yoCRPoFGyMOMk65/ehkngK/SyeUNjN7xjkOc7DkfOLvL2euf
	 gvSW2wE5HBcnZwZ5pLfIlerZODIPRLSRcidLM0oEkbMK1QnP9vXQZdROZVU2Y0kyzk
	 clSE6zttxze8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E443C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208879357.14262.10737265700058702402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c36605709aaf8858040bb6209cc126fc18f4fa5b600632d5271fe7b3de0c2d
Date: Wed, 09 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752088793
