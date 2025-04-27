Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFD92629C
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745762994; cv=none; b=OWlUoC1MwHsHiILJsKW8VuY8E/UR4kj865T1+VRZ5rfUawloPUS1Ohl3s+tDRpfwsYP5uR7DEI+MkCj2CNBPgRcoXvxcLzsD4W0rrQNkbHtXvhszZN0fjTa+SAE79YNv5zF8yRbxIXPFr/2OyzZ3P2xw3stRnhVM0TWQqzsGqvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745762994; c=relaxed/simple;
	bh=S7b97h1SVA6DZylYzzDCPWMw3+7xFOJu3s+7L3ttOpw=;
	h=To:Subject:From:Message-Id:Date; b=QvSz5s08Z7e6BqjmnLkvf8B2GM4WrCCW2GzEsVxVRAX1ZzGUNNIBPqZ9W3GixCCKppH1CSGnZIMmL+fn+ytplHHbrHuheGoCiUyNu7hqU+td6/qL64q0c16ST+AGyK2kyrmVomLOfEKvjSuHuPqwjKFZDszIU+jb34dJk7K6tAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSx3OMGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSx3OMGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B77C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745762993;
	bh=S7b97h1SVA6DZylYzzDCPWMw3+7xFOJu3s+7L3ttOpw=;
	h=To:Subject:From:Date:From;
	b=NSx3OMGroqzKel5CkZ/LHXiFLggFMPlJkBG4FrJHX9aRNSyDRp9RiHCqFTxqdUgTU
	 o6MYqsZz2IAPwcGM/7s5peRZbf8sc1G38nVglGR3KiFfDHvCaWUPPxTh/P2nfN0Xz1
	 VD2PkoNV5JSamz9WBY3VXaVyLjW11pZ8MS5I+lFdusIoZhnyGXQUHHXYTH/wik7s+r
	 ikX/AyBbyH5f7kd8QsYGAB2JC5VAv7fjcSLPWFZtjrnWR+Ajke1v4GGSs9fmvSFIVG
	 RbC7tUgkpQrxWne/SZ50ZB205gDFZ/nMOkDvNnGb7KKDT8pOtXW0ZTPEdaUa+Kc69F
	 N0Cjr4lslJZOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED54C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576299357.6694.3051057364841464347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6683bcae3dd4316173c32fd243a09330503dc94cdc4a9f45df51c704eb95533
Date: Sun, 27 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745762993
