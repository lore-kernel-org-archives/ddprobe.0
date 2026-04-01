Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D62736B07B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775017494; cv=none; b=uqKywJZbQmHYcW9uxe/KN4rwyb2d08TfmVsh5huluuOROsDhCbCoLQUE6YriFyERVuP6F31cR4njStOeEYwbGYHCmmrBQhfuNo5GEMUtUKcBUynDtf5j4HHNrXMvxSwwlZl3PF9GhgExu6AqTDPUyMtp4eM8OJD++q0V1jhSl4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775017494; c=relaxed/simple;
	bh=GNjNkqjSIVl+hL0q+DV14ibcGR4m9rGRruyQiGPHSsc=;
	h=To:Subject:From:Message-Id:Date; b=U2bPBwF4MKrdhf7tqF62WqME/YlSQyOyNBdMPSUH/VVfvYVUMRF4JKm1uswz81PTZxoMU80S5GUAFZvBw9M/VWhUKjyA5TdkdHURbIOXY/qeV/xF5bzhSxY4KPjLAqYvX/RwUo4IrYtJXkDBFwIUhPUyBkMzZVmH7yb7WySVMXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6C0fD9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6C0fD9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CD2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775017493;
	bh=GNjNkqjSIVl+hL0q+DV14ibcGR4m9rGRruyQiGPHSsc=;
	h=To:Subject:From:Date:From;
	b=B6C0fD9LCQUeTpdec8HrUCULOGsJcwRmquzRUFj04tRgXcWfXfuAOHMtSDklBHQiC
	 ECaQ362llSV9Mh4GbTfOpGSWp85VOUSZO/LU3iaWfZjWXsp6LXLo1gkSY+EtK8jz62
	 4aNfqulkjrOvCMd2GaykS2Vr93u81IQb63eYMUMVkLpxoTjouEi3PQ27x7hzo1lv5q
	 F+FHy5tcoVTJBmOlOOfFKw5GOnAaUvccTdMgghBYzbOKpexkpnNW8b92kJ3E7Lj12x
	 Ws/Oz2iFkVtVhumWRO+uFyC+Ar5UVrlN+oxyXQ4TLzsWdOwJVBKES0nyLQD41rC/jM
	 STe5YeAJou5VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D2610F9305
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501749361.12192.2076630109013955447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64841c4b61235f6c3fd4bacd1bfe146696993bf3dfd0c73c7ed0a6f471bc1fe0
Date: Wed, 01 Apr 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775017493
