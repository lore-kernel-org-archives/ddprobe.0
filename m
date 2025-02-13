Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3599869D2B
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739408934; cv=none; b=lxQD7vqt/W1YRkQacVMCor44rdgzQiqeBQOpZqmq4gCmrMEsS/FZq9heSTiVvB7Himjn5+q0HY149jdQx4x4Bhv+dYdAVWagWbCwNEgC9iTGEQfibzHU3VVisXSdNzU8HopAhSCIY8ekd29d7HZuC1IZZT5TD2P6b6btsHl4MwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739408934; c=relaxed/simple;
	bh=ytldsT9sEFpTYZy1wUT41t41IkHpgHg8mWuRM/uBXDY=;
	h=To:Subject:From:Message-Id:Date; b=ri9pI8dTF7Gzy0M0hnwmbZP7W+WO9UGyhiSXw64HbZRjOB59nKfaXcqAi0DZtYSiZR2K8qy9HmmwjQYt8vCjDjYp06DztsUhsYne5aG+47G/58CqGPDSiuxFI0G11u2oG7nhKUtSFNQkCqh1KSZsdDlTsEFhs2qEN9qTJ+V3pN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0C4Zj3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0C4Zj3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7713C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739408933;
	bh=ytldsT9sEFpTYZy1wUT41t41IkHpgHg8mWuRM/uBXDY=;
	h=To:Subject:From:Date:From;
	b=X0C4Zj3txtBkZWLlXdiJyaI3XOjm1PbOESQkELm5XsIe7t8ru0fD9ZTyw8M0MmrPY
	 HXKdc/LkTLeRuI4PMR9bumermWJhOWjPTROhI61imSaE/LlWXjjjTV1M5pah/39uTu
	 61NvUUFGfc4GVdN9WjDDBbj7FfpHub1kYO8UhZx6uE/CizqhVp193PZvGzejkp9X0Y
	 mVz9zPTpLa0eRkXfnBLHBM/NWH7WlZ7lqRuFgO8A3U8QjhUx4x0pqLBxV3KZV5HU4u
	 6sCW/Wl78PtbLJarm3W7pwmWrZf26L951yRLw+ZHuK4kTsn3SBGennMYIQRcdwrZiq
	 4THnNxJK4xghw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940D4C02198
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173940893359.21863.5037852126531143068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb52d0a14fe32c7ec11967775a57cb88f018e26dc145d0087b3ff415ebcf2674
Date: Thu, 13 Feb 2025 01:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739408933
