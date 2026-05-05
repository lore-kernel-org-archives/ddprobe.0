Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD61372B45
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777976254; cv=none; b=cfCHj9oNdmU9BE4WIz3HFC9nMwpxCZE/bZSVAm+Jx2kDdbK18MYItoiz3LWcpIYOGfXpbb7JR7X13To6tHZLqAl0Ft8w9+eZQ48PmybwOaQH2MhCyprr6CgEDVuxt9WmUvhwzzDMyXuYnrAF3hX+hkax9+VjHKhJX0AYOc5A4KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777976254; c=relaxed/simple;
	bh=MdvjlEACCrv95JrAOPLTiPcYbWMRtNETrXkzhXxM/XI=;
	h=To:Subject:From:Message-Id:Date; b=hf8gxTy/cj+9FD1RGAzcOhEH2RIIPtr3XQRMx17hrB7LvdGvh8p/8Yqt9wOn/cxk/nKWJ6i05vDYJL8/nZ7lBC3vA0QbXUsHH7kCWtVcmgju1gSvg6B41DK+nU+9W393LlxUQ1A9jWKEpBHoE9ohvHAvq/uTY3w5+D8mhZum8j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wu1Itrq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wu1Itrq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA447C2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777976253;
	bh=MdvjlEACCrv95JrAOPLTiPcYbWMRtNETrXkzhXxM/XI=;
	h=To:Subject:From:Date:From;
	b=Wu1Itrq5zTnUtIZPNu1/JXyKsY6g8WfYf9/sOgugdEWKftRrM4o+nGpgrWc0Ld8+5
	 z48H4FBVFZNvWfI3iJhw9pO8a0AbEHWC09v7wwSjP0o0DlxboodSdUc01LLkoXrIW4
	 LiaBB2Dr+6PTQc0RrT54k4IMzUmbYwu1b6iEBedEMmfgZ2zdO+7epzauWHt4Ce2P+U
	 zUonF4U1EitmKx2MCcjqfOKfdbQHpDDDsgYHNE3Wn2qyYYvcjN9HeCpZhB8x4tz50i
	 yNz5M4z1EqyGkmypFJfTUCelJ7YMbJ04wGDkqeaIQmO4ZjMZjtqZlcPlBk0GE99CDd
	 eAdvN6vIq6jug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA737FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797625368.23475.3105178308294081917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a17c52da79a6beb98effe4074cf6b690dff28f10a9b07d6de29f30844de4b6b
Date: Tue, 05 May 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777976253
