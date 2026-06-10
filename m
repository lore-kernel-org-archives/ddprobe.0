Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E2F258EFF
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781055334; cv=none; b=fqQCV25LS2HEZX5H9JOGMkaNHyHC7MdYFEtycgN+JDGzdNhjjoCpHmJeOD5EClmuiCMwnNjiLwNKW7xWwb73ot6R1EihP14mo4p9D1QVt8xcuAm//QAzgGcwUbGNf7yp4NdQcxY91GvpJELULNKYY7g+GCFL1PJI48SAYd+vHu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781055334; c=relaxed/simple;
	bh=E4u7pnXGh6CTZSUz3XC7HfiU+iMzIjgGR6KgIFgUnO8=;
	h=To:Subject:From:Message-Id:Date; b=QDRX+fr7Gnqw/zejSDekmgpYZ4j+4/tQ/wFI3Jp5M4d9ZRMPDEXF1SMJuJlFvDP57b2RK2TJy4PwQhfyJHr5Dj73Ir40akl0dwfEwxxhx68BH+iOgt1jtkGy2xMNii0MlbGE9qd1zYG32gMXEruf6okDD3m0+pGFQ8Xai+BcjsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=liThxkW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liThxkW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCF8C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781055333;
	bh=E4u7pnXGh6CTZSUz3XC7HfiU+iMzIjgGR6KgIFgUnO8=;
	h=To:Subject:From:Date:From;
	b=liThxkW4xYkSvkPeiaV/qKMbT5CoJGT6OgsI17i1R3MIoCg028H6SJ71vS7JCpWrl
	 1jGR9mxF3AzboMizsT6l4udqmTnVJpXFShF4s59wpzyICsM0gl1VGuy+XfrkSsbdER
	 iwyo/dDFcMXXhn+ZmZt81bwVdr64xKjv/StuZGZbrB4A+Bs/+i/cpKQDUgUZJWE0Y3
	 sA7J74JaixM2WRi74mWi5/XkvrzLwg04psHfpjmm9P3lluDRqqzx2DAg47wg3TR4PG
	 blHva2OUMiTSe6Of8y9tVnBZxBACjiOhbN39BJYLoijXq+pUNMi9yiUc/G9vw9iBXE
	 HMs/ByCfH7+8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE71FCD8CA8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105533369.19801.7237935255810098850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10be0c0aedbf1af2b698ec4553ee31e442c0374b392f7f705d35a3c41e11fc58
Date: Wed, 10 Jun 2026 01:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781055333
