Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B22E40DFD4
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774755894; cv=none; b=c9/ZTMwlLubPkv6MQb0gN3qfzbJ7ATIPFDTM7wnTEIKng/Y5rME1puntfUnxjj+BlYr7p8tR48cuiQMQI0ZnSDffgliM7I2MCEn8sGrg0RfCtM7Jdrl9HsEDRLEuFWzE34sIErtkSrQl91pWgaM8ySDEEpVPSS6zkdety+mH4Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774755894; c=relaxed/simple;
	bh=ohpPv5A3WLTWgZePLSm4LlfAnUR396dGR2D2mGxlhKM=;
	h=To:Subject:From:Message-Id:Date; b=GlXjeg6KSHIn7hJsrOobVOQDoRMVZpe5Vkzf7aIquq4knP0LVMFcCnpy/caxmAFTkj4RjJ5XdjA4eQ3WqUs5l8bm7+YD0DvGeUc7hdgeQnBlEAlMzkfXVatz4FoeCOzQxu3xzVIR1C2guc4i6HN+2VK57+x2BPBspOXmH6hcRLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DN/CxGCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DN/CxGCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FDBC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774755893;
	bh=ohpPv5A3WLTWgZePLSm4LlfAnUR396dGR2D2mGxlhKM=;
	h=To:Subject:From:Date:From;
	b=DN/CxGCus7Ms4T/RaEXZwWQbXWZWT/igQuK3kCHde+S7HnXKevhEyy6zvbgvVO0SL
	 Shb3fjMBbZWIGoYeLKGeAfR0oXyObQ6f0pWKLuALc9ZtvCAL1yox8S/GzZvfbiIakD
	 7VReyyxnLmIlmq0oopPdlH+OIruPSrCgf7XNVmtWTw34vlvwyxcmI98HifED6crKmB
	 hv3GynJNCCCSZG8RmgZ44kATIdsPkatNiDaCE3EWJChEgJfgQBh/XnGWW80Vt3dWK9
	 qeYhEhkcXH8d83rn5H+UavL1sqzyhDwypNgYBgR3aYZRaSE3UCAB+aWR/sMp741NN2
	 m4oZC0DC0+evw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93732F3D5E9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475589358.18853.4693888390747587395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b563acfe631835a5c0aed285c31937a8f76d74bc2ef68c7ad34ee70db0297fa0
Date: Sun, 29 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774755893
