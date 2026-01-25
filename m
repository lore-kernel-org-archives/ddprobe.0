Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1024730EF7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769384034; cv=none; b=MuixbqMH0BxJ8/mwajofIPhNQu1O+NGA5C9G4d3AHNztu8Zim6B1EFcnp/te+JNguOqnn01NGTujAuYbFLOTRnPaqJoEOUVbB47gWSx2G0JUvnIE4ZRcs3L+pgp01qGRKzSch9Yiiq6d10svfBYk87wGyp69onpj1o7RR+S+PqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769384034; c=relaxed/simple;
	bh=m6E0FGiGH6QWjDT9wnsFHHHuCXI/wATAQKcy+ihf+a4=;
	h=To:Subject:From:Message-Id:Date; b=OdTPrbutrmRMLHrfvfYPjOwrTMsdrb8iPNPTvWG+hXZkhftjdRs9gqm1IlIapl5ZJHBskVFbtObVynXUNezwfQAhdeZ6hy+PXRCV24jo1UhR8HNXdzMFUgiboqEc0kJXvc3374nA7PPi5zsDvn/CfOF5kYGf9mn+360P3D8Qjz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4Qgmaap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4Qgmaap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56D5C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769384033;
	bh=m6E0FGiGH6QWjDT9wnsFHHHuCXI/wATAQKcy+ihf+a4=;
	h=To:Subject:From:Date:From;
	b=P4QgmaapGDTl9eoScVXfAyrRQ/ZEpJPj8rU/QztjEDWTc1OxtkAmo2/72z2oXLt/L
	 D9i4k0xSXMVlmfYYXswi0E8KHM1nzfJvmzON/tS3zl+ePXLa+epCosCU7y3Ue0QvRl
	 kBAQvu/36RPLIT/VjsF0DhriYxqqTQqDhf4FXftur1Z6B9uyfXFc431IJUzIdNiCOS
	 9nhoE+3TDwVoFdBItIGryrW1IDUBeJgGo4p5f32ocJ8itmhHK2JVUWMrrZa3GvGLTZ
	 grwzO4jX/b6Ccby1BPngEnn6p/y2ux99gPSE/JHSGEtan53hls9Thxgy/BA2Ncy2/9
	 JVSdQdDJI2ycQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95181D7237C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938403357.20361.4852863117327209206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b25fc3f0b63f78ff19011521f5dbe8d44fda3100d566c9caa018549b57457ae1
Date: Sun, 25 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769384033
