Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3305AD2E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722282954; cv=none; b=TJCf02cAnBXI7WlzUCn+M4Q5HyshR6Q3RJVAIUK6MqMG1IoG3szDnnZxi7ouO+dOAKCOlbKOnIeTRxKtFqBLvLpizRJr9PUNAkm0CndNmk+RKI3tAsgVbF2jNkM4qpfOnn977y7VAnKOJ3n9p/qh30aWFxX5hZX8SFbhZFKb5Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722282954; c=relaxed/simple;
	bh=bnRBfJDOot+0gmkjPRPJT9JPIJj/WJIuOB/go7iQwr8=;
	h=To:Subject:From:Message-Id:Date; b=N9ifFotghdGPVQFJXtBtmVCD+0c0AdaXU4hguNU2RPMMmY2jbP53YRhaFAPGepWkZyrJdNprfZPYZseCkXLGoWjqfX9mG+B8dCN9rh6Dj6GDMXU3HST1iF7EJ+72ntdANq83VQAq3nHeE2HxmFSVZyPXwDMbptWtLT+fp5lOorg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aa1VUlTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aa1VUlTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35AFC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722282953;
	bh=bnRBfJDOot+0gmkjPRPJT9JPIJj/WJIuOB/go7iQwr8=;
	h=To:Subject:From:Date:From;
	b=aa1VUlTqS+LktFam+NV2PZvzLOPIYRnVS0rGjSHmFBnvR/DZ0WEA3pjCVzoWV+Djw
	 XVKqFleQT+VywaxQu0GRTcMYBP8/p1lAW0k/WvcM2V0VWaJePserUDIKspd0x2soa9
	 YrG5tn2jmeGH6gZI2X38QD1HQHagDmOKiUDbRMawT1PjmeOkDwoORw4bZx+ldAjsQC
	 vtotcFNQlEF89aCgIHoYGFwIZ3+3mpxFlOu91a+labB/sV8/Mi9PXhU9z5apgOIs4W
	 x5Kh8UiFaZz+wIOQvfetuQd7iqoznklhAM9RwleYDvVQr3FqDno7hMxBCvEk6ldsvU
	 P7LaZSoBkLw3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF85C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172228295363.24250.12462671831902202433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e695ded165242eaf034ddec3de05a4c4a7e4c0c55fa4c6c1ff3e0cc6172014c
Date: Mon, 29 Jul 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722282953
