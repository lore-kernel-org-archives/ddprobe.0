Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F38C37F8AF
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778530834; cv=none; b=H8nAs17oFjuOfIG3MfIGB8CxTI5t8AoUfbfoUU/705BfRUOhh3K1Wjp3bke3fmBU9WEt4VYRnKY1UU5m6+0iFxXhOQmfxF1BuR1cvG957XNNe3rnP1veSi3/JUnzOfwbM+UJHsm7rnEL9OdUC15MrdaLbP8s7zs11/l//pbuMus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778530834; c=relaxed/simple;
	bh=Fk5Vaxi6G+KY83dChgsutg5Wx9JBiayPc4sr9tt7IRs=;
	h=To:Subject:From:Message-Id:Date; b=ehm6bJqD71OdX6FF9cMthn46XCQo2k4/jgQqGsGA9oIzj6Gf6J85XVJ/DU0vlhE1j/zNmyro2a8dVL9y+TAI/WNVJ3Zne5KTsXwDwzOMGVUYqmoKF0blpEM7cK5b8qNFTrAnVEu3342MXEc6TTx0tWY2vIaU3GgniO30ojuLmc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R75vpg/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R75vpg/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0C2C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778530833;
	bh=Fk5Vaxi6G+KY83dChgsutg5Wx9JBiayPc4sr9tt7IRs=;
	h=To:Subject:From:Date:From;
	b=R75vpg/JwKbtM64139vB2G+3+cZYIeG8lk4fiMI/FBv3cMvidJ5zrlRVwwN+dRA4I
	 6fyZKnOFzZRg24RyWfjCaCoNPeTngx6kD0zN+ebH0dfOlg6LrFxlxfzI+8skfPH/+Y
	 5lzk9cIK5vI/7rZmXW0HtjeACOYOrH6uHOrCBMhNQkFY5FQIsZqoRdIj3d7gQkj9+S
	 zzuPj6YbMCj/oit8s94O9akZU0zu0+KoJtI1+AHKyf+D+nT449lweu3L3vpinnwABf
	 dMaJOoWYYesst8/jQXUFhmBoTnmXVkvgmwK7Vm5LS4tUAksfBgxXVN7tUs4FBqPLNo
	 swLdzAkdgZvjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB671CD484E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853083369.9829.833821960015913231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f61579a43e0f6be676b6b39e5d52f41f5b8d4253925f6e2eaa4e5a1425363a
Date: Mon, 11 May 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778530833
