Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DC538DE1
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760746793; cv=none; b=qWWA4YenFKzpj8diyJlFH2gfgDcUvWbK+b6+BD1zWA04MmCwomkkm5tpGAhSq9j92etdot4ujWSWEKuPWMatmK7Smlhcczmw83wxjFW1KuXY9dJafynpadPCpTMce57N9V2oY6oR6WvEXuGPGUNgHFZ4VGdQ1ErU1Zc/v6TTsZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760746793; c=relaxed/simple;
	bh=X4xOj+XwrtSttioTyx3mXZR3Cd09T5U3wa0vfDwloK0=;
	h=To:Subject:From:Message-Id:Date; b=MbWcLjx9pM3Q86ub5+JxKd3evwLbKkQ1LLkXoyHFU+pteUm+CdiOjJoQ2dRcoc0qE6dcXx5XFtDxvFqk+CGyaJcY2OKhrKY11lKhPFIUXlDaL1X71LEaOkrpyb0gxmTVUI3t4IRsIydjZ60w+tLoi7djoa4ZQ2zTwNpjh9gbcWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqnzPdF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqnzPdF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83C8C4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760746793;
	bh=X4xOj+XwrtSttioTyx3mXZR3Cd09T5U3wa0vfDwloK0=;
	h=To:Subject:From:Date:From;
	b=eqnzPdF4ZNnZx/P3e3kRYIMYtrY8BL4rWkqzoX9QdDIHroYQ1EKwF/n3ACah68iD0
	 JO2xZdCXaW2TBdc24eHyek9aWl/ZfqJ3JWx5zWedhdy+ZBGbiC1awK7+NmZ0AHXdVq
	 vjgeWTthGB3Gxu4rniPGTVYuHDSGMnqcaWB7NC5fwV3eJo+4Awl6btvJa75Cn7oGGl
	 hInRyFSOgC+YoGdjgP6rFmJSgz5CR0803C9iN5L0y2mUJZroskccq32aVwQq0LGTZt
	 Pr51+mJjWom01twxTd7ggyJ40cP6paSn23DqfAqcKqLxtez4KEioleVf9zy8u46gra
	 b5KnT8obbPf/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AFCCCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074679359.2136.4705614889148408411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03345aa412c0fe5dc8b83db5af18424f8538914788a983fe57699a0a35c2dd6
Date: Sat, 18 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760746793
