Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4BA33C8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719187943; cv=none; b=nkw1EIXIZ9pC8IUsepg9KLiPX+2AEQqTBN9n3NkMwwjzqu+0yVR3xGmaANciaoegk81MrbZdakaqhbJQmqblsfcyVS+z/Kko/jdxQl72PO4zMrBQWkhd3scbjVGtqdue3FZCJ00ku6vzkg1bbPqQ5QH9q3ohcRcYwH76UgBjB2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719187943; c=relaxed/simple;
	bh=bvh3lVYr/o5gk30ac7tS0bnnxcf/wLTFeKxJui6TqjQ=;
	h=To:Subject:From:Message-Id:Date; b=mvd79hYDUfkZcpScGaqYaE6rmEDX3hnFyKsdQJG+cIlnwPED7zg6sE5gu9zlB7Dr4oxioEUdVHLmYVDXFUZubiikUwnUIQl5KTGy4612vv/ksrYCDnAelEflOSGYc+lwO4JfL4pPBeFjWxeJnfKykbV6ABobindvoy1Kqt4gmBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMf2DxsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMf2DxsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFCAC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719187942;
	bh=bvh3lVYr/o5gk30ac7tS0bnnxcf/wLTFeKxJui6TqjQ=;
	h=To:Subject:From:Date:From;
	b=sMf2DxsRlVL+5XRRGGOf8g6PRGahpDNCPGlAYDVG8rdyw9A8cmXMSRDj/stgZKPex
	 HcMNwLBUJIWK8ANdXrYMf3YwMr2qk0c58Qx+4z3NKIVVrOi0T7CREiNVNKpxc5xiuM
	 wl56jFPo52GjgccM58wxYvbB8thEiGyJ9iAALwINxHdci6U3GSDr9m1cgk6bhJH+fW
	 CL1Wm6d5R7vzPZqFsYB5hny5pB2CF+XZ1wpGfJuKhZU9UREsmVqZjrQSSjq4IfpYVL
	 GpAzZXbbPqblchtMCSoskdxgsF1y4zTblGIILPZkF0L2tlD+2qCX4dCPEBkVABb0Uk
	 +DbuE2DcPup+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB286C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171918794277.6361.7130021271682246392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb2c7981e204f5d8d7b9dc4fe4f61b231e66b0e9b09f38b9885271511732279
Date: Mon, 24 Jun 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719187942
