Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522211487CB
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712948363; cv=none; b=dPzK5jcyRoXTKZOw0LBfanJvh/J5uXzc9mHMUXqhAxccj/UO4gzgHV3F1YVDAo8cP1y7zWBr27an1pk/Mx+rb/mUU41Fe7keykaN54AoLgP0vy4W8VQLo1Q3pIwNab+Kv7YFCCPaS+2eX2LXOIUNQ1jT2NZrW7I3Vo18++d4EEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712948363; c=relaxed/simple;
	bh=ObvWFTJmInKDV+oO8FfdP+XzXcjnJafbbjGHBvleQ30=;
	h=To:Subject:From:Message-Id:Date; b=ZBIBWfbxmw2LZYAuj4NRFMU0izaxbSHF2+SGeGwMJGNCpQnV92rAkfe5x5cCJES0/cFT5uaIypDEGKmXxmBzoF1CEWUtuVB/1FYUsAChUS2zMHitw+uDF5rMqL1tSrmppONRpWNlUdTz7OktmEIBluemdGlktLfaZ7FXo1TrJJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvBSoQfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvBSoQfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70B2C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712948362;
	bh=ObvWFTJmInKDV+oO8FfdP+XzXcjnJafbbjGHBvleQ30=;
	h=To:Subject:From:Date:From;
	b=AvBSoQfhtPSHZjWRnQ9XYxHBdys06BZFp8XldI8yKvtShuh4DbMtd9miU/5SfJkqz
	 taoa8k+ha2UyTtG5DvmyQ1e07Uj/O+0HROOhfD9V181UmPiVm3p+rKKh8GYXD4kOmY
	 4q35nzQpt/PDGw2AHrYQXrA9i78xqMSz+omeJqBiy+4L9tKUEBomthI+u16BF+7K0t
	 Fqe+6Yvs+aRzfWmcFzq2DOxEC3Jq6/Pp0Atw+CJBYksWUb1ITpKiXv6/K+Bm0DHZZT
	 Y9Kq6ARFZkUzgsZJ8iLMKDCB0exp1KCu5KrHp4nj0amDnjZWv2OGUKYkyzNNuwpwPK
	 UuQPNpdMbL5Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D33C00A94
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171294836278.22629.17400142099401668320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68af02c79a43bfecd1a855f316b587f2a3e17425257a7fd4bc013d700b22c7c5
Date: Fri, 12 Apr 2024 18:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712948362
