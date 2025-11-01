Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4644F15D1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762010394; cv=none; b=fvoBF8oqsf6Rmx5/pHPFcBLiTnvsswiOHluGFt4xfK7LYmHwk5/6EY1s/12vTOzRcCEmPuYKftUlOx1csYAaFiHniM4JLyVsFI1VAs6NQRkq3djkLJ8Vv50N2QSOZ+xCSjecSy9IVh6ME8hbXhjH/3Lu+seEVA29OvSZ16YPUlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762010394; c=relaxed/simple;
	bh=AcJRpP07Nf9lY5UY4tNPRVkRpQCIW5+LYhlUBxqg1gU=;
	h=To:Subject:From:Message-Id:Date; b=S5sxQOIJLW4btXF3WCY+2lFiNHMeIU/crXpvLUHwkRyo7+5bMSQvvBkewuZxaqHuKqboq4tymZb89CaZtLIdbh9e9P4yQ5f4J5Z/tMNilMx5k6ARizxhZnpJ76JzJTqkE3R1bR21uCfCVHyylzhcipO4RS/x+/I/PcE8xdsQm3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sY5T1rcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sY5T1rcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0F6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762010393;
	bh=AcJRpP07Nf9lY5UY4tNPRVkRpQCIW5+LYhlUBxqg1gU=;
	h=To:Subject:From:Date:From;
	b=sY5T1rcQQdt6cI6lrC9/182IMaS0HAMbbvaQqPzHaODGD7jTob3pC/O8RMzEPAEd4
	 Nn224GPZRBdpnFfWmL+XiKtIoGhothAHg9qIlBpvinoNbyLs+GCpcG9FQIz8czCQH8
	 7lTrLHwhsO+WQWVROlV+3djaz4k2me/1pwhP46YEqfJu3xw+SBxlSMqmFUsyEF3Ou9
	 YUx/icM+q3LQHgfLFdrdHbAfyN3aV6dSnOe76Oi1CgTBgr7zHGDXYwJ/DzSMP9VbgT
	 sB+VNWkx8Mgs4Qx4vOeAwNIb+cCwXvntPYc5f/gX0F5mag6FjMXNDg6i7LOUH2BUIv
	 pHJkvIQgWrJOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BF8CCFA03
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201039358.30830.16132943080123179655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f13e3c62be552a716cb8ac021f098709efa8adbc017117fd24d486b1b2e9cf
Date: Sat, 01 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762010393
