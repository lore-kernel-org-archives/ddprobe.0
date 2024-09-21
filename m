Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FF01799B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726941354; cv=none; b=CU5D1ZHBUHwxkfHV4l5hT8lL9Sa5sW8MM9BdPnqjoCDNfd3NbHya5Psy1BzKcPU93Ob0No9isGMpQWaIxj8ce8VuDAHI+Ew24byY/NeR1Poi+6bWeCUjXUOM/akCnrfagHryl/d42628KWB7VQE/FccTlXL7PBbtOySMoZxUtNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726941354; c=relaxed/simple;
	bh=8Zb2S+aLRoaf6+m5Ifgpkjs+gISG8+SzDhyVzSwUu4Y=;
	h=To:Subject:From:Message-Id:Date; b=Y+RVtn5SvRGUpRLSeo3GXjC90wSLf3+/qt26tE5samtrBZjGI0AqRhiD7D/3OwclWDGgZLurLvz+/hm3uXj8E3qSvRadJuqGurxIqowqLLZw7viKJJ5w3e1M1xE9xPrDJjuKHxkkKit8lrGSBVQP4Yzyy0l3J3Je6BdBG/FBwoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oceUa9aP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oceUa9aP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FE9C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726941353;
	bh=8Zb2S+aLRoaf6+m5Ifgpkjs+gISG8+SzDhyVzSwUu4Y=;
	h=To:Subject:From:Date:From;
	b=oceUa9aPvQLZeBKli1ZC4Z/hTqus1eDh7ZjgurP3CSWIBgyIBqJvA7Wx5RjLAMGEK
	 pUgfXrdpd9vSTQ4ek6j/fRO5Q8Tf1c5fLy/7selcCTpa22r12xkWLF3io47qKMVY/g
	 z0aptSdpinPpEg/m8T9tSxeNWUuq8eG30STTjKcE3+rmgoB0adAupVH8QBN1rRdYGS
	 fo6cOlIQGYH2wVxobeEmtIpNvxt9lc1kVUQu/5gPXNm+OE35CVLSUNI4eQCohBO1Pw
	 DDbnmdCMhacyeHVNfY4wOwp+vf1vCxFg2BNGY+JAOCaONV9/oR/2AXuSczEbd2obG6
	 4v4K7gz3ZVa1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FA3CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694135357.17088.8612725583820310124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07110bc4b5c67897ffd31c7baaae180abe63ee64b71d6b1fd5b84e5a1f4b706
Date: Sat, 21 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726941353
