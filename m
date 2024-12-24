Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D89A192D76
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735052154; cv=none; b=OASEQSXlZHy0M84WcTZ34ReJFY/YhVdr1wP9/j18P9FeLFGd/TSaagtcdemr6w0TDyDgnoyOSjhCMK6pRD65ZzM9Ju2A/KWH/smHrQl9RYxxUFcm2zySbKGn1nPtUznrfZrlfX9Uz7XvPHUmNEsKL3Npd8lU3YCYSv8ySE/HjGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735052154; c=relaxed/simple;
	bh=O/TPG/QvEvCe/hnHjvehZ2Sx98Xkt/ejmxyUVHs3WQE=;
	h=To:Subject:From:Message-Id:Date; b=QQ2pVWLY99CPUlf+FWoSnnffoUcctIjdUG8Di+/CpCToFVPph9iMaJC9DfwnpUKrqictyljw6N/+ByuCL71n+ZpGxhRJYmOj3yV5rU2QKrXNJ1eobDusz/FfayON3fVVJ4T/QHBxyew4L7Gem2r7u1xsJaC5Y9ZHFmPoYRbIrF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnLapGpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnLapGpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C0BC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735052153;
	bh=O/TPG/QvEvCe/hnHjvehZ2Sx98Xkt/ejmxyUVHs3WQE=;
	h=To:Subject:From:Date:From;
	b=DnLapGpepi9+6XXSxIKJ/DAL182M+8NfQKzMq/vLZfJEt1kaDouewI2wiWZTVY3Lj
	 mEWcO4hh3xYaSG592mQERhZ1TlAIAocLArN5ZSQLQMeXsd9M553gLlybYWphszGLF+
	 oBynfEANya/g2eQcVET7NDKAjWcWE2WwgtUOdRMZQjX/z4wpvgJjLkr1arxGd0pp0W
	 mL2vl9/Fe+JE6Keahz1M8RaykoRC/GU2sVENHVJcKicApq2tm79LQPSrVkZXau5BYw
	 VRkxInRFUuhYxCCYOqQAdSHYaIcbzvZKf2Gc7RThICLDSsw2BXF4KUg9FSx1vcNVir
	 sSnv/mIFtuSWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93956E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173505215359.32238.7238096074750060262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b72a9806aca27650c4d0f0cf5858d8f893c24d837797dffe50985f754da951
Date: Tue, 24 Dec 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735052153
