Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2704A43ABC
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731462954; cv=none; b=qLSFZWSPUJsG1feNSrLIEpVd6lvxFo7I+YqcO6Yd6WUXf/LBRBKLkyGKPNyikYiHtl6jBssdPFFBif0u0bweNPzfJm4XZNb0WHU4DXxdVPBXjZlCqkI6YXqEd3SA3mcuRuwOa9d8glCAtWpko1iBaLBc99OEvNUDZensFE7ES1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731462954; c=relaxed/simple;
	bh=yQZ4ML0K8/vVfiaAdkviqiqekGAp9EMuHP84MUNhWlk=;
	h=To:Subject:From:Message-Id:Date; b=OQCl0DJTw0OhUAH9p1Jh44hlhEprJUYUhOLXLG4YoWJe6C2puulDJABtq9QkQearSnx4xmWT3p/O2dz6aj2H7Mru6+1spGsCcW8/bLjQgW7/j9tT8+PsFMOjcpbDQlrANoz1aOZYhTJZ8IiQ/DDBggGoRMjV1qZiYUVMCZEzZ3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgaCDjvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgaCDjvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C6BC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731462953;
	bh=yQZ4ML0K8/vVfiaAdkviqiqekGAp9EMuHP84MUNhWlk=;
	h=To:Subject:From:Date:From;
	b=kgaCDjvN+RyG/K+p16BCH4p2K9BPbQvDqMrbyTEcakLCXrLTJkk4wpVHGNSVIQh23
	 8P5rJb+LWQUi+ZuNhRm9tVynITEKOLN6eDt0Z++Nx1qqlXaqh2sEp8+jIPbAn/tgmI
	 BjAHbP0JioMVDjr/s92/UWZNiNfH1JJtDUNIt/0I9uS746MZkLI5GUuS87Sr1rGZ+k
	 l416C0/lGsutw34rVwcLcBt68mpqIJ6Y8k8zMXsRWWjyedHA7Ejx3liM5OEQAi7MxL
	 pgUILZW8kIGfrYPMtzzes98inBKTFZxhwghiNgttCOro3JxI4qBeWBm8foac+X7BfP
	 R5JYPNv/4pGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94566D597C5
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173146295358.13937.18288294854616426648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40752d1624afce147aebd85c25637e0958415f18a38810f13b3b71ba0b22af33
Date: Wed, 13 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731462953
