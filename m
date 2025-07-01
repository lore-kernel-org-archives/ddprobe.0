Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD4E274B3D
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751383193; cv=none; b=qlW2zmLd2pWaNvzsPBbH2zBUuBBEm6Eb+54TpCjhoViFKBs6Udu66RSAx623HiBm9URvrlIkzYdTL/E6Z0AAMpJrR0gFABDSah6Qmev13q/JwL/5mMQXOxwK6zHyddN1GgMEZXU+R89juDhM4H/8MVkovsOuLwiBTluhZjcOa/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751383193; c=relaxed/simple;
	bh=2NIDPMB9agfxdI1RUaXTsT2N9q397dEH4WiT4AvYkyg=;
	h=To:Subject:From:Message-Id:Date; b=XSN9UkbiXf62ywO5sGGv7lHSyEYwkpv8eVTbuI0s0y85DagIrtmyMhxOzcpknn8myuYm329bprzkaAhd8gFxfS7iI0xxaOraDgKB7ghmxGl1HDRKgY9l8x61iIIHLyyf7gxx2SDoe6fsZCC6JiKua4kBJex2PBR4j/fF7R6eM7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qO2iZIgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qO2iZIgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A335EC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751383193;
	bh=2NIDPMB9agfxdI1RUaXTsT2N9q397dEH4WiT4AvYkyg=;
	h=To:Subject:From:Date:From;
	b=qO2iZIgO1qaspK11nGRMpMl0mm3MoWLxizcbOXg6GVuYsCPlOyr6movgDgkTYSCFG
	 VNmdXjPBxva3Gy+EGoRInO+Ntsvb3b16QneywiFD8n1txazJJ6S9/NQHSvf7d1l+qP
	 ZPGofpRazySeh2ZT4TX+IYov3u3DohhTVaj0I4Bz+cWn+6xhv33GsNL5DdswCMla/y
	 +Zwpqj+kyz/pLmvFDdhHkNoHag74C9zNTNWWmx0iIDJCGXES3g31xvnMyetm1V5YyU
	 U5AMPPrfgwSvGjhPlGOcaXaMBFqeRLeK8g4fab3xfAafLQMj9nIoZDEaz3MORmS1GA
	 GkrJgWeTooUUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9290FC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138319359.7352.13471998041190158908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c2997bc8e4be6d523feaa7e6bdc58945a482421faf0e7069b56dfc5f53032c
Date: Tue, 01 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751383193
