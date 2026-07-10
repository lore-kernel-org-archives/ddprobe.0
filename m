Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4093A1C5F1B
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783648114; cv=none; b=bnnJVPaeJBEss+vXCVqjYn6xmDNQsKGDL74MsVGxV2KWhAKjLdTuRm4ojUgVZ3Vl6x4SXLbjvEjfhdkEJb3fdAPMvamBO+V0ilxC6yxe270cpKJohwEy2E3wBP8I5I259A76q3IPSJZUKY5CG2Hh9pDrG38Y6tQHE/cgmTW6xfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783648114; c=relaxed/simple;
	bh=qzBhK8Kf9sjRPVa1F6+soByfcvlEHeFFetRCtlZSF0w=;
	h=To:Subject:From:Message-Id:Date; b=p09z56fmN20RtVsrrArAjPP+3ZVzyC+xJWDqFlwZfluC7SBynx2yI1gUEVS7w9CRuOL3hDT7Q/LbAGtty+NrTbWiB5S95U/AJXXGM5+64kc9wzNIqSPr55Hafu1VU65iOW48sw15mU39ahsjr1yEHpdL4iojd/oLwAnTg3yv5Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsBOKZ8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsBOKZ8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18D6C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783648113;
	bh=qzBhK8Kf9sjRPVa1F6+soByfcvlEHeFFetRCtlZSF0w=;
	h=To:Subject:From:Date:From;
	b=TsBOKZ8Dn5opcoTL/z5tIIpJjNHObLz80mi1AF1/sQPgkx7OxJTUN/1Pw15zHwH6A
	 R9toBtvSpF8Cp8QjnQw1Eb+SIdhz64iLefsNma9cFu+AufmA7k1+vxIoLNCXlk+00S
	 H9T3CpyXShCaIhbJBe8WEFubjNBuo3mnFlM6+nGRprW8Td/K5QkyYj+oRMOoOJoRk5
	 GlPZVEB2WYgrO34nPpGBHiuvQoS5Cc+o2typK9AqU0TlOeISAbz7hocpkM59tPjT2g
	 vGzqmpi7ROyp5IbJONlSRR7xzvcCsaN8rw186IGFrx5yqFN4ARDaw+3IEhkHQ8Bw5R
	 ZPZ/vhqQcclwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3FCC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364811368.27235.11088086571150172803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6600b34f4818278b41134424fa8ad803decf39db93393a97b3e59c6b3f9eca5
Date: Fri, 10 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783648113
