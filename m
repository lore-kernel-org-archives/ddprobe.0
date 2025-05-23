Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C02B1607AC
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748038195; cv=none; b=uCR0EexljkpkVq/TInTUTdRqgBI2nEoA+0lVkI5Gu1zKS5kAlaL0YUnHjEE6AMQNzBWbDnFJ7suCJTHdZDwt8TBq9Vr6BZi46K+puiTYJJyWkVhBqiGuIDccvylr7sh9Q97+AQzX3pjhe2QoJZv26AAiQQ7Mz377iwkI+D9qyKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748038195; c=relaxed/simple;
	bh=80Frt4NW5F5R9SIIO803NoL1F3K9cBfETzQxEOH3Wi4=;
	h=To:Subject:From:Message-Id:Date; b=qljiHavC3eIwvNOQGxxQ/f8QlexZnZ2ClbbO1dSfYAMiITRwa+te0XcJh0aJTPFODGINC3t974OEaZ9Bq1vqc8cW7QIYgD1ot+0BLbGxe1Hlq02HH/7p3yYGnxDbCCf6Yx1Aq1YgL+P2gPRK+kmPTnTyE7bzEH1Qo6zL2iX8agM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFY+ZfEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFY+ZfEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A702FC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748038193;
	bh=80Frt4NW5F5R9SIIO803NoL1F3K9cBfETzQxEOH3Wi4=;
	h=To:Subject:From:Date:From;
	b=dFY+ZfEv8I5mT851NhdqG/sW89UfqqpWTlNvOCi9LAJyOZjv6ciDrVZeCMwZX5ASD
	 o/OFSAzsWD3iN+pCG5gRIYQomdgd7fFZcTWSf4ChukTozkQIhV5HP5HX6inpLY1zCy
	 c1hDrh0QjWNhZygN6nV0UVEKD8F8LR0Hc4Ft2lb37pqJ3oCig1ZX/KXUQ3RGMKtu+o
	 vCeztQ202R5mh+vc7NzJvwbC78Z/H8B2Ld13/NO5Qw9JaXHI5vpiwtoskLh3YBncqx
	 C8U/iFTYvFbtwHKW6l1SkBGmn6+XDYyFCDE3NSod5ZDKGceNGe3F8K8xxUcfjeSIQC
	 XcAt1k1vS3Y4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92405C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803819357.15895.3866331743397667601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79c0caeeb83f9290b0c743e0bcc7e253c498566ba6d86eb00e507466dedc707
Date: Fri, 23 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748038193
