Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E82D222580
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762075794; cv=none; b=f+R/doz3mfMgftwUIrITloZRmPVWw9xYmgdTXi+P4Cqi0CvjgqI1qAujcXBogqVAPlRqqybLDzuW8NgYEER8rwQpAGkoJxlJ7XxA/VxOi0O5ZNwJawLdddF2cO2/qOfGOmjIAercqGd9/HfZqUWP6PPL7M/aLcxQKxwgMnIbuK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762075794; c=relaxed/simple;
	bh=Lj0cEvt2fZ4v8bD0JN+I/gbka4w0t1jOHGZtGV3PgK4=;
	h=To:Subject:From:Message-Id:Date; b=BkyBpANn4j+LJ3qk5D4wlUMAoKZvbjleG9XMuUjzsoCQQz5FP7SJNiThVSS17mTakiUWKnU5x1AadTFwMQurW3DhCyDnBzrh0mpw2bWj8uy0TAem2aXMZsk4TmUXKyVSxzKcIZChubh8ZqTL8qAWrHhTJP7lV6hALWOBeGwXZcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQcO4ZQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQcO4ZQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABFBC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762075793;
	bh=Lj0cEvt2fZ4v8bD0JN+I/gbka4w0t1jOHGZtGV3PgK4=;
	h=To:Subject:From:Date:From;
	b=eQcO4ZQiH9UlVLNlUqkVHSl8GBmuOtGu4BabMypRh1yIHBE++BpWui8L4TRubWn8N
	 E4wl60cCMxpSMCt7B4ow37TSisdlXTaF7Ah42funlw/3YxyqQfr6kkK/oYjNW9lKVK
	 xHmHTvLidIu7g2eHVoHnLW0XqqsUlrgh/f93gyxr+IZzUbIqfBXQgOLwT9ZDgE7bCY
	 bZI54y/Neli1ckDunroWu640fwzS4Lizi+6vxd1hrX0lerWOHju36L9V9rO7amG3T1
	 jxOVTuvigle6cEZ5RWnFljLFzwgtU/nmnLPd7jJqIPWr/JOicElINEuNCYhe7jczTv
	 KP3LOzTODxM+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281ACCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207579359.27916.465844780560291477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4bfb550ac0550afb1aeebf423d6634f5cf66eaa3468ef35ca204c7ac9cbceb
Date: Sun, 02 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762075793
