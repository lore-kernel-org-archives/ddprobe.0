Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6325200DB
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712400497; cv=none; b=gxKqg6yNhR3HyOcLnZhfZufVdXO1Gum45qiOHYHEuknGCLmoTG6O4rCyjhirwC5KsYMGULvBbQtdvSOPaCmIj7ZGZHMS2qHnNxn/w3Ojw8l4TsEYcbpqJ/Fz5OsrPgjehKXxJef+fkIZ0cIvjjVZC2EsGk0Ihqef+/Let3lymQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712400497; c=relaxed/simple;
	bh=hV0R9JclFiuixS38WqoQjk8TYA+2K8cohq7oI32GvAU=;
	h=To:Subject:From:Message-Id:Date; b=Qz1IsiC5FVHC2nYIZ+AyapM9ojG20FJphAxdCgmEO/rpY0W/YUkISwHFqjGrvInHBk3diKtsYBFcirOWprs9VXBSn9Ct0rRh1h8Q+TJTcp1Bv+FYAZ3DPUd01r1niE8fpySwv8Dx76IFmh9xVAA3efu5KfyPE+pRuEOMs9csPfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAHa+8ad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAHa+8ad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E2FCC433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712400496;
	bh=hV0R9JclFiuixS38WqoQjk8TYA+2K8cohq7oI32GvAU=;
	h=To:Subject:From:Date:From;
	b=ZAHa+8ad5pRB38bimLRZkvPoAuqr8PJDODe6a+9aRe7/GfKPv9biLhyE6VfwJ/XiH
	 uvca+J68qLb/5gYx5B3OjRLm5fxfsw0gMTTr4tWz47H/t0gECIN43liAOJ6tleiELy
	 UH3Mx8moPgelPe05cqywq/qGZv0oKO5bMQC6r9AifV+Co3MotbQMGjZGljTdK0vzzQ
	 WNqVR7Penpil72ZkMk4wK57YWzU0LUCbO9AAZnVk5kb02nm1wHJ67jpBvkhGSm7kr4
	 izl68Sa9g4pMS4gq72WUWqE6xEYRj+SY42VawYdQS7ciCeIZb+o9rGIAueAXSBcGeZ
	 9idX0arP9jd5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6D5CD1284
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171240049636.23747.11301471738282163210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aedb7426fe3e180dad789c8238671a7a92c66f2105f9df53feeb70670ceb3d6
Date: Sat, 06 Apr 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712400496
