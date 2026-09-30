Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3092EBDE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790769034; cv=none; b=DLP1x+ydFdhZ6Ym0YHQZA6KCb6gZIoFcyYN1JTaRRnoq26PKParhfLTOEZXig04niTXyZHM6cBtEWzixirAbAJbI4FOWgfnraJr/Lou9ZmyzKAu8E1+wwzX+gqDA80PBOwwMz2JnsintYUAAp6pSs+zNw8Sj2cYzcoSPSPFaJ6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790769034; c=relaxed/simple;
	bh=ZnPs48ItS75Cl3G2mXuuWkyOH4DLe50uMji2id8cMiU=;
	h=To:Subject:From:Message-Id:Date; b=eCHsepux+i8b+0DfDo0u3UsyHOgai0cWpqhwecYux8ewMt6GsuKlyRpfke86dtE6NjGPHgJpytqnDZ9+iXP+zpicq1iQSqNfoiqBaNsh0DS3L35xfnpy0zkxxY9UtvjxcJpFjXc/jl6YqLHgA59x0ClS/SBuz8xDyPPYJEmXawg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLUfMErO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLUfMErO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D772CC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790769033;
	bh=ZnPs48ItS75Cl3G2mXuuWkyOH4DLe50uMji2id8cMiU=;
	h=To:Subject:From:Date:From;
	b=LLUfMErOYkv8cF5c/TV7e9Syf0xLOtAc/jXAf3nZ5puRDWHflOANDjR65PgspXVgY
	 1irdYG+Wj5dLaK9HIVLQ46f5OkuHVyFL3fYMMkxie6P3yfjc3wxvgvx5JOLrneuk5y
	 tlMrJ418a+I/+UcWlNevcNdbtzPcNWsH7WE3vfEwGNVg2i0tuPJdbOh92vej77VmEJ
	 DhLuzNmpKSiONKTm3zgd0uI7Rq5XsPcheP541lWV4LjzGIEl0X/iL50HjIfAeGT+S6
	 NovbM63sH1o9YrDD1b+uzhqQ1GBh/55BYSgFDgycNxKnzLmbXPswds9CsI57lkwed/
	 mwNtFxjvJDPlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE949CA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076903368.14670.9322100778182425691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f952798dc557d6bc4cfb654e57c917efa5f40c883346f71b5d52fad29339dda1
Date: Wed, 30 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790769033
