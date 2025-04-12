Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6D87FD
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744441794; cv=none; b=jBAYfzZU+tw2kp2DGF+0kRAGQ++yFwJW1M28r0fpd15KTdTiv7Dye9WHAMT/YCpjT/zp24DTKlEgU6A+m0RR/uBI1IdjP6FpGyQbWlKKVdUJWgONmbMlNOeGNmvjDIhaBJACVjqv350vecXMTsAjNiH33gC29my2ML0G6sZ9lvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744441794; c=relaxed/simple;
	bh=c3RUZ9ISok8mAxk586HOK263AV9/CO7MM6dk/FBeNzI=;
	h=To:Subject:From:Message-Id:Date; b=tXYDgdfMV3REVHSPMZwFot4LbhJL56btPHTTSesD5dUiYMR6pXEftFGtrL/OPJSurL8x5ZX/gCQqhvRvywiEfDPo9i+6231FM0eW/nKo5MnDAHn6mFc+ckSvv84W3yxbevGhCiEgqYWF8PR2wPQenjPsDtk+7aQtgSz4sPhEs9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ex+GVZgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ex+GVZgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8232C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744441793;
	bh=c3RUZ9ISok8mAxk586HOK263AV9/CO7MM6dk/FBeNzI=;
	h=To:Subject:From:Date:From;
	b=ex+GVZgnmCKe8W+UTdKnoFysSd50nel6h5GCeIafbRQVkglzfRmWgOVoqrYgpuJ5+
	 01vcZPG3MuDoNEeqLpKUk1gobiz6hmP12stSAzziiMNxP1dAH2DBmDWxPvgRmo+EMS
	 7pkrlSHl+6PQ20+AnzfIQcK6NmSxgHpgcmL3Kk9nEnqu5FTOw07Ihhau06HRnU8ydy
	 Pxs5nWyBEAkGZgmqzfBAiZP8yYapRGQWfpfMyiPTTWGskOI0gOlIe7Y4dPPbLStUXB
	 fBN+tZPnvJ3x/jaqJBnHhy4UksA+pKwfuSipzyBkQGZg+z/2SvD2cdGAbPhc0z3ybh
	 ps7DE/Cm8pljw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0C8C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444179362.16611.17703320073147078314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ddccc23966c324cd3d5cda79160c47c8c2c9f746ec8ebcdc53f6fc4e66026bf
Date: Sat, 12 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744441793
