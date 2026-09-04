Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363FA3B9929
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788540634; cv=none; b=Xc4Q91Z2CqFteV8xvoPfqDYnumHPXkLrKDe+k79o1G7YoSsd3nb5HiGlaSdci7sPlktrqDivZPQ/Q+J47pYKsz/uPKl6Cr7dzXClhojH00VpuEkogQHIJgAh0RaVMYyCPK2sOylDTi3WsyMEl6qCuzPyiBhlQuTgEqQHgypRZkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788540634; c=relaxed/simple;
	bh=RXkYhyjiGWWtptwSi3qdzdvwaJmp4jq30B0pwG+fWiU=;
	h=To:Subject:From:Message-Id:Date; b=QidWUPJHppxYOF5QZd4/O9ql/W8jienb59yI9uHM0AkejXb/5KTDa+Xkb+rg0RRblq7g+ZgqUGe8LS+M4AqepCDd8DShPs22vV1pGEATZnr2Igh7xFkDZIVjfUGcoZPIkWHrvqNGMLK5MXyn3eZEcUKuOD50CLhIucgd6YOcZK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbeaQQf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbeaQQf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA70C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788540633;
	bh=RXkYhyjiGWWtptwSi3qdzdvwaJmp4jq30B0pwG+fWiU=;
	h=To:Subject:From:Date:From;
	b=fbeaQQf9CB4TmHd6TkX2Ahhzf7bGMgCWE3Zn5Ch9INJjydC3XcYjyIZI+gMENmXbb
	 ESvPQSr9ed4YBMBcy3uK+UMjyYvle0FNILhrQTfXI3spEO2IiA3SLYzCiWUS389AZz
	 V7ZQwTNkgCVjxq2dulsPIvuKsPXNpxJdcx8eDPdQc/88pQgd6D4Mj4LuEnckeg+5YW
	 JCOxIsv/SxJr8nexaz5oj7bznhljKv5iwruuKvmv+AcRv07Lz5tHWWBabVCfeXH/si
	 DINyQd8WnX6P7+mAur2mVRwSP+Q1Olmm+5gi5gfAqx8T1C4waJvw4Vm2S1BcMSxb07
	 RbrstKRNS2Ksg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9CAC79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854063369.7478.16798083792303176566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21fc90bef1a6b516e68175c7fdaed752585b7f289c911611dd01b77f81861e3
Date: Fri, 04 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788540633
