Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EAA303A18
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773107694; cv=none; b=JWnfPlVU8swDwyU/Wank8x90sgONwipW0pPlYopG8j/mpQRMxz0xMkefcFRji2XE4pMmnQ0BbMM89z1fJfD71BNyYCNWz4tmm0azkmvgr054Gi6y1Ug5r2SlQIOotcpA1k4S35aOckON96Wql1nzIASNJfGmBX8i+Mx+2uMh5rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773107694; c=relaxed/simple;
	bh=l3wLnW6i5ZVW14pfVyF4cIhmOhxGoXAt2BYYFRdy4CA=;
	h=To:Subject:From:Message-Id:Date; b=dWEYxSIxGYm0svtharkviOuzvNMJvYICzvrKjI8rNP0y/BZ9x6hambopilcDI/FbuLhHgHxT1ncLCMDAWaZ19TIY7RiTVqnZ0zfX2zsnK9543b3HCudsIjOrU3C+jEE25fVZAtnWnavCkn6RrWlq0bmQzO/KzTReSTKLJW8iwfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqijY3lf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqijY3lf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2092C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773107693;
	bh=l3wLnW6i5ZVW14pfVyF4cIhmOhxGoXAt2BYYFRdy4CA=;
	h=To:Subject:From:Date:From;
	b=ZqijY3lfBl1bfM2a/przL8yt69jEUPFbFJIMDbWN8PEAAUH+34gdgEM3Hf6XQYRA7
	 UNU6b0aGTSvltAH+0UqCrbH2EuU/snQB/pJ7Y/XinPcj4AuExMhtXDsCVpbo9n2ihR
	 yN2LyOewDjq6roqV7vaKN9b0261FgMjsFF0oPU2m3/5DsJdQw1XFLA33HxkC/2qlLi
	 O3BBYck613TTapY4GnUpfgr567176SCkI7kgOsajvn+3Swk3oYXPdjDl1UpCgqzACv
	 inefnHJNOj0Q0tUrjRslMZxDTb+yZ5RYd5xKsgYiR5Gd7M0P7sGd6oJ/QBV+3BzJeP
	 I3Q4AAL7aOs+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F53FFCC9A8
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310769357.25944.8220008176526975120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f9ad8b9e6c7dd9b073a41f5cebb2422db00cef6fbda5822b54eef6e4373015
Date: Tue, 10 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773107693
