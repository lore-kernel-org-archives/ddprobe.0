Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44982236E9
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756637993; cv=none; b=ZtJLaZ4Z9ebNx0QBx1iUjug6w82UavrePUjKKrZTJRksFkZLTRhnkeBhQIqB3vBH2Bdotp4omXBOYbLE3T8dXPeVAsKxebAuYvhHCLCNxpKlCPqjunXWo1+0skE4cqH3KjCTzsyBBaOV3vavveDkt6amXC67bUnhscEQuxViUDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756637993; c=relaxed/simple;
	bh=CuSaPHBDcQKCF9u1VGT29raYy3wWNkcWqy6vD3E65gM=;
	h=To:Subject:From:Message-Id:Date; b=ad3lCkfFNghd+xxHH7wh/eFhq9GIQkRtnp7hGmI6IMMwr87XXkkPsBBdH1SGb3iYsvQMxZjhk5JRNoAWrplLlUCVQkM7O454H85tJab6CqfYxwboteZSEIKhTpRVhtaZr3SFXIJrlPCeMIDb+4bgC9IAQkcWXLxW+ieFJTxWmDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfki17/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfki17/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AC0C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756637993;
	bh=CuSaPHBDcQKCF9u1VGT29raYy3wWNkcWqy6vD3E65gM=;
	h=To:Subject:From:Date:From;
	b=bfki17/iE6Ag9YT0JPG844UAV/FE7Bc2B0wp38LckH2lw8TwUnSNLaMWWCiFSkf7M
	 STqSf20jkLNvj9QibGYxX8/hdY3LQa5qI11qoSTXcmp8pdm9SDphE2Db6uDgYadPaj
	 il0NXBU2VM7Tz27WCok29FCK8BYtcR7KkSsgA159Pg1kK+jsvtqw+X6AqfiL/FfDqS
	 mV6EvNwupWvxaDv6b4qaWfb4UKCmU3ev+gufeu8LPP1N2XQJs8+rmRP2bnuEF3vLoF
	 OJxBfypTYNhG8NtPYQiw3qrtZHN3fAW+X2CmHrnl4POb5VLPmiLCt9NKpc7BuIbHfA
	 3NIu8DKVzgYQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EDFCA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663799357.2629.383958557141329434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0861a0abcbc0dd6eab04c820006db8b734170d4e3677fced2a914599773d64b
Date: Sun, 31 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756637993
