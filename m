Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184BC46BF
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755996594; cv=none; b=Phwd2cu/SiZa1dqAYZMANXLr5PAgzxVeaS83TrokqeGoxJgTwLXUfdIKbL1qKkwGft5tQbBg/psl1y229w/ehwQsA1IOrWR9NOIsWKhWg2nhyjPWUE6IUKjST1xUNqDZcncJ50ba5l4/m6m5sZauQCzre56WV4kzUcGYwiYY4DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755996594; c=relaxed/simple;
	bh=jVhgCujupccgrldBfwRjjqAtRyDkIxU1BvLIlptpzqY=;
	h=To:Subject:From:Message-Id:Date; b=jEWW6HjdE+52S4Xgw7ckB+sOBNx2xz3C0OLoa39WFnG/45YAG5hE/qXmP7A/Osu4j50XBp7N3eYaZOqnWmk5AMKkKL/KlsE2Pc+QmVz8TXQNbBnbHLPbjlgsuD+pq1xzqNmVjVFc5TSvu/vimWIEQ7O0vdAjPqlYn0Mi1XM5U3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scLKO80f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scLKO80f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8420C113CF
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755996593;
	bh=jVhgCujupccgrldBfwRjjqAtRyDkIxU1BvLIlptpzqY=;
	h=To:Subject:From:Date:From;
	b=scLKO80ftDBb58nGaexRKGe3FnQn8J8bMqa10X6ASmyEptXNzIbsr/hhkb6ua1Hdj
	 lt+PId86aaiTQSMaNX9Ujj9/CFRelwmcAJ7t+wpGpSWNdl/mO4na0QJmP4GdgeXfr9
	 mkAzCA1L/x/rNF4u9nIrMINvvBG3iRqUlM4tkopmHj+Jf6fMN/vZRkLD1NnwjyeunZ
	 1M5fOG8bEfqVtUngV1BfvFLKP7Ss8IpKP+6k0WPTvSABMDLlXKSckeAyvDfX9Hoy7I
	 yifHF6Hn3/JId0EMi2yFSYfFsPHaTWen0pdZDdoyBR46Sytx3NQ0CVaA2MWtlNGvxZ
	 Myy9cZ4vXXeYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9584BCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599659358.26471.697842234266161741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a4e53856c369eb44c34f1031a6f8bb2514071632049fd5a90a7b21fbb954124
Date: Sun, 24 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755996593
