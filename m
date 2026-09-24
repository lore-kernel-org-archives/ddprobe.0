Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703F62931FB
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790222434; cv=none; b=GS+AZkddhxHxvW+OCClF8GUJaYuWWpmJ1J714P3/itcbMjZ33RrhXR2IJdRDorBfLLWCYJosBDfrK1b0SqPz7zAsZ4s3yx0e+0HxOFvRQXNRSGIxucgNCK8ooNkymEJdmM3nJkYr1aFOmcwefHnqR29AmYmvlDXJb3sAZ2u/ZKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790222434; c=relaxed/simple;
	bh=nMjJJ9IPicli3N+YBhygbJr1OKPNUkKw6sKl+uk1cd8=;
	h=To:Subject:From:Message-Id:Date; b=GmvpTiMm4srhELSE110MSOGSFSRFKj0tNhtiZvr7I30FUbN8K9xlrOBDUT+D+znjhlSWk1lcPb5em3NOzM4MAd+uYlgsXW67LOJ2FwHBlKKe9WU6Mihk8GeH6CAqf9iXxTUIt21kfG2mCn9hOhjerd1HSeIKzttbi6KYmeZt8lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXLSqtBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXLSqtBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B46C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790222433;
	bh=nMjJJ9IPicli3N+YBhygbJr1OKPNUkKw6sKl+uk1cd8=;
	h=To:Subject:From:Date:From;
	b=pXLSqtBBVJmTdguZiKpTWFxHr9ErSrBP11N/P/ycCVGAZy1OYB69F3zf0TkE7h2lN
	 ErcVoY1pBXQrlIl1RV6GIckvQjWj6klWmXIkRnCPhsqLQZSovDwws0E/6vW6SyGDIv
	 l7AipZhweiVX590xNNlw2Z5dlq7CPIHLkc9sTcZwSkjQLS44aSvWlDsZxmJ2NKYLcl
	 3H23Bwss1STjGergaTxIeO1O+3d7pbSbslHgbB/66+y24tI9EC1KKuVUV/cfyWfx5t
	 TfBaOt/ri7ZNNu6VXEhQkd2N8bax8jSYanO8nDNC5qemiYYWEPLfzCRknghkg6uEgu
	 5AU9DKOg5+RrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3208C98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022243372.14847.3907888517079888638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0d0d79a61ce996960da6234757599387e4012b7838f29c4cb0c3eda7179e2a
Date: Thu, 24 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790222433
