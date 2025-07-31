Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A531156C69
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753975194; cv=none; b=APeRTHoDNux6f655SxYh5Y/5IsFNcmttQTIjTh3QsY8D4cOlgfPVJLxbrC81R5hs1HTEQTOOlWJ69tfLHDdpzKiOaQTStsPJHENFRYHnucXAL1OvuxMBD5BWWnq2jiMAeedM3+tVBiLcLzRwG58bPuKWoRnB5ZyLAP/eM7ltDeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753975194; c=relaxed/simple;
	bh=aXmvJcP2pDBJSPKDrepXAz34MxGhpTvjdt4nwYJvuwU=;
	h=To:Subject:From:Message-Id:Date; b=gv1smUWlqJyWaIcu5GLDO2ZvZXWwmkx78ifHn4JaatIu4y4JM13lZqDzijrUZdJ4RRxiU//Z+Q/4x2e42R11NgU4aA4jo1BqvDNFd+boRfH/4xAN1CqqjMFrkoiFRMcet+g4KHLjIeVwBRTGNZisTqtRNYUpc9uubqVgOji4dMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqy5dh1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqy5dh1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A477FC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753975193;
	bh=aXmvJcP2pDBJSPKDrepXAz34MxGhpTvjdt4nwYJvuwU=;
	h=To:Subject:From:Date:From;
	b=eqy5dh1j/e+aI/FoAZttLYdfozji5qirmTHyZjKoqzQOWfsbGv/SusrVjw0NjLru7
	 obahnRa62fZSJIneEWm8hSo9j8xlPoH2Eoe2k+LDrZ0NUwjc8OWXC/CFOGZ23OGLqV
	 X4TPpLEJENT7lRCZmfNz0vS87YhSpcrUI6W2SgyYn0hMi7MoarNz5ycvDvIamusQI6
	 nF2XvO+xQnkCdmdQJp2PbgJJEoUnv9SXMvWt7ByzL0Rql1q0cZ+xapbSuiwQSSMwVj
	 qsj5jZNrWLtIX0NILoyzqk+hAZowEbAQu10kwFzem8skq03aA5RuvIF8IFAG2osU8w
	 PVlnJLV7mdbgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D4C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397519358.2634.17628882325227715120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba006865f62fc2e899de8d45f3b11fef233f91b5c053ef6ac92c6daa82778457
Date: Thu, 31 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753975193
