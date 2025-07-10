Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A28A28C5D1
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752139195; cv=none; b=SSoXW4bwCK69MAWhdsrhMFzMmkUx/YBp07BrBu88xg4aE+6MeclSHJygVjMUjUAVJoE96iFDCJZ8qS9gsGO/HJqjovuy7CS6kGn0rhvKhS45YbK7bxk4FK1P1I0eRIjL1eCOYtfoYaHKVPOAkKuLbquIMokm1rX84gJnHsEESkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752139195; c=relaxed/simple;
	bh=pIOCT1k5lBA0VmFEbo/SdrTSeFVNWROplTIRNo5y0X0=;
	h=To:Subject:From:Message-Id:Date; b=Jg5TPcQYlHIuqCLIjRVxIEQ/4mls21Xkusw0cBeYojQAGZZmBFfA8W7noPaGifWOI902vjXWvMiq1AzRSQ/PUyZq2L3DzcCscmKiUla+nsbPX7NkKn6SzHYPTrnm5Me2J89osNFN/731pJOktX7TwGybN3PB3F0sdWSdFwg06hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1uLgRcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1uLgRcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C87CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752139193;
	bh=pIOCT1k5lBA0VmFEbo/SdrTSeFVNWROplTIRNo5y0X0=;
	h=To:Subject:From:Date:From;
	b=k1uLgRcbrjooH43sS5B8YK1Ml1oHUKcBAph1vjrAXCEsG3JRLNdMbPZF0NkkBgkOG
	 HuJ2TMirZHzR1/mMz1+tYmwpxjdGfwkURUDPrhEyX1hYamOFomLHjab2Xi2eO/Hwvc
	 Z6voyrtsc+X/vxrSxe6jLtlpJhyrpJEjFl0+jNaK0LQ4RIvUqa2fE23Kl47QYLn/UJ
	 P6fg4qfpkrsIhHPqEJBMWbXSct+GT1GcVxmEbGsKbgIkISAi/52OFW6wojnl6zg1Dl
	 D+1eAXz38b5llRAdAzOde/zlSCowPz1OhQNKpaRjdF71lAYKj48llYCLT3O4E2fnrz
	 TImsBjbM7RrAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E043C83F1F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213919357.6614.1808344699576437830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bfa35ef4a1b74aca982ab144eb3dd2623be72c6fb786b234ac3d78341203c31
Date: Thu, 10 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752139193
