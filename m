Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB7DAD2D
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717278323; cv=none; b=fsiRrtAHt6XrUlyIcX0g28sP7tyZZ/4TKPwtj78NQg4NXczkXnV+2bEdUVA8FwYIYdcTsJCv0HaU/GmC9R6u+SbDRzi3JeIqlpOSvkhPpRaU3dL1xVtS7IPcMnsSASUfpS/jNi+8+ILs7jEWnWzK41Fn7JvWCkJw5CsCHlbOM70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717278323; c=relaxed/simple;
	bh=ATP7aHGP9fzfqKvc4ZMe1ohzPNvMaAYj+L6T61XG+tQ=;
	h=To:Subject:From:Message-Id:Date; b=kh172E3mAkui3gmqopAKnOpbtfFTmSqOiGMOTjZsOsiyJyVA8n77V89y+XF9PQO/pItkoS3Aj5+5LVsMa8duIG4gdPvmcH1Idj27f3LW0cLSgnjgoQU/COcwDKFIx4IIF4yFMv/DgrU8QkJX7SIEe1+STkZ4u9+C0qRdEfTZl3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxkdjbbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxkdjbbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2CABC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717278322;
	bh=ATP7aHGP9fzfqKvc4ZMe1ohzPNvMaAYj+L6T61XG+tQ=;
	h=To:Subject:From:Date:From;
	b=ZxkdjbbEzPZ4b2pYi2IjblS/qFJoF4agch7TNWzog4ztWPoKzl0RaNf/zPUUY8rfP
	 vTd8QJKon15tltwMJcFzpJJmpDDBJEp9No5LFMZwBZOsFE+aH4FdFjC9dpwmK3BHsD
	 daEELhwgyoVGqHWfRmThx5rZEV/NQ4LsTrYYD/QYS//E5WTPJOrSBYz3rSPo0+9xP8
	 Zd9yogS60u44dWJxK1yrT8RHfw4kISKIbU13flI1OZZ0M0o1sGZR/9ZwWVIgG00ong
	 9SyhdCUnxdL7JCxQZhIAPeZnxyntW1+3+dbEJMuy3Z6nTdLWbL6T1v04hgbQjG5r11
	 nlN/srxsxTrEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE8CC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727832279.6090.15142964491970522182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ffb8ed44aaaabeb7b23cc34d8e0bf658a1add7f123fbc6cb480e15eda2211f0
Date: Sat, 01 Jun 2024 21:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717278322
