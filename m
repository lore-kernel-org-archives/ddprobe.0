Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48738FC01
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718017643; cv=none; b=nyU/7D3u3S+5z0jeewpXghb/YROmdYaX+3QZIpFsrVnm1qvtSJ1NPTY/qVwN8jsKp7Sam/+lCzL6JScD5L8jWSPFb3lOOqPNH3REr9ivLdHXRWc55QJBLyWolNlJVZBYDlG+cHJQI24HoRu+y0Ra9PXuhzq3Z2Wem8JZd2Led7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718017643; c=relaxed/simple;
	bh=ubobYnYBVU6r1j40wmh/vWuWAVXz74x5dtWMRsS5YV0=;
	h=To:Subject:From:Message-Id:Date; b=hU+mxmHIaFZGSglz27g+PVKfIbXkce18XrMXthGgwzS0hoKNDWvGzCCXD5Xp0RFasICXPBf3JS8HgM3sogKSPMfrJmsGDyz/Bxt638Fce/VzZ6pWftV9+7LdYU8mnePYe8/4UD9SeIExmzqbzvUO6r/A4PgHIhJunWV49dDTimo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSMiIiGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSMiIiGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D005AC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718017642;
	bh=ubobYnYBVU6r1j40wmh/vWuWAVXz74x5dtWMRsS5YV0=;
	h=To:Subject:From:Date:From;
	b=uSMiIiGzPVvOMtZgTqdkufNGtLo4xOp8tBGR4NKw8k1NoyikKxa0qenruhESbAihN
	 BFKMPAUioJtNYYt//ATKwZIt8b0W9xZuYyKQ15qrAMVO+nCAMXaYKl+dzHEdkzmd/Q
	 BJAIRjxTUDwKYQEVsQoOpd6nP2LWtDYTiGL10h1R6lJWHGHruAx1RQ0j8cLt8FdAVT
	 xXYq79I6L0D9eKWT7T50cMTYnG10SOJkEq36t516FZ1yFzh+BQQA+CN+RTT7uHpE9e
	 kT21xD/729Guc1TaJW0L9wYrJVj7lCpUAVvYMFEhIhwry6ytxUMN9ovT0/HnfSPYK4
	 C4jnVJ6KD1tjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC090C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801764276.11751.11437841452130840026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d9aac22220f88b6d6ac5b0a11ec7dbf13261ef6e48e0f2e5eae16d60b6c9aa
Date: Mon, 10 Jun 2024 11:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718017642
