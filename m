Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442A1320F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738458354; cv=none; b=MoSvYBx7oKo/PyGM/ldECS+EHqT9O1s8ZTG+U0MOYbI4ElUQ5Qd9VW2rfyabuM1HSPJBeFOjg70wzh4iG8rzbmYGCXRvqJ8RB8uiLA9yDmp9yAR7Tk1nFWyQZXDjZSoCTzxgqHdSt+b/C9dcqLj/2vj+j8a6A5ran9SjNFqJACA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738458354; c=relaxed/simple;
	bh=NBgJ5oMHwK4I/s9MIOnPIOPMIOuHI2xnvypY6ocqAM0=;
	h=To:Subject:From:Message-Id:Date; b=FEfLTXGkPARUE6pRB0UisK+rIgPRDz9kXuucuHc3DbrasK7WOOTEwCZq3qSsJGAsvC9nYyqMnQwbyQZgOXebFYeEBTxm8Sqo76JFs/O3qTyFOdat1PpsHgXLwBavSYkZVsOxvsZZVLHgsTxwf2JxT5Oh0OgdyUn9hHpKPExJ6VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rllp4W24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rllp4W24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF962C4CED3
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738458353;
	bh=NBgJ5oMHwK4I/s9MIOnPIOPMIOuHI2xnvypY6ocqAM0=;
	h=To:Subject:From:Date:From;
	b=rllp4W24bzpRflOrWU73L8oTtOsfYYX1pf3Xi3evUnYYA532FlhJzMjol75HcfzNx
	 uJmTVN01yxYt81eR5+LMhr4WgkhTyZvEoquCUBD5LdWP7qvROAVU+AUyq6WC9JCQOl
	 C3zLYPVYIfE0qMnwNCU+17pA2N1OJzpA+a0RtIZ9q+TQQ+3Rz0w9nuoQOGRAOBvxra
	 MXCeO0S1v08Mk3kMl08i/Z4etxmUvVsFJXmYU97BUUrIbP+goiglf+DBQVz1H5zyoY
	 4mBQ5GNkhwo2lHzfGQ7GdvNIdsnvMV4vobuFxzoxd1fbBBXv3OU94H5ON5Op6n38Co
	 Ph7dOo44RLINA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D44C0218A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173845835360.24212.10563573924235851827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad23b5e28a7e2d86c4622687dae98aadc485ebce6cc5166b209aecc74f6bb3c
Date: Sun, 02 Feb 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738458353
