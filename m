Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4112F1401B
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751941796; cv=none; b=K0ncaCNi+9/1LmCMI5+3DVLNCqAJHn0IbmXuzW4MksrJnGqmbma8tWaJT2vOGGrfKTCdBUk+KpBNmvU6m7US3KQPixjm0K3h3Xf0cGURREURlAsIlSCJiP2toBUKYYVTeuL2iEo5NuikAhmZ5E4sYhEh5sJpBcS4wQQulbCaPfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751941796; c=relaxed/simple;
	bh=5gdE5GXtuP01qu8LJYOVYDD6WbbhRTG3HSoTL4X30CU=;
	h=To:Subject:From:Message-Id:Date; b=XV2bdySqGIVwT0G4+q1Hp2XRpzl7ryM9CmYDD7u5FHhQAodgPVHV5C65mTVtSW1dchrj+Td9R2DybOnxZGxTUVo/+3zFARCfMBQ2zeJauDnHNNXEXHoHr1o+Iuy3BqJ2cvWHoD5dpbd3qZL5AYBkfrAtn/3mn73Vkp2lWuvgaKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/deNF/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/deNF/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4254C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751941793;
	bh=5gdE5GXtuP01qu8LJYOVYDD6WbbhRTG3HSoTL4X30CU=;
	h=To:Subject:From:Date:From;
	b=h/deNF/Z6Nm6HcMQCK5SBPvxKp/x2EpUdtWxSaCaFNkNMpUMUC5hsrpvrBypKOrs1
	 uMM3Y11fSt3x7lTLwcpt5/e1lzbOvJAqE0ZKKeOxnFdaKURgFscw8kM5x6Fw96iSIH
	 8LJX89/hjMx0fDcmUtEFeX07fRGOpe+0QsuyF3A7dj2WG5LjB3IHG5yOPkATiRGEgz
	 AvM3n+W8KW5WW1A3pFzO2q7jQcPrnYi/up0wfc5Yj2fMP6i9rnYwrz5q4pXSCzhUjf
	 Kbb/Kw3hxYR+CqJ9FcCW78d8ZwUNTvGEuSEAB8asdqjfUfKNnEhYfMl36/VEqM5obR
	 zCaL7dgW+bfbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91822C71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194179357.21115.16520267676920292473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4add2673334edf6fb0bfb2d478fc300461402c3f0356b83cd814aa8b02cce891
Date: Tue, 08 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751941793
