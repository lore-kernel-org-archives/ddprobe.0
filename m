Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FA51DDC5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720617983; cv=none; b=hAIpLK6fnBR4UY66o24v8CpzZze7EbujZo2nofQ/eEEcLK3wXiSPi88l+aUYQ7LV6bdLwL6XvWqSRiEP7vjTkEUrkOOmQqxuQchg9dJqUF62B77xUyh3hcQDmH+L3S84tATdNzcXKcNfmLVQ/V8chDmej9YZsH1kVmTtog0xyHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720617983; c=relaxed/simple;
	bh=6Vi3+y74XvwGA7KikRuB3OeKJX2+OvX5ZPFhF4jwEjo=;
	h=To:Subject:From:Message-Id:Date; b=Y5zj9GzkMvGspfDSEhv+AFY0GqSlQVs68L2rDF/0KNUsIXL7+bKJ3GctblohRzcGba7peOaI3NQ4L1VEnbp1mjsBd0D0S1YKoW95YM+6IWVvyYm6bWc4NVYX0R/WCKF18hCKTvNbQMocfYKTa+pZGdVKV0OAcnhCFW+OOG6S3+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvV8vjSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvV8vjSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6F2C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720617982;
	bh=6Vi3+y74XvwGA7KikRuB3OeKJX2+OvX5ZPFhF4jwEjo=;
	h=To:Subject:From:Date:From;
	b=nvV8vjSWPCUEUzfuY34s4/AX7FMA1X66FRboM2y3kLFKziMqRK2QXquoWGFIXkMe+
	 tlsykr/S+vuW4PUl9BPe3gGaCOyJnXlVKsb70jYmAB0GvRS+bGubWCdyvLvjXEK+nh
	 LB/IaEs3nXtEVD/6j8BqU+tGHu1hFHPQi6C4QXv3hnQV353T90Kevc8xKdVjFOLwoN
	 goaDyBVPnTqiDJtn3EECWqmI1jrKpS/n1UNoyZxAvpdQ8UAbD9yQjWQWAYeKRR5XpB
	 WZoTY3gMHo+52EHw9vNRiwJEnnuHUkNQq9k4u2+zUpjQrWmZEbE6vodOBFmk+F0I4M
	 rZ7S57j7/La8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D77C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061798278.19018.12408099884256714307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d8fcef1a8a15f5be6ea79c9b18cc728b3b01f78817c4a19f5683eb3c579d4f
Date: Wed, 10 Jul 2024 13:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720617982
