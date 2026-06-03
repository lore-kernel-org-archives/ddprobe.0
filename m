Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB3B2FD69D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780463674; cv=none; b=VS52s1aY0etVo5Kzc28szyam4Lv7fC0SYb6o38KK72aObzasiPD+/PCoUUJZwI5xEOuL3i4c/WdNCKI5vJFqCz+A7QDK4G845zgaf/FiG796Qi7zhOvMR8DPUvXfmS+zs9DtpsGmsj9h29GZoSc/dwXc19p+ryBREcVf3zTQ9pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780463674; c=relaxed/simple;
	bh=XL8wQBUxMamgm7ikFtckk3gywxtV5iyYAW0uK+38gbE=;
	h=To:Subject:From:Message-Id:Date; b=LFkdsahsBMPl96lGsN3ccbcMpTzxjzvuwZ9qvia7G5eP2Skkh8paNpJ8rpDa6/Rxo4L33FySxYcJryRHPfTxYKrcO5YzS6GFs78aSK3+ETdMFx4eMkLmO0mBjthH4eTArjfJgLtcTPM7z9ufYUXyFbJMsRmFSqmwWcHM3L5PGls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nP/5cqD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nP/5cqD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF61EC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780463673;
	bh=XL8wQBUxMamgm7ikFtckk3gywxtV5iyYAW0uK+38gbE=;
	h=To:Subject:From:Date:From;
	b=nP/5cqD+oHqX3ZE7lMUOuf6BLgP6zLVXh97bS0Kz0rEkuZnskTr1SKI2DS3VR9QNv
	 M95ApY9tfj9TZzbQGrBeeAg79hM0st8b+d/UnzclMatp3Ct7gGIHJ6f8S9poERoei9
	 2yd6DAuMNs0FqPe0vji4qdSGUBBzIRR/UYWy6B53SVd1wt799fk58goDW+cEgsBjX/
	 SyoLZL4SusVZ2zhXqx+dfzWeK5k31hlHkJHDHVuW2xJOc7tUz/qDi3VlrrJTmHtbbB
	 LDzhwVEEaliJi1YnU8MRj5cXcdARCU74ObDchTts0U/o9W9GXSZVb79M2fcBHGafMi
	 WcX7uNn6nzZTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80D6CD6E60
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046367367.9306.6296745231656875685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafc8a941d0f5dee683845f35fe06b7d38ad7ca7fb3050a8fd1379e99daa5648
Date: Wed, 03 Jun 2026 05:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780463673
