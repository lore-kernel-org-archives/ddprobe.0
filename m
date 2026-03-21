Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F96D218ADD
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774136694; cv=none; b=QJB4N+HK7jUZYRr2wKJDS+MsGuEP74xc3mSgRRW83kpgdoQuP6tJDM+wBJnDXUVe1/wkm8HXB6DOyI4qmcChN9nR+9KnBcPFsvmII5y0w36XUDiYNe1Tv/FJr6c2wQKbPu+Hvo+UNkUsyRJnvEuD8lkBQg0eC+OZS0BEd/JbYmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774136694; c=relaxed/simple;
	bh=rNG3GuOhl1dKZlTc/VAuJK01GfpHWVsQ7DdyXtWvMEg=;
	h=To:Subject:From:Message-Id:Date; b=dpQSDsKP8onGMo9l+zh7o7U36kfgn+e983FMRNZeHehxRmQ3+CBIaaXYV2iiuS5HzvTzo0QvIG7pCKgGOFeMBx34pDtcQEjouxb8os0gvxPFnR5nIKiL++xDfbS0gkwVeAfPOUN/tPWZ4amgl/bjx5PE+jiLJYThnS7oa3ZbYS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMJCSBHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMJCSBHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0E6C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774136693;
	bh=rNG3GuOhl1dKZlTc/VAuJK01GfpHWVsQ7DdyXtWvMEg=;
	h=To:Subject:From:Date:From;
	b=tMJCSBHfbqhXgIhRLRi/evivG3y4I+YtDLm/M044B2x/TQdToNn5txkm2yHELYh20
	 GWpa6WXDmQTnkQWtROUe7nivLAsiiHEK0c2ayFqDH93RmjZDO5yLghscjj8vM9E5Tw
	 rRwxdz5jBbt99Jvr/Pc9VmXwiYkrZKqmm0YOShhtDxJHgoZirWQEhR2h8PKOBMbpT+
	 VhKSu+GtjkAq1DNRbAUdNG+Ka7XtrH7o4rDe8d/dibeCcP8lm2Ac0c/tsy8Jm9qeg3
	 p6gSY87ZzLmQc3nWv89MBmv5rH9WeyTnZ/dlzEcUYOGs9dzG7Sru2YcI+x1W/GPqBL
	 6ANH9TU7v/2TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E249109449D
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413669357.18115.5546199287566385902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b076faaeedf2af75971efe674a81274e97d6e4c6691bcdd7b5069f67c89a906a
Date: Sat, 21 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774136693
