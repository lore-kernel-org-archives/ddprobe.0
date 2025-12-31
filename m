Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEE6139D
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767140634; cv=none; b=ubU1qeDkGez0VDvVw6nGpbMNhTi4D1HUinIfe7M0WAqJZKJWGtIeKfFW/flAHzDiBgZAHr8amLjma/yJ41cfgdEubQIjPmGLCyaw4d4Ckdf+C647biHvNzXYA4DtbwoFlNhCGWo7hlrOrcw+c5H8B84yzT+vzkEl41FHnfVRPYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767140634; c=relaxed/simple;
	bh=MRe2+w/gdKtEMJLfkZpHWV6iv6YjSRNYWicEx5i8uBo=;
	h=To:Subject:From:Message-Id:Date; b=UwpjOjh13e7PhcCx2wSYuaNqEIdn+Hn2jCPqfR8Be0kOp1UHw5XO+LShWfaOs7mbC9YL4kF6Zp5mlBXjXuZgJGiO4XWRW2TzHDbFjUEyEo1Qh/cpIyeOKH4rELpRakYpCAI9GQdLlkFRMpmxTaZG9M65kDRygjT/5DYFiwnHeQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucO5uEHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucO5uEHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B85C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767140633;
	bh=MRe2+w/gdKtEMJLfkZpHWV6iv6YjSRNYWicEx5i8uBo=;
	h=To:Subject:From:Date:From;
	b=ucO5uEHsK35JEIQQsfWexBABcQXrCV0khoPmcO7ej5M3BqB1mzz8k9Hv4Vm0ofr2B
	 idHoUwXdwACpQwY7Z3LGuJDfjpYrwboIZ883XwhotZlCEsRxsbQU11mmGg0sIeoSVl
	 7g+fShb7kOZXP1Os6ZdiyjTdJVOpcI7Gw/ed9UE4TqHyBVov+vzvEcTgjiGaCzSieI
	 fl48dxDU1Vnz1nJtBLmwVYIHcfT8C0HjBHSW5CgsDIgrNmHFPzifDowFOxNLjZe0sj
	 Yf1qc5uE+4iD7AxDSxhWeSW1/Bx15SLGjNmsLl5bhqEZp9DgZTsySvVTwslRZgr9NZ
	 E+Rm31xbWe4QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939F2EE57CB
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714063358.1312.7983469256929144759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3746903f2feda03dea05f1235ce7791ef5d0efc606268437d1476043d9663ac3
Date: Wed, 31 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767140633
