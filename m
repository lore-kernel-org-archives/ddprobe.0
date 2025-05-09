Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131D428D82A
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746783597; cv=none; b=PrpIEN61slTgVw1eW2hmSaLHCUmbyOew3A+kyMS8S/Td7TQMrzSiBBuCUTMVITEssbG3EBDquDcr7uMvglW2T+3ldjeCuIq2yN0qxsunkrKCLuUgGXcOJcsw+b233hqrM5dFybxIZ/YQoW9LxqyOutkagxhoWL2T8hCRzHB/A+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746783597; c=relaxed/simple;
	bh=RZCKcgsFS+RCD+flcJdi9SqsfcU4bbQ3uf39hcAkhIY=;
	h=To:Subject:From:Message-Id:Date; b=lqVxvrrvUUBhq+sf+1+gdxaGRBI4xNTwPkM7fp7OwOWveBGWcQ30zTCh+Z+oFffIYQaSXR330qyIsKQzStbSndQm9+Wwqtx/nFXpcvT/HGKadfOWvAkF/4u+fKPjweIU4qt+BhE7djUlXniyY9BFHMiIXluuG6cLL/YCV5gUPNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uwi/F8ol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uwi/F8ol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34FFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746783593;
	bh=RZCKcgsFS+RCD+flcJdi9SqsfcU4bbQ3uf39hcAkhIY=;
	h=To:Subject:From:Date:From;
	b=Uwi/F8ol4KrgYmkGDpWEx2DZV3Xhp13iw15frR6+lDUaCqOBYyUaDmXtP9d8d7EZM
	 z25O46GOwf4XRSVWfLPyVN8hC5pemE4pmWJkriUcSH50MtGz7kL4tzX4e+ze/z6QtZ
	 ySN24cJzIjlgj6L+zg6NQeNzLvbE8100LxjYp/3tWyZPoOn+GL+SVKIJxuVAqE3Qo4
	 SUUwgcns5o8IlB0TO0fJ0bJfAMUzAwfGgsQNalHqoKNOr7YHCkIpS/3T58cvbDB30u
	 RuOwFBxwN/alX2suwm8nF3Tfln9Kf/Hbi2UuUmMlaG/OrGKDmK/1qE2/Yu41KhulaK
	 wGEQfeR0NWR/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90559C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678359358.17931.9831446278822458057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222e5367ce6151606c7d47a1b4d5feda9ff69d9e36033446042fd06ea074ab22
Date: Fri, 09 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746783593
