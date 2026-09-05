Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3D23905FD
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788618634; cv=none; b=X814gBifyPkLCo8plkFmUJL2kF9Yigw0m4sHSv9b6VzPSpllYFCkz2QQJQvMkNQGCkJzAApEtU3mSOyAr+l+QSl7i29HfnEGRhnB1NpLsfTp31W68Hgv7Kbt9FC07c0eBUTfC84sw+AvV4e6sv/NMq8oGDiYsaWaTOfCBmQNVyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788618634; c=relaxed/simple;
	bh=ouAJmEw/hBXDax+iyFZwIRm7MdMHCT+p/8a06bBQYww=;
	h=To:Subject:From:Message-Id:Date; b=Vw/w/bvg8Z8BIJJOdvsY74+11Z9IvQs7awCRfsJkunwOsCIs7LmxIVpKNAlhyuFLJH5gvJ6/dUNBUQozvBSOomHZNQPNWt8VMn0RoqmDe6wW2XO4jLoIOni0o+Hid0myDooEm+9+FRubqPfOrMM00tyiLaBK8AszaRsHnAnqSyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6sTNPat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6sTNPat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EC9C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788618633;
	bh=ouAJmEw/hBXDax+iyFZwIRm7MdMHCT+p/8a06bBQYww=;
	h=To:Subject:From:Date:From;
	b=L6sTNPat836nu6Z2BAqQjNNzB7iR+A8OS8P5hAqQk8A2ev7K1gJEZom0pySdqLG1I
	 AZ/vMKGahrrtKeIU2j2Vdg8mdZkRY5R9ICy5pO6krSJo22q7VTtHa2mBSfppT7ukNz
	 qpC9PLVfA424Nx5piuxjJbWa3oceZ0ILvmVbU1f8S6G+JmuhNcIhmW8ojfKjC+YE3I
	 axmtvwUhiE1mrKmuYroz9UMR2oSTloJOIQouoSbSc+ppdDZJzBPjeoT8DAuYsWdt1i
	 7W4bxL4w3lWFcz69yUY6+3WWQ7HzFy5zJzQGjIrMgtmipzgTVS4I7e845PevcU1FNZ
	 sx/r0hMgpH8bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1078C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861863368.30906.13734291407488725576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230c0a01e072885f020cfb079f254c9b155d108669d17f7312195968cc6d0aaf
Date: Sat, 05 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788618633
