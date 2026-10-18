Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575CB3DA7D3
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792339234; cv=none; b=Dt8nTACIiJwa3Pzb4vLrFDL+DhMndTqXdfUQvZi+aQfA8jEgVhJo50Xpth6gZ+y9OZ8YS3NoYsrceZjo1QA9ocJ9fkGs5tY2Q8ZDfBLLbWhbZoUyUft6/QMyum8syf2HRGpZLXZyoowyM2MamVTFkCWAAbs9s8Pn4czky9YQ0Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792339234; c=relaxed/simple;
	bh=qNYRl6Y5sog9o/V5wnTCHunaajZFdgRXM9f9dZMIYl0=;
	h=To:Subject:From:Message-Id:Date; b=T85A/yNXVYVeAZHXXxik2PLqzL52Bgm3WO2NmE45AxroVoyO0sFFHHIoJWRzdGCK7PfSP96weVQJhJg/YVczvn4/pDXwde5SEB14yRQEfjVUvGPpXvq1vJGE4EFy8lA8BJBafebrPurv6PZ9BFFnOC/gCNTxJYO24MXTUIz4X8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNhVSssU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNhVSssU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB11C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792339233;
	bh=qNYRl6Y5sog9o/V5wnTCHunaajZFdgRXM9f9dZMIYl0=;
	h=To:Subject:From:Date:From;
	b=tNhVSssUCX88zgu4dCSWe2FvraRq71fR+990bXouWVui0NjPQDCrcYGkt+5ISf7pk
	 gh6bio2aRc3sx77orhRSSUoHfBQIotORG5UuqsD+kxdmNzbLpNKh4dpexCeCI/3bB9
	 noknek0dA3AjEWJaF6KSu+kxV1uB9zHKpLSLUuUpxv0xCNAiJdmHnHpUizPIzhpYw4
	 t0tl6JVQ0dkce0iUXgxRYwxU4jzYmyeJ+TkVUWRpuWrmy6h/e7B+ljsG+utgXhDl9y
	 irzkQiNb5NUnMvHh4pry2amx13Ms6kZh1NatteIvYUq7XQoQFrOQNQGgIuoW3X1ov7
	 1+7Y//0Dc+7Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DCBCCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233923368.13890.1119733207049862262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19668ebb0a0741472c6f8d327b26cb5792352b1bb79356b888947f34f9d97897
Date: Sun, 18 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792339233
