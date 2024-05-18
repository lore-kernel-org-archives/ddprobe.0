Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771B3C2C8
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716060743; cv=none; b=Dv8vDATWm8ihtY70UGFxV5/9qdAVdcy4V8OFKOXbkUvQ3c0anfwCKCcheyzVZXEEctuz4y+xncNKZ2c/AKcIHyNWsAN6xu5oxD00EyrHFi+53v7sSr1+K3ksglDCBO5vIWrPsC/am7undaUVF9XADCTZc7cZxipdymPs5hUjzvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716060743; c=relaxed/simple;
	bh=AX+G8U12eiAXF/wfF6syCwGPgw7i/DAhjSozxndxAlQ=;
	h=To:Subject:From:Message-Id:Date; b=Xq7WlxvsmOC0UTu5EN7OsvkEQIn9hVSq7yEz17Sqp2/BfApkVDLr67IoOTWl3GFf5gCFN89dUxq1qZWJ95UaTW08sNAUUfxZl5eOSVnGHrS66TRmlo7DakZBn2QFN/UCo5bYAzdVD9LVq4vLxTJ6HnkMjw9x6TW44NVSgBbG6Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceYSLnmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceYSLnmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D97FC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 19:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716060743;
	bh=AX+G8U12eiAXF/wfF6syCwGPgw7i/DAhjSozxndxAlQ=;
	h=To:Subject:From:Date:From;
	b=ceYSLnmZHRaSWuan5v5mp26nE+EpG8V2PAOVDtRYYWpaLohsVODFTXJARHhdgOQ5b
	 krebUdTy766hMgv7ZGSyim/6EzdqSpryaY+ZNq1pXVWdSxOPUXnxSzXDnjDqdI/WH7
	 M24LEzxLzzJVKwEZjHy40eV1rdrc4YOCQ7ME6zQ6o1onr97kfNdT2UTJ1+gyvCsLaJ
	 VdhZbWJGTTHIvNu+1mpEhN/Z8Hzp477JX3injrAMIYrYcV4Gq+cne3yofDhiNWFIin
	 mPKG50Lc1Oc1mq4VDCDZa3fGE56rfAnDYsJvGTmkyZZ4e8fjo0JCzlXZj8jdNiVhEm
	 0xf3eWlw0Uapg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3F78C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171606074285.32321.671588279238193539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde23cb279c9cb51869ef200940b018a23b466ebfbfe6f21e6209374b7273b0e
Date: Sat, 18 May 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716060742
