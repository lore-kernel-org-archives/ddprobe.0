Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270C519DF62
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755904194; cv=none; b=iTQfcBxkSPzb1e0mUudS7WjEsN4tjpLKcIZGr07U/m9btJ2/t5bA7i1dNUKnyhJ6pdIxENwtmmKib2LbcTFtjdxe3bdezkLcicNI8x397E5inU55pEofatuq7CQ2oF/iX3DzZmgVbagN1AhBetIogImCsz0O81Y1FLROZzC70PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755904194; c=relaxed/simple;
	bh=lCG7PApr32O5ftWlCsumqF02PWdfueXmwvkXC4b6pgk=;
	h=To:Subject:From:Message-Id:Date; b=uVsdbY2eTWb4Ml7jN9bmAVnsGEzWKYWWb5w2WSHrGnBgDV0wrjCygNSeLBczr7SXtZJZ9pOWLLeQesU1xNDCV9jsK8L99V6hs/htVXBe+Bpu653Gi+GfycBTCAX/g6zmM/Ou8ZD7B9DQq/FZ5TLnogOJWAIX6VdA1v5goTVmcPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/3qxPYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/3qxPYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A308CC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755904193;
	bh=lCG7PApr32O5ftWlCsumqF02PWdfueXmwvkXC4b6pgk=;
	h=To:Subject:From:Date:From;
	b=P/3qxPYRxEN+2LtBGQ1E1F4SOgGXlnw3cLDQBOdo2HxMJhD2Xe8MqRq7qbJjnwyLx
	 o/vLi6xvHTpVV/cbXoBpYSmsjScvAZyxn/jVmLyv+/4Avttkg3ZexdxrVfqDR9KJIo
	 Xe9NLO+5jbW1/w4KpXzMhM0EYIFro+o5j/GUiUeiquPcj1KVU7k7RtBRbNWOJSVSJv
	 ndOQvRoex9MZWpYVMf5y08EGrzLwJtQ6y3jqBJI36JReMgjoNSsqJiNEO+kyX41pPg
	 mFUYnukgVfzEi6eR4XnNUx/AC8al8TWxJdhywnGtr93UH1t4s6pyWeNkmbO5WGk7F1
	 b43uFuKRVexQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E5BCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590419357.18064.13560795409778862150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a307d99a84094d9d8a27e2a78219e78dcd1bdcdfff44beef5ec3e335a0a6b449
Date: Fri, 22 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755904193
