Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FA04F881
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767836034; cv=none; b=oDO6qSYKP5hjRmp1mH+u/bB6eLQZC7gB9gzkZZKpzy7PYsusaMRXb+5WIyLRSuimKurXwgiEIJyW8TYr+bm/bTvG76uEUWdrstpnGZvLzW553o89Pr43y2wwBSoRYaPpFcyoAz6bJT52adJHG9DUnva4k+PQXcYOaLUzgeAAd+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767836034; c=relaxed/simple;
	bh=WGnNiS4YQnluw3zS3lxTIUYTewfg4S2m59gMwEgOOGM=;
	h=To:Subject:From:Message-Id:Date; b=RxQ7iAA7Y2MOik637mPgUoMw3jrCoJuuD7Ry6TYNvwqpx0CPOOkX4EwL00gNm5oBa5WwqtNIPeYUYY4Pa0Va+DW4giDfFC+BOXGqkqNXU+MphKVOHeM62o3bOiWLIacCQ6sO8w8a/c9S5581lliKz7Lwfl2SLhOYMgyie9Gy4I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PA+oc641; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PA+oc641"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F135C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767836033;
	bh=WGnNiS4YQnluw3zS3lxTIUYTewfg4S2m59gMwEgOOGM=;
	h=To:Subject:From:Date:From;
	b=PA+oc641yG5LJzqUeKjh/HsLalDkyXC3IiZv1bY+q31MZGimPPURrFuuM5zib9ypf
	 mn1d2vAyXAzc2wa3spKKJkTexe1SMgITmwlqTZ93HmFyDFs8a0kKXioqDMCofj2dp/
	 LWRbG1IgqFhfl3+yVkmV6eZ5ZOij5gHxH6ZT/iI/KJdQwy3LxMo4PGaq13GHvYid6L
	 QCrZ1JOtIZSOgUnK6Io3GUYKEVA8CS5w6mWPc6tEKH8RhWB0NMY7yA6vCf6yYuBFrS
	 UZmnTxG0hY9AQLJfbbW2Nh3bu+/SKiC1yxbNIJPfp8YF7Tw9JZuYe5+BFY4qaM3c/2
	 M0IGmzEhZggWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB0D14885
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783603357.24291.6005431338738120961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eaf1a13f1df5e91ea522969935a142b520e9022ff5b0af5142da1b9a8c7a60e
Date: Thu, 08 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767836033
