Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D1F1DDC3B
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741895334; cv=none; b=TxR7KUnyJZsFieom6eDbHOXC/adX8U14HWKu75OY52gCgjcczST0VfJYo2j06/FG+tRVy9rVCCAb/Dqxu97ajMzNP7ydlimYdF86AWVuBtWlaU3u33zrikemNiHvrU75d2IZ2upfzjLyqhOsHFeL9cukdXWLgvRbPFfidP0R+34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741895334; c=relaxed/simple;
	bh=MRGkI+1yDJDJH1kMFx/voB1h7d+mJnANIaHouzwVqfg=;
	h=To:Subject:From:Message-Id:Date; b=DnxYkgHuNYZ7Vp7mUYMEzuwP6qPfQzh662zIFGIv7BWHoVzuUrX3Yhwjffh4AIrUGUsxDZzMJMqUSIwI+Jpu+tSr8+CeZNVHvlmABJQFiSo2kfnm8PpTFcDfAv0jz/K6beww7Ri+WkWDljxNqK95VGdPyQUlXbsA7ek/3m6GhAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0oa/l0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0oa/l0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D238C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741895333;
	bh=MRGkI+1yDJDJH1kMFx/voB1h7d+mJnANIaHouzwVqfg=;
	h=To:Subject:From:Date:From;
	b=Q0oa/l0OsvjsmKTB8W0h77SqtwHb00phJO8FRh8bbMzx22YY67m3jE2p0WOIJKkuN
	 7Tsw5KJR913sNaWPoVcHiumAX1wu6GVgzvmwkTSwZ+umwfoB42MPHaAmdlmEHSd9Y/
	 5jIevly+TPLDNTVmYFXogXEVs42YTnXrco/dg18RZbn90lxehRJ9c9cqE1M/4vjNkz
	 jlCWwUEzr84Pa05mJ1oGTUr6FB5WR+w4O3zVBOfgj0RNVVqv/O5h+iNL2Ai6f1usfY
	 3WqGVcPB0fQXAwFkL3NZjeylB96iEhkqsURCVmSby0bCv9muAkzfIOmeTmKT1RsCdJ
	 hKNNlH6gd0OHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E944C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174189533357.3159.8222817669580451645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc02649d8572257fa5de58b5170b17d56e9a52aa9a7f92f6fe7d8dfd8c47ec3
Date: Thu, 13 Mar 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741895333
