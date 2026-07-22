Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E982AD3C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784678914; cv=none; b=XGXj6PACgqAHv61LT7Y69DzLCX2M0zj5K8Hi08hlhIJYI84fwZVtlh3uzL5MEu0FngfFzEH0ECrJwzyT9KiGsedbjZH5KkGIxj6BrXY13ABZ18A2Bz+aJPbLDWZG+uunrXflD9Kzz+EmGxLrcDgre0oMPVsgdNkjLPLgUfalbnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784678914; c=relaxed/simple;
	bh=uss87FGxusZbuJOeqSmwH++jKiPVTl3CdYMg0eXs96g=;
	h=To:Subject:From:Message-Id:Date; b=Khy39kgwcYChBJS3VeauyVXTjDNDpkiZOw0D9Qs7u4gYRXKaj73c5s3AO4HmHVRhDeYoDEcm/EMhZIs8Sio3q8T+PrZPfaDJgs6KKdvyVhfCTgnYnkrPUY8s0KfengB4r6l9eW7vpn0K+VsLJu5Q8H6QomLBbfKHFeBLa8czDdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQemWBgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQemWBgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B42C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784678913;
	bh=uss87FGxusZbuJOeqSmwH++jKiPVTl3CdYMg0eXs96g=;
	h=To:Subject:From:Date:From;
	b=OQemWBgXuurxhC2+eVa4qDqTfrDF2fIo6GVFKeQBM/7344fBsd2KDhutmuaBUHuoi
	 k9q6VKNKFWDf7VhvNoDIeQR4gqOL78cUDatLAs1mnb5vEUkwC+Bk32rrakSB1zCGpi
	 6mwOIG4xHLvGnXGbUI3eNNhy3+7aSJvibVXo8SfuZgfRteaLBCoR49QUDb2MLCmBHS
	 xWgj5vFpuUWrwoCK9K3UsuKut5N3tJLsmAIdDTUfss+TRo0JnXmqXLVZvMdTWGpPPC
	 6Y/Yv6Gah3sJGNKfFtyczWIuDMIKC8bmS6cRT6fRlmaCkhdHpBLbPo4PNKGWyrXTVU
	 iTQ/2yF5dGcmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7564C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467891372.31974.5061097032575230117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97bb37a2f24d22ebc7be6d34792d392427ade8c42964aaae646ae9891fbc74e3
Date: Wed, 22 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784678913
