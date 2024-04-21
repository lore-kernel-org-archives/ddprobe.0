Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690661BC23
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 17:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713718823; cv=none; b=XjIfAe+zDYZbJp3szwi8/ZOwdr1bDQAHlilFNPV+tD7v23EFLo44x5XO0IsKDg/m6ulhG1DszkyFpWtNzgQ+A55JA2KPMR3kwXTgP34nfj/idbXb8+Ey1U+MZmvwNioyFH3g/rRwEHzgMlPHArRNgo7F2LYlJLYhAZTFVpSFkQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713718823; c=relaxed/simple;
	bh=HXXfSbT7CZWEypcVmmxHQVRArg4Nl2XuHC3Vo4DLsX0=;
	h=To:Subject:From:Message-Id:Date; b=KsKWZbpZBPV73KYA3PB1RCFm/ST47/ICz0s12mN8zwOJfyXxQoTUtvKMM490RNZ5GIwagQSXsFaxR0YmKvmZ2tdiRSPj2dr9NAANVkTrrU42CsMKCOf7Kn5GHTzA+dK2q2w1tinx/JjKtuyl0WPSlIsFdTh/46YdrRpYr4Z/gJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiApgs1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiApgs1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52D2C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 17:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713718822;
	bh=HXXfSbT7CZWEypcVmmxHQVRArg4Nl2XuHC3Vo4DLsX0=;
	h=To:Subject:From:Date:From;
	b=FiApgs1Ve9xDpZAmTBqfDk7XiFWISSRfLPWu7XujQY7hD66MYJe3CjLnJBsoGCMPO
	 nruhIU9QvvSs/1T/Lf61vECkOxd32dnK7bGiiva+xcCPoccl9Ja4yAnPOscjSRutQ5
	 efcFUViXZVTVdLDBq0zZXlMGrWJoczMntr4ZJimoCojLybHUh8p+Tyb+JK2k1S9XOR
	 Gj0MbPv4ggnszeFUgsJGfhg0sLXlGs3UvDsEwUE8wUZktjxcJ3FVb9XrRvgDcp/qwL
	 hd1srldScSLJNlG3gcNgpXgm6rZNdKLtP708azKtdxTgeE7qRE0zh4nVjHko1gf6j9
	 Y/504iS5Iuxmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D83C04FF8
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 17:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171371882278.13957.14394536977110221778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a83f948a2f55f09018ec4ddae24f9d1587a9850da2a1dee4570867913e6942
Date: Sun, 21 Apr 2024 17:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713718822
