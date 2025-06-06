Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BCFA2D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749196195; cv=none; b=T28JNQn2SMcuhaZz3ZY24EJDQZukyUIGknEULYhVu9dG1Q/zPSHoqxtEQNnvlCBONI03iR4OhQGoUerwCzHkBeqFlYLUTim7DHy4h2Sa8zZUhT1lYUDfxANttBi1u4oi1kempgqpOgntZ1n4U40o5TqqBXn+7gEzZvP2aw2nC5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749196195; c=relaxed/simple;
	bh=xtIqriv+9EvUn1JrjgOYNd+WE3sJGLCsICQXG/TBGlk=;
	h=To:Subject:From:Message-Id:Date; b=ZSb6FMSJcb71fZP+lher3cMUdQMtAjdTCLj6Xwc6uZNx1vVs5ee414N1Bkmk9QI2Q8Zn7lgKDsDowhoLHqapDK9H1463UfSpqcBHVLvrpXKU2m8oCuGI7m7pvCVPc+2Cyuq3BHawvmPlrvFnXGCPprUB9B01+gVYyRdgVwyHpoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0NQxuyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0NQxuyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D03C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749196193;
	bh=xtIqriv+9EvUn1JrjgOYNd+WE3sJGLCsICQXG/TBGlk=;
	h=To:Subject:From:Date:From;
	b=i0NQxuyFVI36ifit2PpezUfe8qNcUCBJFiboL6wjYN+h+ATiUay7ClX7dfHoN7z0m
	 K8QH1uwW0QYv2JynV9/yDRbgyflTzJDRgHGxlzLvyuXDjT6BeS/JLghpw8tf5mX8rj
	 eu44rhcianflbi047pkcEWm6dDK2pRKLNW/U76/eo0mKNR8whzaIzu344N+idGu0q+
	 QEAhCUVX4xCSQk5etjTAU8zuhilT3qvcuyuTIpfqODJrSsIwgd1fISHVZxpwwz2hCY
	 N5LaXeMcltrVBduEmKT7hXGGkd3xRqjVmJq6U8vZ4/nCWv46UQiOhgn8XXFKwdChVB
	 ZCyPDV+XzfOMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B55C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919619358.23904.17651125341718121762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35242992b8917f95615f88b35ad345eb7ea51329dbdd52740c290d8a7ad4f04c
Date: Fri, 06 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749196193
