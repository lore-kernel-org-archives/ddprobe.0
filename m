Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7931C8FCE
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743255595; cv=none; b=Df6gd/0ki/APhH30Hq58RUmZW8bNJOxWJGkSJaa8nJHI4mzz8WaoKtEXK+qpAsnrCdg3M2V1qhWBMGr0DeZlnXmrfAi0EO1TW/aLe8q1IlnnL6jJ6SWhUdWPlbEF9qZRKRHgviWeba+MjJG9jgMMruoxhR/PxAkJKSM+5OYgZwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743255595; c=relaxed/simple;
	bh=B3gOiYBLe9pM5Nwrsr4qY3UOP4cP1WONFIF21VzftLo=;
	h=To:Subject:From:Message-Id:Date; b=r+9BwL2dyr4dvCs4eZFIi5xcGLSrBDW534ticU8ZnEkTNrmSHq+gTIceSUUd6OOciv7EbsqHBN7fv1xKrcy5n9MToqrsOYnB90KoI6P4s/FfdcwAE+7Ghd7YmmISo30dY7ver6f3cY4w1Q9spwt4EyX1RIW43rSKoyp11f76zvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M86xFptB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M86xFptB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E7CC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743255593;
	bh=B3gOiYBLe9pM5Nwrsr4qY3UOP4cP1WONFIF21VzftLo=;
	h=To:Subject:From:Date:From;
	b=M86xFptBCKhCGVh6tQGRNYl3FJnv1xETeF5TIIaaDr0HAvBWNBE/6RpoRg+iRYcKV
	 lDUxmU7KB9jKfBdOIQIjcRb0J4VgD2P53zSToMhAVJvGHUmRqKWIMNX9M2hr5RdY0f
	 nbwE4ygnSaiNaKTsHIiV0wzXW022ij1cg3wOlA2AF3BQKXv5aEz64VmxNX/fnA6W8C
	 eNfDWCO2GmnhVFMunw1Q9jEiPYXIiiRWh91cl0krwVzOdvk+thZBGdyQ1ixcggXsCf
	 iBUsvQEnEqHxLqVLnp3dQNTOd/2Z9eTsbOmrgtMatDnIwkIv1xwoBllRsjFTPwxcR6
	 shevu8kKYZacA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE5AC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174325559360.5045.8780680393503703930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41c8d5f3d57b81d3e49b18c9bcffb67d7024bcae9ca24675e1472f0c4c345ea
Date: Sat, 29 Mar 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743255593
