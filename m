Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B7525776
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779589954; cv=none; b=evrym0qjuNdlvuD2FslzgtLBIicx+dwoECxi+dcLyr8VkxdTcGtRTTop3+6yj4o0rRd0qSinZ/iFxXwzShjuLFeQNtr1WVc/zwQjH4grNY0gqwIMfg7B7/KQju3DhgWcBir/WqudAn9pcIcm6l1bN7hZ1cUYQt7u27sadQKWDW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779589954; c=relaxed/simple;
	bh=eXA6L9sI/8OUxOa6GqHk8h6yZ9eP0dF7zWE0J4QCPDE=;
	h=To:Subject:From:Message-Id:Date; b=poG5q4b+AV82ubyMbkea3c8M5ZwKMYBjTktZZ5rMAWmpD/LKao3a+rbzPuEU/Qrzb50jAYUKpBayfAM2oWExRJ1wBaTvj3wf2B6p57ZUjX/T5EyWLg5qbT+GU183qkyAV10bQk2YtxTkH+iTVbwGslufZdhYhyF16UmG52w0+bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVYfhWM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVYfhWM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8048C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779589953;
	bh=eXA6L9sI/8OUxOa6GqHk8h6yZ9eP0dF7zWE0J4QCPDE=;
	h=To:Subject:From:Date:From;
	b=cVYfhWM2DBYUfCUH3lwbaya8UaJrlyoqy6l7+EhJckDm7maFNiIQjh5yvmWUbufGT
	 FJk7SM8yvpBS+QdASV7S76HNKYJo5cry6kyTBn9cgArOufSeboY3SeVzBlMrTTB+0C
	 8kykpGZfl7VvfjjI2wfkPBqvnMLouBRZeCNbM7WnhOEGpblBHklaGUe59BcNOSSt3o
	 2vUkLQaUUIQGD8WJX7zaXnFk6vrsJ3/rhrqzIBErD/5aKvpTUy8wGZRbtFEFwtqy6R
	 S0HItSrwYbt9+FHWcSW4f7W7B47mD6BLToVcZuguDib1zK/wj2OSDmqeAIjRjGDSiR
	 Sw2Vm0GefloVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD921CD5BB8
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958995368.4992.2024878936133210766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ebe1e4792bd3c437e31f49bbc69a2a7d543ec95055b40af03bf6a846e89e77c
Date: Sun, 24 May 2026 02:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779589953
