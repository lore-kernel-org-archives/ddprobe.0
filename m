Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A18CB67A
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 01:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717551983; cv=none; b=aynlbAN7BunftbYvmFIikpplSSpHcu44ZBqJKsY2WHOG6RhxchJuXmnRf9faXphUPCv3aw96EPVUFlFMLqDelxR8jkuHpSXz+XsWpGG9GgVWUKSGCaF/eTTERXNz0bIBG4I1Heuh4dNn9sH3MHhltgmVtGISZre3kYbLYQkDg/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717551983; c=relaxed/simple;
	bh=6aX4yQ66OOlz6Mm+njF/hV2fT4T7ECNMbbxSbcR6N9Y=;
	h=To:Subject:From:Message-Id:Date; b=BpberU37c8zPVB0aPzITMcVU/UaAvDvrkIgCKTWT2QN+MxxhTTLK8mhvhlLlNRgH1TURU03p1x0W5ibDYasb5zu7UCsK9vdSf6/Itgd6xp8SoBgv4kofwtA5uHnm6H6nYze0277LwaoYqS2hVq9zW4e1p6I+O9Z6W39jAlQoZww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsqYywRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsqYywRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E96C5C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 01:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717551982;
	bh=6aX4yQ66OOlz6Mm+njF/hV2fT4T7ECNMbbxSbcR6N9Y=;
	h=To:Subject:From:Date:From;
	b=QsqYywRaEAReHR7GByVFw2XWFW5BzGiLGOOZnJKdzM7j5ExhYpAA/mRrsqNtfpSQd
	 MhvTU3ntYUYh8CuS9A7InJjt/GBBySNB9vSFoYC0oRe67gQIASyjKP4vHLRY+tr9t2
	 qq03hGetxCxn958oF8QxEkSzg2JHHVqb4RvKo1rpMtQLuPtv/hoo99KM6nmcB+vM9w
	 bctqrVYp//0rjUQWpQbb3C4d+NyX6iH9MlHNLenQ7pjscBijR3TEbkS5Fmiu/ZMNNf
	 SDZyWatNK6Ij1HmhWybA0SUwVjposrA4hmUnnCPca4T9XqbH7MUDkxCFt6UhtrUHvD
	 5DNpYv8gFjtVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1CBC25B78
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 01:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171755198281.4096.9932869387619871231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684f9047fc6612fdd13c6b909f9b66231b83842fd334c012bcf7d6bc74ed43ef
Date: Wed, 05 Jun 2024 01:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717551982
