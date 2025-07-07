Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD7A291C28
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751887194; cv=none; b=m1/DIHP/LUskWQFxk1NdtmJRmfT6CcZ4RMi5zauxTTXLZ8YMmV9fP9/8AEeozoAouL7Uk8DudqGpiTHJaq1ZAa7NWYpC5fB7jEwn7IIGB2uC/uGDRMbFmmXDeKnuJO3R030hjgpUY9CSdp9UAEYX024eRvGK6OZdk6d5q7Io86E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751887194; c=relaxed/simple;
	bh=7lgxrZXlPzCgjz2wv91OlqUUR6Cw6oo1GGPc7ECg6D8=;
	h=To:Subject:From:Message-Id:Date; b=hnCF+ef37y2Jm6rIuyDocb132btUHbJ53524Oshyb/5wRqRq/y6DMKp2BBaRNvhlX2JAEvKDD6I1+oNVXvFK9kSNDhR5wxXC3aLBeJQRb8Y7u4orP51y5aLZjIqFpu/GFLS9kO6boyXdfy0WI4Hu8udp3T2ydTvYwKTfcV5n1EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nl6/GYwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nl6/GYwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F214C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751887193;
	bh=7lgxrZXlPzCgjz2wv91OlqUUR6Cw6oo1GGPc7ECg6D8=;
	h=To:Subject:From:Date:From;
	b=Nl6/GYwRs/h+qMj9VvkMDiRJQvDdd0C7YxyzhTtaVmpbNuMIO7wzNcn3munvDzk8z
	 xqkW7Yjmw3HY6smXg+Z2B41EIyObnumandB83zTepZ6um4Awc7I6HjZCn0SohfosVI
	 1MOPNO/AkhEL1BHzmOTxtCEnTXmTv+lLplTZlYXmsqe1PvBsmPWBC+sOUW/zj80F2/
	 C01JxMT8DOGQsePOzxAufTdW7GO8E7AmKqlhXzTwBwgWXCp1twlNY+0hUx369H26Pz
	 +5ivPeEihTghibLycEHkDiLZve0A3BIyspP+LAAzWhD+oWKZmjUcSip2BLPF+IUJTh
	 y//s4pklhFmAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E15CC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188719357.24548.11461532666286327339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ba6a94bd41444f0dd7828ab8b2ef4902c8d8b2550cbbde7d7a75c2efe08e09
Date: Mon, 07 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751887193
