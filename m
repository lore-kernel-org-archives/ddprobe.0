Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE0427FD7F
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747243193; cv=none; b=R6GtnsKAQkk0V4DzcJ0zPQHLC0fHh0uCOq5lSUi/Cty06m6I/EPHpb0Awna19ihUfx/MjcPe3hXHPpl6+js6nW94oNX1ZZ7Et98wNCGhVjXRZ8VkoECTfeJYhtnzygba5xw3Yl5fojlXnrGdWy1yWaOD6q4Afo8hrbFP/11A2k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747243193; c=relaxed/simple;
	bh=8Gsy/EIXI5oLiWEza0FK3aSMAG9TmjfhtYMqRj9JIvk=;
	h=To:Subject:From:Message-Id:Date; b=PEXUxe3+x3BbyxnihgbjExC0eHa0Bdmqr/YvUhCrMniHKXTJfMLGzqrpt1Oeh8T4aHMV8JCZFczgDPgxP3uJee3u+99/Mmh2s4YHzg0/4g3SKnDHmOZ4iEpLYwopAdftRExvJ9BFOif8FS4+rH5x9TANkTtvD4UlLwwsSmA/TyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqpK8auB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqpK8auB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBD3C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747243193;
	bh=8Gsy/EIXI5oLiWEza0FK3aSMAG9TmjfhtYMqRj9JIvk=;
	h=To:Subject:From:Date:From;
	b=TqpK8auB3eI4ESJ4C8HBPjA3ehKFXGkJFg4Owdjo96Y8Dg1OkBZDGfv3W1oUEhucf
	 XgyInySjiMLX2OWRwI77R8eDAFwO0iYPZcOvmxMJzjMecCYLgxx04eE0oT6rgfOETO
	 9X/chQjNzlFX/yW//dc85Dt8kGoVRqRoVIPZVA4HQ8qx1a5TpO0rKgxlV7iAX7MNGO
	 9c8VfPJx4Ondv61kI6s+TG6CTr4rMj6zBB/5b1wk5oTD2n9P4MmV7ZcLl/re7yUZy2
	 KucSQe+0QeqFc9sQJ92oKTHgtjvLHHUzGR52SdrgCnjG7bBAZO1cKkxUx4gzSRAFqx
	 kWMllO1XtXJ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECABC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724319357.5417.11057072310931665775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c81afc6bf04cfba0a61a9170552613387bd9410be38e8a3b9c29dd9042b4c47
Date: Wed, 14 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747243193
