Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C0B1E1C36
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753398594; cv=none; b=bXStZPcGntXqpsxxhDYcdNjw7VSEzjEyZaKJNwigzOtc8Zn7Fvn5CBQc+w/pwsNj/4jmjlJflXiMCydGs7550y/5f5TdwWXOpREQHHupYmtAOjZndinlMUG5ZEfHBEM8FWr9+tKzyR25/4QYHRCL9IMsZI7YF1kiikVuJShVhvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753398594; c=relaxed/simple;
	bh=Ks/wmG04D/lJg4BEE7r9+ASL30ZtqARJ5g4Hq7bJdSQ=;
	h=To:Subject:From:Message-Id:Date; b=GBAEmgdHtcUTmmuJ2Fbuk6OZb+RWFLyHlIDA8Tmh4VThKjrsVrZGOHp3hpBLaQz3oiPTrar5vmq8R01Z9TEu5A6sZK/L4X+GCsfcJvm7WhELOGtobMPHjjlvC0DBa8Q2gzLOQF6UqBGL4ILQuTWzdxtJXmR1N3SLdmM/m1hvUF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiiRe8sG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiiRe8sG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F097C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753398593;
	bh=Ks/wmG04D/lJg4BEE7r9+ASL30ZtqARJ5g4Hq7bJdSQ=;
	h=To:Subject:From:Date:From;
	b=eiiRe8sGspKzRVDd2nGzLrJF7jyGLiIquvS0keHPpm/rpYCv3v8emzzi50tSA4sfG
	 ZK6kcf7xLFfgzWNW7cB7e2WkHQvs0fVMn9gfUpJdILCzY+ULwsMLSVh5CBGe9mwYox
	 VtEQ78yx9mogbpPC7ZHKQuSfcPavzJhGXKDhJcc+rqU5ZxmeKFNz2a20REqZWT8HUG
	 oWY6DKYFSvjQVtXgjATszpdAN66R3zBCtNUyytcvL/ZdlfZ1nFj+naHjfuiDTaDXqE
	 42+glOM1T8XtFQ28CYPJsEDMAS762i9C3fFcp9g/XE3i2co5wBj2xKv52Vm97ymefc
	 PvLfm3juI88yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90218C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339859358.20993.6694606681659514999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c3913ac1c400d3af5747f170fa7e66b4c3aba94ca0ae9fd58592c345a2066bc
Date: Thu, 24 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753398593
