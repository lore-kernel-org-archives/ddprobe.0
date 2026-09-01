Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495F1426438
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788246634; cv=none; b=Otxh/YCYwsZO7XPtfGx5dOfMvjcr7plVCwEyvkk4iFp8ev0wcSex+NrQQBPHJAfrpBiwOsVQ8lFdPKn0jC7OJaY0oB82me3Xk0aBseCNTIKccYUPMDAzHkhKeGPBfnm4+/mhzUM4GLDq6XtVTtrHNh28b3XbFI9Wb9iSha41gqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788246634; c=relaxed/simple;
	bh=qfgY2k93GXTGdTkhkQ+2byHE0UrZV+ECbEz4ZVsMLj0=;
	h=To:Subject:From:Message-Id:Date; b=mYxdMmG3Ogl6wvRcjSGwsftX+ZbwN8oGFj4eS6RV44N6rkTKDc/KdOjoAPgh4KlJTD2j0sGwndNtDBj0aGckKgAs75dJm8A61lTF7R0NrGzOq4nAtosb4K84A0+ZR+KDWimJ8czoRpmx5HvJpNV4qiJU6l5NDYN/a14Mz9VxrIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6zFKe8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6zFKe8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF150C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788246633;
	bh=qfgY2k93GXTGdTkhkQ+2byHE0UrZV+ECbEz4ZVsMLj0=;
	h=To:Subject:From:Date:From;
	b=T6zFKe8Iad/s7G1F3ZJq5SPyu0JGowaPt/ypNd2fh57DQV4b/Cwha5mLUH5OS4OYB
	 xVJejIFUJ4+2Rj2bskcR+cERZCCwDGWEhpA/pBSx+zs3IY4VvVjiYtECK0ghkf2CG/
	 wfEf6vP3HS23XSOK7raVLGkblbKF95E/j1NYZQL51A7xytwEUOTlv47hY3oecg+Agq
	 GIKx/kQV2dukCQzYDxukuuxO8UHEevQOmHdlPHTgzxs8Id15f+IMLF0mt9NR079hBV
	 lGI3ZpxfFKYyUj6ixxQowMMrYyXD+tOavLK+1vFFV3riMBJTcVK4U/fUsWtZVW4v7U
	 MO8gTI/zNmp5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEDFC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824663369.18872.6520874140419991531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cee162bfbad212daa87bd23a32503697c37f6e8109e02ac449025a1016fa1bc
Date: Tue, 01 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788246633
