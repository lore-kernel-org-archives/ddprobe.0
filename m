Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4077436998B
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773396294; cv=none; b=S5UobevyyKfwLq+hsKoiz2Wqf9NtIdgehLTaYoUaL6ccSJIV4Nqsgty5Gm7PjhqOopsCXb/ReIOIfHjJwNLvhQRY0QnOzk7+S/awxvb0SoA/He42G96Z0QYP3lofd+POKAXpULCJJ4rHuWLHb+Q0gR43rZNpgDTwyuOQJCFF1As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773396294; c=relaxed/simple;
	bh=5ILdCfLUS7dzC4tSONqzKlP4hFc5ZwE+aQ6Kru5yO3A=;
	h=To:Subject:From:Message-Id:Date; b=C/4lG5z+9oIxb3Nh3mpiCKHmFuNbRlNGpTSApV+FmyuEsDX9ybPsKitMR28xQOucJreboNfxNtA/epKAKWgeTdUlt5bVweB7IUk9wzh9xiycRCunivLVb8FkP364w+D9QhKDOWNvZWfF1WkeVcbhRWGIn9SuF1Zq1aLRS/cgyNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUfaJuYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUfaJuYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12ACC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773396293;
	bh=5ILdCfLUS7dzC4tSONqzKlP4hFc5ZwE+aQ6Kru5yO3A=;
	h=To:Subject:From:Date:From;
	b=QUfaJuYQbvjEdf3/PtMUGQzArcHn90vZomxoro5zu7En566jrf/Gz8Kgr2vJqRz7Q
	 Y4+8S6U2i/NPPEuh1FOZl5/YXyyDa7npulHEW5e7h/57tI5XtUlUSJxRO8nvc1UnwD
	 l/SLSzkh1pOx1fjGe5ReSdU0YM1Nq7+F8lxWuKM38tBkMF73GlJXDT3u/RJGGnL0Yd
	 ItZ9hYfPiJTvVq4zKKiOyLFJB5AQbp3pNvpLPv4YcOr/DxR8hkYnNq3vF29mqSnS2A
	 aVf3kGplkwZ10CHPGrNSAOP9wCi9mCgEb9PeZBy/+e3GEstXpGXiQv2L27Zepv8lwH
	 4ohU9zj//IUzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E5105F787
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339629357.30824.11010341195744103798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb61cd7b5e068acbb3f5f8abd3a5299ad0bb8bd0f5a7673398f1850ee56c419
Date: Fri, 13 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773396293
