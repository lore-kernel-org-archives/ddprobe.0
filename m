Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E1A1714B2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746356394; cv=none; b=klnzHXpFld4Q4VcG9h0Qy99326YJfpd0a8kfDARr0IgqqnEdjJbKKxeh9usxhjDNUWJrIpP8nYPT7jlzmuCN1x0DbFoNrPo705gXGO3BCg7s1UWnl20oLZWqCss7DUM4zooCWN0bn9U95OY2UCt+SS91ecmw6/7Qu660O8m3nL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746356394; c=relaxed/simple;
	bh=dMryfcjIN3M8Nsm2XSyDbDeBe5KQs5I/rLCoWg75auw=;
	h=To:Subject:From:Message-Id:Date; b=PzXMzi+nw1GelHF3zOGxJi4MkWBXhl3YAZ6uwab3/8lTJFs1LLwDN8jYpTBQBw92Lae4sTriZJZfG0gTfp4A68lSPlvImcgdQtcPhru2ltZX7e/Dyl0Zk7wu0QAnEdfsWz36Y1xMA9IuDRe7zg/4uJw7fjEMz81UVZnqOjqayNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2Iu4lJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2Iu4lJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A503EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746356393;
	bh=dMryfcjIN3M8Nsm2XSyDbDeBe5KQs5I/rLCoWg75auw=;
	h=To:Subject:From:Date:From;
	b=G2Iu4lJkxgtJjCjfXQ3WsvdN8pVf8YRdqDISdI5FuTNEDDxxw/2PHZNvINzngYzML
	 6rlkOBhdupvSSx6xINBLzdbk72C6M0QQyc4wwcAvRWuEunUZgiAvGs5FOEUCWNXVLn
	 /4q4mQIwUs7lSnYPQiG6/4xvaAU+j3Fw/B2nDuwuCmzGa2c/mf8XLv41xliMVLX9Pe
	 m8kQ3ozKnR0ENmE2PpJhl7t+7fUi1j2raAw1YhvXz4p77RKD779mym4V1kdF85Y/74
	 7otfFYbiK/srnyc/KQ5FiYiM6YMTiPxhxVBd90NikMOq3+tC14hgp9R2vsJ8inzUp3
	 Moyog0LrqTaYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942ABC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635639357.30476.17439769185432623985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882a557e7b8a292bab4a56f480fe876283fa60594fb76d82789385331b8cf669
Date: Sun, 04 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746356393
