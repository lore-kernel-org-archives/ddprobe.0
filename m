Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E074C249E4
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708483097; cv=none; b=SiTl12xI0WoFg9WW/KLl5wdbxrOFA7pqxwmcDOvUP558RCjwRCwp9L4gMFemQcqeElsdBNuR4jb6BsRSrY5hzuiSdGCMg0hFnPjTbf6+ALB6+MpYDGtyGFvACPXGUPmclbRPlsriuDqvRC3oMC2XmuRfb2gOXZff4u101zCtQ4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708483097; c=relaxed/simple;
	bh=+mRugERjsXB2BJSwFJ1l6X/tcUZ8EnM8aMorZL8KC2E=;
	h=To:Subject:From:Message-Id:Date; b=rpNacWL7UXpZk7LxyS6kiMueG9TzrLBSGMwYOaaiS4m4EZ4scsIG/jhvhRQmwkcO0q/DT5+AJBxjglMvyYsqEZhE4qs7lmcFZ1tj52u6y/J8EyWk2YrtVeDYzPuKVR0Nu1hhBvIy4p04Wr1hNoNVpuBUgxeFHXlXDqXB/29ujTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jno8cWqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jno8cWqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83165C433F1
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708483096;
	bh=+mRugERjsXB2BJSwFJ1l6X/tcUZ8EnM8aMorZL8KC2E=;
	h=To:Subject:From:Date:From;
	b=Jno8cWqCJawNgv4YNSQGT3C1q7wlP16/CSRQo875SOv3XNh+uLouKRmkXi2X6pbs9
	 ssQguKvbr8OtywybPlhOtsYsNKRKLpOWVGa8dp0/wzmpAnv+hX30WIfKOgP7FKWBSv
	 HtdfkPGSdvAdQnZ3ecgwWuEP7sCO5f5e/qYo2HuRoEQpkEFuzZJWlTadnTYGkTdM33
	 YWZqOyaS9guJEImYrDm6L7vfk3gJjfRDvR31jrMo5XO+GncCXGUBs1W1bCtmR2WJds
	 t79epjkKbUEdRKxkZW1tSlJxnrLad33tOTeH/9iOWQqs6ho+xeP1ViC0CZcm3WSs/U
	 zEJxzA5orxVCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621BDC48BC3
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170848309639.21442.17084883162816289833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904417b847099ca49fbddb245b307f5bfd43f0a602081adf6c35a151a0f7438e
Date: Wed, 21 Feb 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708483096
