Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4311D367
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744352394; cv=none; b=T2mSJ7XoVRPqzZU08jD8Ob1yoZbgvAd7W4NSR8n03HMd1UMM99wol3n8FncINKAEEMQvA481BYO8gKTPExpltymJp8qlbQJuYASC9NOgBKgMBBC9Y87CNtw4VNCiXEGMW8zIYhdlWLYXbnzFkb3fuQfUzsFNHWEh2mkmXs0jR6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744352394; c=relaxed/simple;
	bh=tUlhhmS7hu1+CmyJH1W/g0BwPNUedxG1AhoE9vCmqZ4=;
	h=To:Subject:From:Message-Id:Date; b=fGtCByK++jlv9C2ldQkRKBp68w/QiRiSEng4oM8eT3BVyJ1IP7lT907PFneizOWxUNM8F4flb6rX3F7a9q5hPyJZWgtwfkb+pXs180F0lx1JnX5J9UCxecLbsO30lr3XQozqJU7m8U3OdD6K8e7YRGeTrJGxRcRgBiq1lwMQTTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9x+8cCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9x+8cCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAE0C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744352393;
	bh=tUlhhmS7hu1+CmyJH1W/g0BwPNUedxG1AhoE9vCmqZ4=;
	h=To:Subject:From:Date:From;
	b=M9x+8cCq+gGQsd2/Y8VDLBWDKTR6Y9pGye/NLxq/yhByBgTJyAh//GG0dAATK9WtH
	 L0OewoSkwX78z2UI3KwB0Kq6z5nm5AUpQquornkjdpepf0Ac/wZ59G0DhjevbCmEOw
	 zBivRAL3ecu86jaAiXqCQWnEE1FVAutqcxKozG/v2nLPoVkRYFDhbhs6UQ7H6aajjh
	 N01plS61JVtspH5u0CgFKZ4GTzBfmry1olzVarxpCaDwiiFxwj1wZ01NYw6mnSb1rB
	 tyO4mxl/huHTfNGt/x/lS27Ane5gAWgpKqxV+hA6M6njE2fRLe/KUqiH8JlH+s6Tu1
	 oN6ckw/hX81Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EA2C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435239358.22311.6582511486883177002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e66c6e9f32829b0025e7cef52ddbdf14a0d233a4b1a418df3a427a7e29706f8
Date: Fri, 11 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744352393
