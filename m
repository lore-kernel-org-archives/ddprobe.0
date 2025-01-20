Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E886156F3A
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737398754; cv=none; b=eojkxtnn9h0+X75U0QjL7WfW+GzYOqpOo5Jjx7rEB3+Y25FZOt0KdpPjeTSqjQ/5OF4rIfpV1aq11sNDIkSe4AeaeKpk8PD1nz2JyYj+WEWg7noCGg7SbqjE/WjUyDHOGNri5HGjnIS8Pp/4DrEUrXWHtxc6kmLwqfehrgi+NUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737398754; c=relaxed/simple;
	bh=35/eJXxhcFPq1Y0otUjbNBAKJtJ8tU0kZaCPrgOMBHM=;
	h=To:Subject:From:Message-Id:Date; b=NcKju2G3i0G3vp1nvTpdHUWEYEe/EJ8108SD9qIONnymO6JTGicHdHdRivuSFn3sB5jzsEWo4KflH5WHBUiEGswKntLRfqi9tIBBjLbxtFrWzH++JWc9akcqd5z5AURHguYVmf0hToaO3u9p2LbjUZyrhCEKm4+Ar5yAPx6z//M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXJDF0Uw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXJDF0Uw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A600FC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737398753;
	bh=35/eJXxhcFPq1Y0otUjbNBAKJtJ8tU0kZaCPrgOMBHM=;
	h=To:Subject:From:Date:From;
	b=UXJDF0Uw/IwSFG6J27I27Q0BLkUx+AaRMBDWLwtUHaoPGfJfIQs3d/3QZOklG1hrO
	 OuE+4YSxi6XkM9OkkuwsaLYYqCApnoa365FalHVJSM1tOArA7JRRy826HOBaLkCUYK
	 YBHVPnJ2dI22yBG9bidktDcB/OZZWzvBnkH/46Hz7rCMBSpx2dZJwoUwIx/7VZPdwj
	 67OpymukxGEZ3Ok2LYGlzcOsF4B7hJy+9WThZBpd669tFVv1KvxwK4SjzkjMegEtLZ
	 ODoXUa/ILtuq3tOhMixRHffbaVIqOekgzzXhZn5HRSTbmXF58ohrDb7yJfN9F0nN9o
	 NQgK8F568tGfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C3C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173739875359.3901.10337291950100707442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791eed3ac2ce9d497f1e5fbcdb362f1051d98029021a3ba803731fbc198f862e
Date: Mon, 20 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737398753
