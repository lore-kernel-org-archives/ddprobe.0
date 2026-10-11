Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9B03A759D
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791759034; cv=none; b=PGTvKNo753W28JRLSPDAM48mvu+ICvnCqFtoKzA/zg1Z5P/Jzf0WvyxoQn6H+9ULuLopGzWBYh/6QzfU1ZvojnqPrOoRVODf03erOhQpDxCpuzAp0irI8eUKbqe2FXl2EzdsrL10NGqfLelmUFtfcjD7ZobWjhtmnaO4iQQcKm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791759034; c=relaxed/simple;
	bh=rFFUr1X1dLOMsS7B9HWmViE41Qbr6h7zwEBJtzJPpXw=;
	h=To:Subject:From:Message-Id:Date; b=dvajoHrcv7s3MUAB22qkINfO4rbZJOzSNcuGDSI2QF9/Ci/RMR5hg/NToE9T1EqK8rEDAh1X6WYvk5tMOVsqMZ5W6kgSpvnoFNhET8vN706H4kPwZvhacdp0rJUKlxgHbiVSnvotbZlcMe8NVmNRsVHquhtHa3f4mJRs+u5hKgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0NB+Dhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0NB+Dhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37FAC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791759033;
	bh=rFFUr1X1dLOMsS7B9HWmViE41Qbr6h7zwEBJtzJPpXw=;
	h=To:Subject:From:Date:From;
	b=g0NB+DhlNoyML2jEyBZEBOK25yYvKKbEeIfKKPDvahV54z3nGvK0dnST8mIbZm7Ra
	 uuBSljw80lpf8KVxSSEp1JA4LAMNgc8j8JCxSx4hlM/AmhTJqLKIzgMQtNrhPN5yXg
	 0vBH95IhZjsGih8xVQFLEHmBez2C7VPDR5mrLAOFmQeHIZQOTcVJoyk2tCMFEHQ9H0
	 To34CDigJVqOULADEqaSSP1ax6EMgAJVBu4ZMVsgSxQEZ7xd1qbVZAB3HpkHteyp2y
	 DxhOWDCGtOA0BDFFqmIOfdVvyxntY1PmY+Ow8NIR00YDT/I0YwzGzhVjruzntBK0Ae
	 lJqYB63WQAnrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6C0CA9ECF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175903369.3860.5902907012677573855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8643377026f40bb5b177fadc5528262c7205c3f3c9ac90250e809ac5280cb484
Date: Sun, 11 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791759033
