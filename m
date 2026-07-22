Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5F52AD2C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784682514; cv=none; b=k32GCRSWtHqXW7NANg/R4SST3r6KTpgbzD11wU7dF7I2fqaNLPUm0kGM3zewqJo43IjB9nDDZ9O2ZSsDwnwQv0EEuFkAOwX/oHBnT/Hpqx635POb67QAl/WVv9XgUBirXr/qhU0weHASQD85fjXKLIPeA9jRUIYyBiV9fxahShE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784682514; c=relaxed/simple;
	bh=fGCvWQ9PaaB2waSO4OaLjSb9u6biItVp7bTgbnUeGeY=;
	h=To:Subject:From:Message-Id:Date; b=iPsfbAARpMOcezXgRw101JLVumXOfxTnd34PhdtQyv8GwVuDHYRP0pXcyDlrqRPTUQX/T2/dhnL5KzPMfJj+fwvbFtZ8zV9jIN+UPfL9WstUy9IdPHu5sGGIYqN8LrFo9HZu629blElQdceBb0p/KivNXVLhVVtID+WAL6CAIdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9QG38MS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9QG38MS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B23C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784682513;
	bh=fGCvWQ9PaaB2waSO4OaLjSb9u6biItVp7bTgbnUeGeY=;
	h=To:Subject:From:Date:From;
	b=R9QG38MSsgrJTdFrp4h4s3JKmaMFCoSBRM8SqU5WZOPE3zPw/rCYUbE0W+2UQbcR4
	 A+XStaQdkxZKNWLijtYxmdPdvK7Rgb76B3hxE3gXklEylRg8JBWD0kJICSTiePP2s/
	 9kMwZHyp/Gk3r3qjbdzHZeDRzOfdhMnpdHNqfGq7KWR5XQJa4m+XT9jCD2qzD+JKMp
	 qnbobl9klSb39KhL9WM7AjCWj0xNCSsw/7h2Q8vGLz7tGZ9D43GMdYk6ObmaZMAz1T
	 RZbq/lGNKt+nG0mwLDKLJm/KZ7ifGlWXkzWb7zyw0wnlf2envGdQxPatlxGip6ugLv
	 nlPWqhii8ecBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEF2C4452B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468251368.21234.10421394358056144131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9ba830b91c87bfd913eeea1122ea8e57556b12cbd0238caeb4c7f2a4732197
Date: Wed, 22 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784682513
