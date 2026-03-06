Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3565B372B20
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772780694; cv=none; b=qw9QHyWf+W5lhkNpGH06zs0X1Qyb7F3LNpS2C+XZ29qFt84nIGdkZcj+C9D6fh6jpJC9LN+qq4gwvTcelCcRMe070pPCe1BxAzlXvcv2eCSurViKxW9sjJhIZ+j1PeIk2O5/OGhsiDQaaAm63QQuGjLaGJwchcRr9UfmszE7ZqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772780694; c=relaxed/simple;
	bh=eFJ1MS7yO7vG8b2HB0YPu8WQxjRn8vegdsBKv4acqUQ=;
	h=To:Subject:From:Message-Id:Date; b=Rq86rvLGjfISpZuXG3YQQAIvOD7oa09xGITKM13YpACcnKKCgONYVo64OKLyJpy8bGQI1fo1K30FHXJatNlFdde9YVw4KZXEcRchPLjeOSULIrfevoZuL6Xdk07Ga25q2Fagpvmcpx2dbFYoq4ar1Zg1nLvg9dmPCp5g1JoMO0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IW+LiOqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IW+LiOqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97A9C19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772780693;
	bh=eFJ1MS7yO7vG8b2HB0YPu8WQxjRn8vegdsBKv4acqUQ=;
	h=To:Subject:From:Date:From;
	b=IW+LiOqeYWHKAZIQnqmGqHoq2njchiS8zL1g+yVjG/tRQpQJN7ok+JIUn/F9StYIe
	 yB3a3w8rRBqXiDpv7zsoJ8cSsOTq1asdBfBlyFqffQi3tlaStvfMjoiHU66wkHAXrw
	 G98kOBe3Tj9e/738Iw0CBamFgu7AuOZ98j3GZMO8prflYqOBGhYQD8qTwB1VHjwU3s
	 qTSvUwgbVBiFeVmBKsOcuQD2AvG6WxOhfTF/VqrLvonWdgv3sWSMJxL36DvLOFKMNF
	 CbGFU2XQhZgmo2q0JRxoknwJ46xTFSd94Bd7ze8tjqcwulhknpQSP6zrkKDdwWeMxk
	 +wbmgBylec5Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318DF5140F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278069359.18223.8048938086450233634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b0f3ab13a917f5e848cd5b6bc0716dfb53f394af5f33d71e218952a3517343
Date: Fri, 06 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772780693
