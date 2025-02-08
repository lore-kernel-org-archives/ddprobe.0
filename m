Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0BD2AD32
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738981554; cv=none; b=XfRTeClSOheoCLl/wyGXGd6MDfNOw/+hDDg6WOqCsSxNJiWM+MQRCUvi/GnGajYRiAQfjwLljh8CaBscz2eMIovMPvW3yHoi82d9HNXTJeLCtlOW22dWYBItpVl1i0OvRT/fw1z18TqLiodHLdgkyH1Dup2hZ/o5Roatq+WKpPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738981554; c=relaxed/simple;
	bh=N3O1LOi+/4OK+jwO0fkivgk7qdoQbX9Ssw9kXl2BbiM=;
	h=To:Subject:From:Message-Id:Date; b=TKek6k2oCYkVYdXg0xSAJFnrohpOoFGlGzYTHDBYAo0FpXR5EUqZGr0Xmmu4yAXYGBxKbpnsysZBu/gssjh2jnMCVtgdXU3CIfGOLhtegQiwpUfyYKCjozZOI48ohcQP53klYcw1et+1xbr8zvMQ40BNwOC0BzsHe1AK0Zy0m98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBos/p+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBos/p+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5CBC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738981553;
	bh=N3O1LOi+/4OK+jwO0fkivgk7qdoQbX9Ssw9kXl2BbiM=;
	h=To:Subject:From:Date:From;
	b=tBos/p+7nzM2OZlhDmClUzYzljK8C9taozd/Uw9945gk0pBD6ID37dYNGO2DZFtrQ
	 tC0zFEe+nBi8CDVHrm/L/8pkRGEYUrpey2Afy9Zq82rj8QUfAc35R3BA60PBhDyfkm
	 30qXDQ/v5HG+MEnpBKrm6JOB+3dAgtjamlisK/BBIl3yK9C7JIPsRXtkJ3wAxgOBqL
	 Zz+AyIU+br2rahyVF6BYM26dVhkqj81Nyn1Oyn6ya9hhYUL9txZbu3VWzovbs/FXCZ
	 n2kL0E8fhGZz9gk7DCwA9k/AvCAXzaoO9/4DOhjlKaoJBpD+E3N5rF8eD7AqvuzioE
	 RCSLGiBQJCUtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F37C02199
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173898155359.26929.7627968983169993310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7d18926915e04d9f4d657b07b930c0bfc6208316b00f88878024b582f436f8
Date: Sat, 08 Feb 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738981553
