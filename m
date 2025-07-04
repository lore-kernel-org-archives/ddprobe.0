Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480E82EE99A
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751624994; cv=none; b=WfVmb9ksW8HfGUCycOfMkVvTGU4jR0Uqa8aMHWEWJpoS8gBKKTJy8qpS2XRE8ZWmqFSaFGNTRDmrYnIw+a5RcF/I/ZBwrLqw2S3aL4/7PNGUG4dYNp0vBialRP0tmTFBs3vjAg2LzW2SsAUhaVduY/TaHYL4JeOjePcQcS4af+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751624994; c=relaxed/simple;
	bh=+ImorSvRVCRWA68m2bEJwaR1F9uaE0QohNtTPK+5/EY=;
	h=To:Subject:From:Message-Id:Date; b=CLvmVmegWSozxAVUVRsoJSuGmH/GcQXgwvjZw8xkiM0IszpGpvsLUCAPCPvUn8meWQCvTHl8OXUxAiybXhb83B37oyPV1D28j7sYedQe3m1kW1YJ7gNvtwXFlELvjrs2x7Qtp5OgKrQNx2GxYAlNfag++1E8vUkzNNCbExL9YzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugjTV5sJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugjTV5sJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDD8C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751624993;
	bh=+ImorSvRVCRWA68m2bEJwaR1F9uaE0QohNtTPK+5/EY=;
	h=To:Subject:From:Date:From;
	b=ugjTV5sJGgfhnQEoGWXyCyDzviOrsnsccCtwOkKx9FzqciUwzyEjCoIM5aG80TWvN
	 i18XgT4eL5IBL36t4HoTUxWI68TJsJBHWg9NmuF4L5QpAapowFgHXDH4alD62jgf6b
	 JdKJaEsF+cIVQvI5/2mWIe3qFhrFdHtKryYxVgnKFPAnIwHPCapHNqQL49WwuNDgk+
	 FL7bxp0DMkGk3FqQOFybwejA3IVrqeC+nFh7YiTJCrmUEIe6eKTD1LvSuEKPoSBL3T
	 VkKiWtWkBKTVa0vi6/xppjbbwQZjoEMARUAQaN6VKm/SSqFPwgLFwo7Yv9tRc4sCZD
	 bG13CyxUwwINg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC2C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162499357.14861.16600805312019839063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8464494de31dd64f525a97d9de50b9cd7a7cb6535db3f48a421068c8382f4e7
Date: Fri, 04 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751624993
