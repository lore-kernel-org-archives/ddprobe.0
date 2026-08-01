Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552433246EC
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785569434; cv=none; b=NOS/QJ/VWplNpvjls87r5ocSxGBnWYj3OiD1q3hE6OpobWa2Qa9Qz3nfcL8i7Jw0lukzohjv5wOkfCvOlmxAv4knPjoHxs6McTPTV8QLxldUoeLuZJf2Gd+YUhVYVDjUTTD3LaFIo/l4iYcPODijg3D9XuTe1kDb8u+ajUy+7F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785569434; c=relaxed/simple;
	bh=Fs/I+8bvKVwW81YDCKeWnq0zTixnKjQ1fiWEEAiZRJk=;
	h=To:Subject:From:Message-Id:Date; b=nEUEiz7ocW4RYO/+uZ7fTmKPksrdtIDVg+DUpWgN/mXZNEebwHdavJ/Moya8vnzpzlPtJRnZgvW1mCBI5+p8Qak5vr9KGTjlTHoLy2oWmiWTC5AT+nwrB8N8OWVLNZoE3+UQ2PmGBQzD1YXiUbEeG5azRXrlJdbXQq2FFcKURdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnLD5j6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnLD5j6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D474BC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785569433;
	bh=Fs/I+8bvKVwW81YDCKeWnq0zTixnKjQ1fiWEEAiZRJk=;
	h=To:Subject:From:Date:From;
	b=lnLD5j6QuOxjfZRSSTDaiTpZBsPMI5ORjUe670NM+jPKl0+FWhihPBy5TMBuDuQky
	 w+D7Hbz/ZxymnNmevUtUeJRIVYVWURegT5Xi73QERkxzhiyIyKrpZ/4PgzTgUJ/xQF
	 3H6+N5AfF9EAMsxeWNfqQU5+jR8ncTYtu3tvBBlvY9QbRTyEIqxc8Uz6mZAh0MEllS
	 t7DybjYWSInNp+yKW8MKZlrapD1+i19wwhsHGbPi6b+g0SyOtIcDMsbcb3IqtlWwyD
	 Pl6h9qKgNiD/78/hrMlzVS5ThWQ9/6m9G0OWT7bznyVu0sD+dWN18EpWGXdn4hnLBM
	 Cqypnwy8uFOFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0D6C55174
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556943370.16041.96765725837374175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c48b191eaa2de905fef270a963b73faeedf585c27be4b1ce5596545caf12435
Date: Sat, 01 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785569433
