Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D78274669
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767257635; cv=none; b=LTjm2fNWSiIJC+2HI9aZ+lQHUNocDoe6me9fH/Ut8LWTeEats5fB9peAaiePKO6PB7LHpu3a0LVzoYie+AOH1ihzeexeP8b0bJom7croOtgnPeiGyrgTMCtCIs4L7cxyz4PFKmXDGgFSDWvNZEqLqk9A+17JNHwe2eFkfI785oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767257635; c=relaxed/simple;
	bh=ufE38CZVscQ7Ft+xAbO/Zsu1SFrOrAQkaoKEhtL+tcw=;
	h=To:Subject:From:Message-Id:Date; b=nrGHNtedzDjrJ+5UYI2bSFC4juCGxWZIfB0pFnQvi5jF4L82VzkkzH2vJWsx6rUBEFHCig9QAWhD23BkR8uIzNFs8yK79vAwfysCsIGjgc84GqbI+evQ2J3qccd7/rG/h2Oz1HZmmisAaWFnNUU0kCqYORm+oCHeJbM5A3evMSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UirOdBoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UirOdBoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EA4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767257634;
	bh=ufE38CZVscQ7Ft+xAbO/Zsu1SFrOrAQkaoKEhtL+tcw=;
	h=To:Subject:From:Date:From;
	b=UirOdBoRgoof6+thzB9a6FC7w5Yt+6TGG/EYTK+TQEbNWH5hWPwFpSVm4U6HM9gW0
	 68lKq0jBMmke6X55WHccEdFSihvPzJT1cFMSEcs6fVwwhcSgejmNGR2QfpGp7z7CPy
	 x0H8nN7dBsGwwsSIoodlMw1QPPBPEYnR5l0r/uuXJssxhXmHvZP1ov7ce03o8pyrRH
	 b0yfE4yFHYdVBXDRTBHOKkIjMj6ghzojETm64VqvAyyzL2y6E42trAadoTAFqlyUnT
	 rVH6weuVo0WYzFq2fMVHacjtDfRHrv1yzlW72MRwx6Uo8QT0JakmX6QhNx16SOyPA/
	 okFsQc1X3ZXSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D9EEE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725763357.5636.16188466479724162952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5781726f9f553ae174cbcb1ec42dbbfd14b5b7f0f68435fcfe3d673d515feeb
Date: Thu, 01 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767257633
