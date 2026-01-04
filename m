Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0181DA60D
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767554034; cv=none; b=XTc5uBeW67C9hHK3W4pNt0vXQrnHQDBDkGWkdX/C/v3srEpSI4IsCvXeRbDpbxJDBGhptfWovJTyf/3qfXKpmCPKRIkbk49T49vleRt12936tQ90a1qDTvD9/SAai7mvAl9oiLRUNBEgRy6EBH+ThlZH7jo5ltFiPfNjUptpqVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767554034; c=relaxed/simple;
	bh=n95lZ1Xzt6IUMfZ4l1mucrbA565lThJBQq6G8meiZdA=;
	h=To:Subject:From:Message-Id:Date; b=e3DMvHAHMXQEma9/NRLYNOTr/lMkLkyNVqLx4ktY1LMVvjCGYoibkwBdxxWCTU+KijMocdvyujUGvWGD1hKhpf626L48UKhGrE2Y1e3E3BvCRdglDIpQWWnAiSKBfy00bzZfp+cZuKIC/TX+nnEXjbzyo515D0YsaHBsc4ILfy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcEm/kAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcEm/kAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75BAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767554033;
	bh=n95lZ1Xzt6IUMfZ4l1mucrbA565lThJBQq6G8meiZdA=;
	h=To:Subject:From:Date:From;
	b=jcEm/kAEyg04JVT7VZ4CC+LPR7MoKxEfiqj1gK8YuYctyE6sLKrM8v3hK8QQF2gAo
	 APePUTstbrq0EBvLJ2F6pCK1tf8LYNeA5s/7WZOp+ICemww7LgCtbG7BJLzbGFd6d1
	 gskpohvC2I+T5FY7/HoghOqumAH845IjNmGLFI9qC/p0B1JCyHw3ZK629WfRYpqMov
	 OWbqb0Nozkg704A4lDzHFMyM5akeucVm3iz9PfvLrNk+wvhc+J8lXrWZheqzqFSf0g
	 yGGnBsVP/TmItTLShuOQ68Se4GVNGmD3SmfBQb0G6oYjfO3QG8os9KgBRk73HVC5hx
	 GFCLj0Ea0XjeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91932C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755403357.27057.16401981093082141087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf2d7747e68197038f936b75cd44a9d11e31db0f043a2746681264a5546d5b7
Date: Sun, 04 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767554033
