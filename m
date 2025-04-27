Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4461F8744
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745749794; cv=none; b=fCdqnbBefCxLMUn7JmjDLa3OhVcw4q3aJHVyLcjeXaJtly6vc0BLh7kTUouS2sd7TtLnBItg0ivpLidnBdVgdX3GXnmu26zs+lIl5scFZkKXN1rggiwgTR27nM1yNvuBUl6IdILWHMiRw5LyTp+VFEwC/IPPhTlDxqBpg5h9EPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745749794; c=relaxed/simple;
	bh=S0MDkC0u+YFMd2u24frG/AIEhUPLwGKrVotBJ+uIyGw=;
	h=To:Subject:From:Message-Id:Date; b=KJx7fpovNhyMqTXQPQ34mwwiYx2yoCFXjCMPqsMNmGkUnQ9rzjeBVOjg9Rzf9HJrJWMXEXYRSR1w7bwUPPdOLdMrJO1dNbQYit6BlYzGKCivvdHqfcuPDqN7WZ7+0hezJ5xfcyy8qwpsX8ZhX6xlVFZ/XU7r2ObO6LjAOLwqI3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUrPxNad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUrPxNad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74E7C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745749793;
	bh=S0MDkC0u+YFMd2u24frG/AIEhUPLwGKrVotBJ+uIyGw=;
	h=To:Subject:From:Date:From;
	b=IUrPxNad8j6WE5U8zuCqNzCWbhEF9LCjMqSF9GAvxvYTMg3jDdu/5djLfYY/+NOB6
	 bQlS7LRngog6yJ3eVv31aqHv2ZHkdtjgljrPzFSwybr+I/mCCIbaImIGe+ANTrB885
	 CKMDFIp9acwTbWHYyB0uKCWygGaCTRUm+AyyeDrGQqXOsq0fCgMWOAlU7HkjYj85t/
	 V9xjTtf3U0jOA9q0EcuRvDzLYXWgEBhC7v873rnP8j10E56H8/ESDJV55gGlV7cMd7
	 Pkd5lVnbCwxAredya0A2MKUsBozEOldG4fapznH5Zw2g3ZFRnv9vkoklHs7mvd8O7W
	 a4Yh9B/Av9aQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B50C369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574979358.28074.4083362588002311198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6c356a8f3d1ddf1d0c72a1a0e5e35af7340d81f91d1c947ecdacb5aa931164
Date: Sun, 27 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745749793
