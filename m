Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF102573
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705541296; cv=none; b=TzRbSqZV3TIj5J6iptzdk3yU5tq1zVrPROZ70oLK2ZTn2teMlGeOHhE5dwsVHe+3DTLP19L218AIW4RKo8et3J/76jQcX6jAXBEdJ3+PoB/6vzq8Epsw9GyW4PIk+T9dcFN9UuhmztJN8sajUr8FNIb4Emkn5kEpo1wkPttjjnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705541296; c=relaxed/simple;
	bh=P04fTApSw/hs41jDqGZYbNJEuYROZTZI+in4ID+ALuY=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=XAfpv8U5r+Q7EkMkAiHgvZ4YOrOtpFaBg97l0TMtJmCJguB+af0rpH4mVhQNlYPZj/84YrIAuSGhPVlc3CpWVDk4XWZRGeGtWDt/R4sWrJEGxsM2539ctyQpkg/Sni5Zg6iBrmgdhyLntw1WthAeqndM/U4HCm887Wd6pT1XgD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnC4CIu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnC4CIu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 732F3C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705541296;
	bh=P04fTApSw/hs41jDqGZYbNJEuYROZTZI+in4ID+ALuY=;
	h=To:Subject:From:Date:From;
	b=VnC4CIu8KEkcNjQha4W+mhFA6JltNDjsG+CzTbgeN/EaB/xfCE1R7ULpZPl7i2tgr
	 XjdNZLROQcMwKKhkycftBW8bVHXF2X4Jpc8Q5CPAM+azB/XABSgB/Z6x54hW0iDDFv
	 BW4UVS8i/KQg0aR1Fy7gou0Aacz+ryKrPKVFcrNV3cAR5Bo68ke4iK16TbYDW3zFZa
	 DonXQb8B/ZTfmWWAQHF2v6iMtpZOaiFg4uMzYru1CA4NKRDAQMO7mRccOeKJnRx5sy
	 Q/k3lQmqsp4XTDR7uLW7uZLQCb17WLYnbhekE1UW6WKRyfnlxOXvSvhNnPlq1kY2zo
	 55c0Gys9NP7fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA30C4725D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170554129636.25673.7603166934663001130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf970471780758dcdc91558de941a2aed42c23c01eb962c94fa6eb0b9a19b4b9
Date: Thu, 18 Jan 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705541296
