Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C90F4FA
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759192794; cv=none; b=SfYJ7WXPVaF9ua9gM/hHEitKHopKLMVn+CuJ8e1/4zPh/H1Cii3i9MjLB4ChbDKyORqEeXade7qh8rcLkWXPH1016RGGMhRBOJ1Ov9TLQX0frMVJmMB1a+A+DmIfn3FsGeJoZmm8pwYMinYGxOaCm7YOn1WOGqSApKhjx0Wgwmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759192794; c=relaxed/simple;
	bh=aRvllXnUqoqzgcqD31wCL8PVxeezaqIIAVqt1cxIkgU=;
	h=To:Subject:From:Message-Id:Date; b=ZtDdvdcerfRxBi1uV0LYC/CUWtogk3IpHD5Mh1EvlNdfR2M2/mHZeJTBVmAY63k4+P8f8R6c9d78DZpyTyBXHplXLOWW8aQCBf8GDffTM5/yUeZqDBZ3F9Hefifdh3qAjYO/+XGq5LKzgMNaCkzPfIuH7NZxCfCSrYwVDGiL2K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF2dmhN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF2dmhN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64F5C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759192793;
	bh=aRvllXnUqoqzgcqD31wCL8PVxeezaqIIAVqt1cxIkgU=;
	h=To:Subject:From:Date:From;
	b=CF2dmhN2+nR9DXzRNYHTn5iPF2x/DOyTY0RXLJAZaAIu5Pvn2t7WEAbgMRpTYcSES
	 d5GBw6D8F544WbwXhj+hczyXmDoXFFvdDHqsEF4kbeTo5/OVomH1/jQW1PVTDatWct
	 AXFDe+cuXqfoeqGKFKDR9fiJJLBLlqTTtDepNbfju64bOBfGFU5IkG48Sl1vdSh8nW
	 LvpaufBTgTyb1PIxl2chUyVtGwxBKmTA9N7HyRyH68cKpNHaeMZbctagqc60ZozTMH
	 b5pV63Qrq+nJqaeUGiYFiEN4Eo/Y/M6qb5l6w8F3t0vDVKaVirbMiR40IQj+he+jwL
	 3vLbQJ8HALfNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E9FCAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919279358.20221.9200184677372672186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa99b44ebaffaea11b1679e208dece9db285a3f426dc80b3a189b51790fae6f8
Date: Tue, 30 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759192793
