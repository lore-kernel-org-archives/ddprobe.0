Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB272566E9
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751560794; cv=none; b=jyPBHjJ+zUZ9X06kBIaQOKbcW7uLjBdfC5A5EPlliK5CXxIViWjhQK8YRESztH8cc+GNRKxMxy8Qj3J8jKiXEYbPj5Ud5BURnr/32NUOL5F3/D4UzRqRjf618o3J3zwIWwjw5wqG0wcfvOQwvzX3f5FHAoUJq1+KApsicIfAQDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751560794; c=relaxed/simple;
	bh=gFpEbD5sShzHwcg/t6dOXGAxN0gBtq47hewV+dagSxk=;
	h=To:Subject:From:Message-Id:Date; b=iHtWKcSiip/BWccqLvy4t0ROUiCUpNjXYo2XuxMA9mOpdMpyG7RDz+nQu7UJzvvVaVu/zFxO11MZ/MiWEBMny+aqqbM+D9gsqrhmHR49iUtFo8QgWN9O0tFhzvDkOP1BYWlJJads64bEsYTj7U0NxPUYzwxQkCQMtefLVrX1m+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGZ9r8Xm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGZ9r8Xm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD4AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751560793;
	bh=gFpEbD5sShzHwcg/t6dOXGAxN0gBtq47hewV+dagSxk=;
	h=To:Subject:From:Date:From;
	b=GGZ9r8XmtuhORclVaVoS822aMa6WawGYUjszyGpQr6GWNk+Cv9nEGW+4BdGQ0nX45
	 VJMytH9tpFFjCBrCdPayHyt4pneFC7dDTVMNUS+n1hwCNIiwoiQxxlRnV65xD+BxN3
	 qVmx76cZxszPuWZr0wlupSjSPzClewsp9Pu4DjRK95E//vk7Ip1vIMBCHnbxy/OlAS
	 RL76AkWuahDmyZyA8mEPUoei6FStGfHzVn1hqUYLk2PVo90N6PfttI28/e3j2O+lvC
	 NqacFoXZ0yFFkpb1fBD7Byj7Qzm59wgb0X3PmBbQt7L3ZqqcZDmoqReecxLSmW8gYC
	 fTsKbaA2wKbeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8BEC83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156079357.20697.1809811354720572735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36637727009fed7cec3fd686313cc80d27bc1e3239a1313ea255fbea0730fe27
Date: Thu, 03 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751560793
