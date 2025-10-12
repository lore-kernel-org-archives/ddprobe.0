Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53AF1A256E
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760268593; cv=none; b=aYTNR8Rz3Z9A1htbjn0AFgoRrf5VV9WZ10OQgIhAbAtzFeGgzyjeRREz8h4MP39mbr3syetOY140PCY72kRv3VlNWbflYTYBiewbczWPZ8uG7WqTAyOsaVFSLzesLyxdgj9wwDkKmy1izD0WOigiEK+Bz1kbY4dQN5gst0dBPqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760268593; c=relaxed/simple;
	bh=G3Iz5M/jSOVHtDxPNPqn6xdpUPymXv2D4PS5oFaHO/8=;
	h=To:Subject:From:Message-Id:Date; b=Ii+Kpz/v9NYOHago14AVx1iuqp1VCz3QBYoIJH/BDPjMw0pogsItl88b0katSqlvkAbX2dONsZhpWwM/sSOy3cnuiRSfBG1UlrAmIFtUJADyEidFUwbFzGpBoi9A0BRfrVx5pBQvGHTzSMtEd25gk+7noONK+CNcGgZO9iVkDuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exfMFkJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exfMFkJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25CDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760268593;
	bh=G3Iz5M/jSOVHtDxPNPqn6xdpUPymXv2D4PS5oFaHO/8=;
	h=To:Subject:From:Date:From;
	b=exfMFkJu9Bw8HdeOINPO5/B/og9RH0o8nHhfftnpIgN2Y/AGuqhEQfRWaynZlA28A
	 6IeKWvdR4hFccNBNPK2qkY2caOIqsdUVOc1dehQLh7X7evQQHNS3CwqCKxqx3P6tYd
	 70P2ZkqRxeUZOHU7t/C9R6Je8/aClkuDgOi1CoNP+weU1KghiNxOuaZpw7CcQ2tH4C
	 jji0KptZnGCpPSjeL6RIQlxIDJ4FIWEzkXPq3dxiVNGljb4uOFCo0s6ua/Zjzk8SK0
	 6X0iaY+GFmirU1vc9h+sHxIQ0KamVRA5k9x1t6nhV40Jalz+qUk2IL08QFFqS3F0Cv
	 Qjfo8JyiWTrIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E638CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026859357.31067.10644000634736650544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5e9aec77dc0035cc630eb2c7a0e81a9f7d1d5cefd2e6a6cc6bc57b6b85de25
Date: Sun, 12 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760268593
