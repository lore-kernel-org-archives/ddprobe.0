Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6233220EB
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738301154; cv=none; b=m6gZOTxsRon4PSS1JpTHBfz+cXQDZ6Vpcnmqy6D+aYz0SeKlk3iZVZhD1FFHXYObkf20QfoUy9ppfy1leDAUpRX8dkuz6pS8Uplpn+z+Nc3EbBMKuRjmGL/HRPMshjWca3UG9xn6j1LDcNukzEbeKrqbPYOz2PE0r2cNRD4zi6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738301154; c=relaxed/simple;
	bh=8m49l4SsvHa0oyGFQsGkcAw+FSTyoI5e7BmIps+/29I=;
	h=To:Subject:From:Message-Id:Date; b=SWVCypIqvcj5/7YrDE0SFKEPo+P/yHz7LDJ94ZwihyOO0TsNITv0P28lEypTz4fZK9FIW2Fs2rd8nVrcY2zSO6QS72Keqf4Lkl/ykl+ReN29ljh0evqcsmNdILQ5w8f7ajecsnxCurkA+AxS+4JMhDngc935RcTcmc6s/6OtLsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipBSi7ud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipBSi7ud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B3BC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738301153;
	bh=8m49l4SsvHa0oyGFQsGkcAw+FSTyoI5e7BmIps+/29I=;
	h=To:Subject:From:Date:From;
	b=ipBSi7udqY+2vMlLIR4w/3YtnrGAKTBvQokUGFE+ELPhKhgkLnYrj3ycS14kXxfWP
	 WOgfW1zyXjycosBfw/snABy456S2R1+QtJyZOcI3eXSykJphu8bcP5p+g+b/s185YT
	 Dkp3KYt+G68o+/AgBBPkrk1VmF8cLStQseN5BHujiC318ZN/c2nyE9X9f6kXEnTbMh
	 aFPMepFQa+3U4NWsvdF8iFZZ3eeozHtL3ZXMFXgIXLuLiZd60icdnzk1LdPnTE+1bi
	 rR0bG5A0fLygV4xOyNQHfDXyRjZKYgARbtMdMKLBLSHksFWLFqQszsaIBq8HQgr4gF
	 ZnoPeZuaC34dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0995C02190
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173830115364.29209.10148029025004804474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6485c4845d12930697cabaf5c3b7e930c0c50aa1c962fe5d5b3c8b38a7ece1f3
Date: Fri, 31 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738301153
