Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4266B342146
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780083154; cv=none; b=N4POfgxd1ZFuAgvC6FqK1xgTZrdl5zenovpNVuQSygj5disoQecMqpbpMJQ3g9nkz7Bj+KH4mETZXJOYwuebzjmtF7sOCF9J2Sw6BI2/qnpkZr3ms598OFCoMGf5raCjyRHflUdMkgxa1HR+31YLH/BBgbp+h27j327FdxSPcAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780083154; c=relaxed/simple;
	bh=izBaZFuXnoQElruyR51vxx+ZjLi4T/hVhwHXOiw4Oio=;
	h=To:Subject:From:Message-Id:Date; b=by48Z1b/wu0ffbCyzLZqFgatjgQzWnBiH4ej8f5rNJyCfOww8KCNIfdyp5pmgk/ob7Q6O59U4VQd5CHT6UCf8WP9CEy2cjbW80xRk43ksn1lLrhTgOQyoYzEykq/kqUVbfNJwPxD7HFm5m/6Tw5LOb0wJv2usCdYjAqyC3xYNLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzQeKtdR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzQeKtdR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC2E5C2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780083154;
	bh=izBaZFuXnoQElruyR51vxx+ZjLi4T/hVhwHXOiw4Oio=;
	h=To:Subject:From:Date:From;
	b=tzQeKtdR7fdjbfkaZJtY6S/18qRrE7sxr/zyzTTYCk9+Q1WTZPoAuk2yxfqXWZ3pt
	 HtdYKifUq+D5WNuC+MQ/T9JfRj6Aq6sl0dj4lLPQZfJIlmeLAH3zpPYk8KgOyxZyRw
	 TTh4iaXDvp/t6YY3lROZ7oC8AFWl7PQ/WuuLjQgqRyrXOUbm0wg2tbqE3Ot0e30OJ6
	 H50kZmDkZlzUr3ysQGdKu/zSp32NwFezLI/QexyXpmlarmI7EDQB0IXEGMSM70OWhk
	 HRiVyVP8WU6qFhx/ZP3bZw16R1ijoEs/5tyKsn0vXGMqSwHzbklxtu3/WRJgYLDUR7
	 AnHjUVdW9nLnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C89A4CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008315379.16122.13227341099584946303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd11dfc3ceaecd460bd2f10a9e60ace77fbf673ed955672c5324e90e48fc9f9
Date: Fri, 29 May 2026 19:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780083153
