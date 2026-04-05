Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D9113FEE
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775409334; cv=none; b=lySZfXIuxgCPO6PgvjkqnGN+Yr1uVOMdAekUeYi4ImqBPdvpnyuGIt6ZjzMSZpDdMocrMvpkMO++7vPs6wpL3ICVPl93dS8IQSck+m8u4muhLM5207k8jBzVvYp8y7tmA8pt5fcxHyUqzqItFvqhzfLXuD0mr1a0WPeBVkD7e9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775409334; c=relaxed/simple;
	bh=YHIjJNvkVaRZd1mFiKOzHrb+mCAvKnOOjO2V2NvBsjA=;
	h=To:Subject:From:Message-Id:Date; b=LkWCaf/e53hQe3gzs1wfDjuWNyc7E9H898ps/3mLOaG4UMlJPG7nFnujF2dHaTmvmZuYhbPXRHyq1g8dZ1kXJDLaGgGU4Ulg4laJZSnfLUVMA98iu2gc8e+gE1RsnXm/vdCKt4DmAKnWiyhuE3NysIA2Y9KqLOcwDy2QlFB0df8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaJ9moP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaJ9moP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7632C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775409333;
	bh=YHIjJNvkVaRZd1mFiKOzHrb+mCAvKnOOjO2V2NvBsjA=;
	h=To:Subject:From:Date:From;
	b=BaJ9moP1Ts1KG2XH+jILbGygIfKHM3R1/0VlRoLOcOfyR4nuH0YIPB/IxYk4APUDZ
	 LlO6IBEs7XsbJkKcsXa+NbDHbSiST8ja56PR5a0LCljdEl7GX/qojrOWmOGK7eiu/g
	 be0PsSMoRwWMLnhDdm4cT6zEhSJl8ZV1ts3xVWz2bFih2g+cjOxp2m8uJ+oHOZYvUb
	 3EYFGO1sEbwQD+8mftlzvQdWE8PX4tprOt2E0sV9/nXJP2jyGprfwcleavGNaxoWXv
	 ec5X+OdzvFr0WoPSbtYsxcTZIunN7zpxuQ5KJI02qr4fET8UGGfFsMdvWEfxh8LcVj
	 4ej2w1nDo/0/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B435AE9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540933369.7996.7226636646671810700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa73ae65b1d84de69b42a46354c7051a6f33cd9656a24aa5816b407b28bac643
Date: Sun, 05 Apr 2026 17:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775409333
