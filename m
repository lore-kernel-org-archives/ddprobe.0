Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D8818DB01
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749271195; cv=none; b=hkuAMbZ+9YcdNrj+dObwj83KVqPAymoidvsg6DvadvPU8cQwZGBgNSctZbCIyF6T99e5gvSC4QQKT/7MIwYXw56zMPdN4hzjQUPSuBwED7VMhOhpZnRP7vmhfeItcCEl+2yOxs0svfSJr+qxGzPQIGgLFf9zUeAw2kuTajovi5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749271195; c=relaxed/simple;
	bh=CwjqZZtLF0CxaUm6AsnS0wo2vYbh1CG5tkVUj05tG2I=;
	h=To:Subject:From:Message-Id:Date; b=buRYMmac3ate/PUqcm1XgDsN+zbyUnMtkuJsWymhp5JGloBPJgZXhF/598MUDQn117xpKYoedPjy+HvXuCRZD0VnVfg6ujKaItodASOV2f6yUoRrgXm7AfQGTA4Ao0BgAHNIuFEPZ9nCBF8MB4UEMQy+TNLU6/ge+JvSCtS37S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ms7dvpOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ms7dvpOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB22CC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749271193;
	bh=CwjqZZtLF0CxaUm6AsnS0wo2vYbh1CG5tkVUj05tG2I=;
	h=To:Subject:From:Date:From;
	b=Ms7dvpOHSLsufbKSImjmj4dfxQ53fzkeCS9QOfloKwriaFhNryC6CMCJVkQYZVS3I
	 rlqHAVw6KNM9zCGoK0RU2wVBXVAcnhVRzpgq6vxf/fRGghL2s9CES6oHdXQNVJrnKp
	 VA0kCOJJlOYgmv7LR3LbqMI6+mbnFRZSHg9wCS6gu+xfFN4PpMD5bxO1pm9+0XZy8R
	 ZdEiiuMr3Zm/YrVPoe3/1s0r6OYUrSuqVsclRR/3pXr97Ja7PCrTW9dZQEUhMIr4W1
	 CZpuAfrbcGntGx5W8FSEpf0TE4lujy2m4WbgtmhBo4wZd0lpshi46mwYsk06KFIvyQ
	 g+QTfKSv8wydA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B4C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927119358.16441.10848605770242293978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f038b3df02921d8197848ffa0cbdc43f5f5a6afd607800e6997cbd0088f30d
Date: Sat, 07 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749271193
