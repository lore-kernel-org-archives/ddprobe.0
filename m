Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24034275B1C
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752415195; cv=none; b=QoHHH5cMbezgVCZMqsne+OQqt1g+IQIpOb/THIVWswfAww6wBZbPXDHB77Tc3U4byw3X8qqpm91zPcMaiB22V+ugUaAHxiv/ZHnJeYFj53jikEvZRO10SQQQ2iLmg9tVBtGFBXtKpYVY3kzM+IC20fdGww8eaSvAg1yJbzdRUz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752415195; c=relaxed/simple;
	bh=b/a9hlZl7T5YwabsqI3m2fyOQVCV4r527qQKCYSipXU=;
	h=To:Subject:From:Message-Id:Date; b=jyxcH0wrIJcl6Q0Y2XkOmRvwt8XNwAbhv+NrJkqpP/QCnt/mQ3cAVdnhaCn3H2scgP8+S9KEJy6n/PwzGSUL9W6Kp9VKcExdMu7m56qP9dM2vrrfyKFrjIzrq5Qk95XuX4rMTk86a0sfhGabSkpLqxJOpbni2AabsIlDahrCeqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCws+QE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCws+QE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F7FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752415193;
	bh=b/a9hlZl7T5YwabsqI3m2fyOQVCV4r527qQKCYSipXU=;
	h=To:Subject:From:Date:From;
	b=mCws+QE05li1ONdjmCk4MMlGqWX0DWqrxOdJMSW6zYzRPu9YFx2XoHuzwGhSSH4W3
	 GcormT5EoJtIZjj2P7ZWSzKp+n/WSYzEgb3uuHpg61sgUbP5McMjHKrgaXtu0fbCs5
	 QZxUBXZz9uEw2iKdPFl9bmoCf3FBk8YFkM5odK+GAGHXEK425TJxfvr4MoMowWuCYQ
	 Qg3Envn6kR4+1uCm90sf8LcK3v5K46aSO2spfMTTVF3YNqeoUm4OKPUZ4ieqWxnhhd
	 663U2SLfmH7Ad3a+ZvNd5PbnGJFiX9nTlX5Zj1yjpW0MobnJ7KCe1QSic6VLMlPiMB
	 Z9bIcGPbj3QDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92132C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241519357.5301.8246342309223816407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2cef10c8606043d3a0e81843b12fb29d305cbcb2593500f60e73e95fe28782
Date: Sun, 13 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752415193
