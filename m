Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D7F146D7A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720781903; cv=none; b=ZsVcnvZwJzXNvYOb17RXoVRRTQB8UR/FmbZ88SJiloOYPFSI3Bd/+tqo/yhzLLHGmfkBxYzh1F+d3HZ4pjnWdj9W/C017y3veLHkPYzvxUh74C6wdIglLg12OL8d6/JmC4QtttkQYqqh755UzUPz509Ns/bSVNvV3Y+rbG28DM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720781903; c=relaxed/simple;
	bh=ck7MSjb1Rz6vlo+zzOyBtbOwOiHklqpMAJc+jofLw6Y=;
	h=To:Subject:From:Message-Id:Date; b=GIKyRHXYp/pLUYN4SEij3KXbVwiSONYUDsT3RC7/JImB7Kd+0PhimCUWeLpGN4tuZnWPsOsOcFxGtBHloc0Y8JZrLby2QWExryId6In9GhzBvx08iOAJPqTAWxlR+fwoHNS+K9S+hK/HjMhj1ZpyyrUW/CDD+Y/AUU6FnoqZjQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atkeUxtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atkeUxtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2169C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720781902;
	bh=ck7MSjb1Rz6vlo+zzOyBtbOwOiHklqpMAJc+jofLw6Y=;
	h=To:Subject:From:Date:From;
	b=atkeUxtmFcXfkq5PkEdJxKvnoMGZFVOpg9O4xhTTnm2BZZA9wtHlS7xSmcFCQsALA
	 jEyuMUJu30dwMqouQ3MjYJ0zs/e7N0MLIeygCP04MjeVFycq+Zz/NnHxGbPiD8maPi
	 GZTaMkog2Iy7NY4iLvvpqJScK6gX2FPctK4tPbWBErDXsyg1+s4+b3fxLEh0iW6nh1
	 8DCnmdxYJRPvBMWpuQ2fjYYKCjQiIOh+pSu2x+Xb2zrIQnO+4bmKv2HWmc1RqFRVMt
	 Li6hoi4ESKHg1M4REdl4c0G3dIquRfTnLJA400dLgpkt/RfYqAWcfnIljPQPW87hsW
	 ST8n5SkxYHJlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8970C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078190281.5505.17702692536114228074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f58687712864991cdabe10881d562cfed9703d895d248ef3fe90c8bc0305091
Date: Fri, 12 Jul 2024 10:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720781902
