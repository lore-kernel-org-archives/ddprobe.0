Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361863C4B8D
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788682834; cv=none; b=p2BLNwi7GzfhDOk7x3ty/U44aVNrTD2gqwmVJkBdw8mR9RN8dRSmcDFf6py41fd23iU2YXIiG8xlMYVo5tVDS3LWR023qfSLDnNoqlgdH577i/Zp6ROi0//wkdEUqx+3xWLuT7JbgNZ3KHZ3ldubyIDr6cL3idNpB0w+tCfmW8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788682834; c=relaxed/simple;
	bh=mcy7OMUeEvnhQujX0bRL5VkESJ919qG02K6rPxF3Hys=;
	h=To:Subject:From:Message-Id:Date; b=dwBiwfNMfKg5T4+btkR6ZnrSICiEXEh0laXF0PGaPfVYhPoKtvQiMbbjpkgJ08oqVHiKNBrsBo5O89Dg8Che+1Vi9AZqdOSWzVghVwMmAP8reWdd4l4LCbvmTrWAJ7nwrebtKZ7EuPcDWmsPC13fsU2QlilGqoR671dh7fkND3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s927VOtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s927VOtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC8AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788682833;
	bh=mcy7OMUeEvnhQujX0bRL5VkESJ919qG02K6rPxF3Hys=;
	h=To:Subject:From:Date:From;
	b=s927VOtNW19gjEgHkx0nHL71kVFjwutfj8VexpBp0JTMOOTX+yj/E/h25PfK+m6G1
	 zXwHZ8Ara9t6IwMdedm9vxcivQXnyp7+bJ0DEr8ifaNhBmDWN+AHACN2UFXOVk2mPp
	 tae/M4NXDoyuNG+Ot9zqmyP7IzrWGdc9q8P7p3OF56QVupqLdiOpZ6oIbtITzvSv4b
	 xQlD/LyQR15MkKu97aiQgZ3g6n32YMpmejEEpSmF5wn1jp5dy89ujPX1aSF5Wbbj2v
	 Q5b60Obis0ab0nhretpbdNwMMI2ucZbDK07lJGa/AxmvjgE5h+ITdCO5TcifMx0fM/
	 HYEaF97cTwN0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCE1C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868283369.25982.5314608436558591807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b15bf54674f00a9593f270ffb0b98fbfb45d38a2e8e2283487c9f5aaf4bde7
Date: Sun, 06 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788682833
