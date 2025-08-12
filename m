Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1514B2ED160
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754996995; cv=none; b=U5eI3g54uJb50zTGqcQGgQfgXKMt9L5ifGDIDdhM+piZm5gtGCXW5DbTIkhx2yoznv2J2gZirt6ESjmEiWqy88nftcJW1e5+WHUjBJZ6HlfF8rhu0gIt0PTd9NPg9qBcWbachALJ2X6w4zE/nmvf9PLOY4NiJQoE63ihXRoIXzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754996995; c=relaxed/simple;
	bh=UnEjppsPCdP0DIYqh+wCkysTQCK1qem5G3o0X+o80+A=;
	h=To:Subject:From:Message-Id:Date; b=IKHUkOggkdIk70e9faZwn1nXEhLslgzgP9LNGo0ggaXTrhaP98V0Qm1z+0mXDS4GffH0fxPdDifcrgr3AlV+DysBnmv7RUF8OESJDEqeLL6NsMTHnWLnT+eN/8PLdgHTuKyU7wqI/Xw0doJvkvtm6idyxpKaJFnuV4z1l90t6lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XP2kkqA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XP2kkqA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2129C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754996993;
	bh=UnEjppsPCdP0DIYqh+wCkysTQCK1qem5G3o0X+o80+A=;
	h=To:Subject:From:Date:From;
	b=XP2kkqA4JD8I+BwJ3ST5zE04XmmOLI/GCDT8pjHVgb8N1R05Z05wF/+vyu25I/Pzn
	 ZmcfqGBj9y9YNMCIHRLV3QgP+2evTwNZwo8P9BgTEPTjJlKIOkYZ/MgMHCOjFni9/1
	 7dEBsVp/Kv+p9VL2rsdVMkjDSkSa5AmkY4VTU3eu6xZxrEYz0n8iVoyTjUg9ad0eSA
	 JR0jfSv3N4P37JB8sIloZTDcqQ5+riBTx+dVz4lGyjYVjJyk4UrUok9L34zh58HP5I
	 PTdS47+xQXBUEKbT86e1CTU5Jfyyv54PEEeDbh/V16+RSmvZPfA2WCttrxPl4lewYF
	 YrAGtWucuzhqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC67C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499699357.32488.15176477381982922070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 748ed93b44c8e6886219ad9699d9d5e8f76c4c42089d58e5e579194276a1fc0e
Date: Tue, 12 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754996993
