Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDFD1741E0
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728293154; cv=none; b=rEOkCjoJKQc9/Ct4GLVr6eaEk+abRgflLwIfxmQbPz14agfA0vSu7yVLPpqnaYT28VKY1jUUBD60jJSdngm/kcn1tA89/3P2zEaWPhFO/d7fpz4LYk9yBGzWB6X9NEqj35ANViZgaj2tjjlcHXl5U7VPKw+6hY00qP7FYcFM6b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728293154; c=relaxed/simple;
	bh=igxp3HUgOYAgtt9dZXMai9hZZNwNKWrMEXokGiny8Dw=;
	h=To:Subject:From:Message-Id:Date; b=UedT6UgiebsjJh2x3BJrW025EFVAewkLkgNdpVjqY2I0r7FygUOz2G5S6mZVrIBXMtKIVAY52rRq1ILlRNOux121RdmWaeHB8Lo8k2hUGAXU4pO7HYkOGk09l0Z1w8HtMzHKYOgMLu3G8YDk+A8izK9Ok7+93n3BjO/H+gCthgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOfoP3m2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOfoP3m2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE660C4CECC
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728293153;
	bh=igxp3HUgOYAgtt9dZXMai9hZZNwNKWrMEXokGiny8Dw=;
	h=To:Subject:From:Date:From;
	b=FOfoP3m234k8zWC8N1tB0OofkNH3VX+nwQfGf/tBypKxjwOlFjG5JKEYAgnt05nki
	 4uZ0JfeUrWK0cvY3+u1DMQzpnaUqoMHUXImyqxRyuXXkXZIQmCiXTKcG42ajC/c0w5
	 MM2gCSJavln38AhcqvPd4qB2ca42BQFzwwIOVePO0i573hCDd6rNa52bNCMU0NMQ/g
	 +EaAL6gMoYZtlknZ97dETK3C1YB1LHw1YUrouRBOvuoXJ+Ujiti+DzMbU32xhHnTfB
	 L4scFQfqti/Hj7oS1CjrQHrZ1SposebvXVi47KxKMd76K5dad2jOwTtlqWp/Q5gtgU
	 ziPloKlELT96w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9963ECFB43F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172829315360.24891.92394944063050368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 689d6686fadeba6fdfd39c44c76bcb733b89606bd3435b134d92eb8e1a4bdbbb
Date: Mon, 07 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728293153
