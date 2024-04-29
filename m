Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627D412B73
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714426343; cv=none; b=ECKERnFqu7c2vpKJeiuQm6D48PQLqxfjsmix60hv22tvrVkt+t2jgfI6TpiCMwzv+H0Z/cLpnjVLGHbA52s0qJnOcHnCF4K4CooS+8lG2DOR1xsSu50qzcFwSmkogiQ9DjRHipYN9rdf7NUvU0dAGZF73nCecmeE6Wm8P0DWuGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714426343; c=relaxed/simple;
	bh=NmXvIzb9CGn2KY+RX2+Tb5s1yv2QU2eQG0sLjTrDdPM=;
	h=To:Subject:From:Message-Id:Date; b=VT172KHJMjz/+XnU+R9xIyc0KDLQuv9zmgMibXB1/Y6MiNV4mNrLYvLYZvpIhB8StwjMAJ5RFK7lVpZZUDwQggbwjOohPgaWOFQdtLjdodLY0DgweAv0ZN/mfnxWBlRAbLY7cKUGXL+LFoTDBo0D7XTbbRqnof7Zf2uLT9tiqhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mr5dhueM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mr5dhueM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD7EC4AF18
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714426342;
	bh=NmXvIzb9CGn2KY+RX2+Tb5s1yv2QU2eQG0sLjTrDdPM=;
	h=To:Subject:From:Date:From;
	b=mr5dhueMOFXx2L8HiUn6DuBw3ZSd8c5ceDk81JfIvfyDKT2PuSvkZUapf9C4dp/9U
	 Vzurx/0zMyvBb4zzi5vxkzjqK0j5kGXd6RdPm2YQ+Mfi7To+Z8uVJ76WKZ0cZ6KRNu
	 65w2fycAuP6kUvdO4BCJEC/CxzflbuVN+BmOFinQJdtp/si2PNLlUKReGC009C5eBl
	 9ORFcXcpbkmVRPuxWnTFTTPXh+RK58WVSKr86XfMFcYi+ACNzBYDEst+QJJGac0R6g
	 3ILZ1C5jV72oGvyDewHgTrpaOhRwHbTiFiwHhNuhRlUs1rFJkkZ24Ny3sPBa63q77h
	 /xS7h6FfApwWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C453BC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171442634279.27911.9268427488751076240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512c5b9253a3d32054490edc791cd42e98a66e86fb526066dd76b26d387fa615
Date: Mon, 29 Apr 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714426342
