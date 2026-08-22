Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED9C1E7C23
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787416234; cv=none; b=clcU79Ik3lrSeCMfYLpJtOkr9TmD3cI4jLAphfCgJvKZyItNM315tQ43uPCSVFQLjwXLzcq2kXo27BhLepWzZYICBHXbRElb+SoElXBaeA9sw43qQRKaYVwKqZBgXn2EDnaLXLX0gaikOU80uF2zU2y+mRhwbe45zFnwiaSzD10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787416234; c=relaxed/simple;
	bh=ZOLrFzUjBbK/L8yNT1w1qkzodKznFFWkMLYRQjbsz4s=;
	h=To:Subject:From:Message-Id:Date; b=HLuzze177SrA/Br90GpjMfo9zCG7q8UDhk6trRBfans8ATdC5Nm/stAnmHnufnaORfn9l6cKKNIdcfjQkrebm4JxWE7NuQA9WNWArcEzcdjuckQz+M0ngFCLgGfZpLkDxIUGopHwUz+7XIVcltFz5BvSXAAkrvErgy8TM3mgRTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5g91qI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5g91qI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFE6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787416233;
	bh=ZOLrFzUjBbK/L8yNT1w1qkzodKznFFWkMLYRQjbsz4s=;
	h=To:Subject:From:Date:From;
	b=G5g91qI5IDXMQSeKyAmKfgGw9+dPEAaQVoqUOdja5LEYzFELcF56OhW0gB1eQQXG/
	 54ittEE0MjqN0nW5VNvqvxPel+ZeoIO7/kXEPMo8Xkd7RAZSfZiis8EQayAsJ8zmfX
	 WROLQka7FMka/X84KZSwrIS8U8mhy6VWu1xBche35u+sbjhOsclfxCJAdF82RnJM2I
	 ieBxoeTprTO+SHZT94wxHzcGr+nMydLWV9iyX6lStwcSIjapO4nhu8i0Y50JQfl0sZ
	 a/eFuRvNSyy+3Ob7ryqWdzR0jiDJe6vbRJtnzFiMSMs/7ne3dRP1kTehFepf37d2UX
	 1kdv4Rroc5HrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3068C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741623371.17982.4443319994639313657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b4c2109a816bf10868ec86d01c77afa5b0140618e5cd8731d12ce303ed9d4b
Date: Sat, 22 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787416233
