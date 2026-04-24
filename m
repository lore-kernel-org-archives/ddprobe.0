Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241B42DCF45
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777031254; cv=none; b=pBFT790XyjvNDre5vxLM2TlHEft4XBU/T43JLHWNBB9oLMI/HW+0XIqqS1wdSCKrCR/I+P9xDe1olGHcPqD1HzkoTMm3YRu8eemUC0i6jxbbqBZ2YVdZBWNVhyMWAwVIgBqYLmTnXz4C3rYoDvyuXcUuupS05xM+Wc+2pvR+XZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777031254; c=relaxed/simple;
	bh=K+0/EaCJ0tB84y+SenXyquUhBpNkkBvmtGBgfwA69z8=;
	h=To:Subject:From:Message-Id:Date; b=rNg+fwt1Hu5SJ6/f7x2ui3Iw5xIby/AyVjpAzWe1eH5eT/WgiuqJ7TRpy826WCZBFswvIu+LvjJnmTX2nEfz7KYT0G2rhS3sOvtIPBtaWvgC2ue70mrwKWCslB/U7oH0tJI3PfLddccaTsF8KH56+nTPxAPhlD/7b0+3JTSvKnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyUzw0n6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyUzw0n6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BA5C2BCB2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777031253;
	bh=K+0/EaCJ0tB84y+SenXyquUhBpNkkBvmtGBgfwA69z8=;
	h=To:Subject:From:Date:From;
	b=fyUzw0n6Ve3c3GJYi9U99MtvzKVEVNuKXl2WfxR6dLsixLqWWJnoriY8e0bdv0Lfd
	 u8Cio6ukqgB8tEq16FVZSb4Rm8+NHpQyzitd/ZYflnPVHRHfZZgTWkUr+VKiHQDSpI
	 svBnuqnCDflkLKlgj87e7hliZih/Z6jKtNw/sXAmVDXNLHke0XV6Z3nK8hZ+oVY0OT
	 PZfX031k3hGsFlvhoARtyTQQNBW+QwnxZFLAhZN63Vkn02Ra3F+LmSeFafwtTM43ap
	 Yvx7Pegh29D6PUVnZKsykVkI0gDHoCjH8h2MYf07jCzKFGO37wwTKREvb+XtUERwrP
	 3ySAtvaa1YlwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EA2FE5211
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703125368.9609.6537355938054966416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147c1e237717238137c528fc781a34076121c94624ed027165afd3f258947dcc
Date: Fri, 24 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777031253
