Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF302620DE
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771356894; cv=none; b=U4pgwgK9M9t5gbnj5CqS90zIk82EUnRN6mzL9EPBVil+0APB05X4q964l3eBCStS6Jw0xrJvHxVSayDJQ0M2sfv2iWiZfRBcMdrJu0eU1DuQmIWAqV8nt/DUyfOhU6+r/SPYj5zuCguPXJgRvNmN7jijcEshWo8bgi3qnU6QFCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771356894; c=relaxed/simple;
	bh=v1S3Jo0Aw0rr3qqH6+4mozgiQPH1JDF0qzkL2DIw4rA=;
	h=To:Subject:From:Message-Id:Date; b=TF/loRcLsGKcQEJ/xgvrqJeSq4ZMBh1u4v07V0D9GBaxMCeTLLTyV+l2CGKoqupQ/8auloDNvRL1mueco/D0GDN/6WUOlj281hUtblEgLnrMxrPGV6NVOB9s7kaM8Lp+Mc17u/bg8u+JSLyPiR1UOX/3rAkyUk1o2RqvURQXbxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuszAA+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuszAA+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDF1C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771356893;
	bh=v1S3Jo0Aw0rr3qqH6+4mozgiQPH1JDF0qzkL2DIw4rA=;
	h=To:Subject:From:Date:From;
	b=OuszAA+tFHnj8HREBfhGzpS1P6rnvUN+3G5noiY/TBclR4Vqg2SNPbeHvber4d2mT
	 Up78sfL8vi0Z94WIMiGCV9mvdTkpsR+HbtvAJDy/ARYiKhdMwX5yIlFOLPBVUfIbR8
	 WPKuBAsMyfomM6mhx8JQPKKFy15v6hjE3zod4os3TuuVcEPIt0uwhph1ZKW+btccEb
	 SyKRbSAVsjpXH+fWWCBRYFP8iVFE5dpkRz8YVm7Qrbs8xBZ4/weMwq44xVib1JuS+4
	 GWmapXUXEbcRNcilbFDORnkKy1nNFKeBLd5gaI+MjdjZnER3l85JNZvNQMNihqmnvb
	 3K+IJs9Y2Homw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F2AE9A031
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135689359.20633.14848551600185336486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec181c5a87b57d005e9ebecdab190114e567634c3ca4b8a929a04839ac80778
Date: Tue, 17 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771356893
