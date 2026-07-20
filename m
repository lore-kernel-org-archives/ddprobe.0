Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245A441C30E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784552314; cv=none; b=BLPP2zecaCi0au7XGN6UCmTGhuWc15yYR/v6y2I7/IxkhST/0ZCyjlfdmwaECIuKtSjag/j0+KNzS+KWVONEKTpfnkuKmTamlt2O+kyffJTtQDpk65Xt2CStyIT5/XZvOlKvulAeLCYMMwayUwuuA6jW54X8bHmftbm+RggtzD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784552314; c=relaxed/simple;
	bh=FCAVt0akWkucKeuroFGv1HAwMDlx4GD3YpsNaFDNF/A=;
	h=To:Subject:From:Message-Id:Date; b=Qwg3e1n+Lnzuc25xuPJ5w2OzJCAmUDJwasRNg9FMh9xgoIJMvEH6f/TOLrUVv9wIHBk5C//UIr7IJGXg7epT+b6S5WntIRaV4wBhiPsksiau7VJV/j3xCQM5YYcpPFp6xFuoUpFKkcZ69ymH83jsN3fOuYLbXkUiCWRumKc8LKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eY4mkaPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eY4mkaPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC9FC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784552313;
	bh=FCAVt0akWkucKeuroFGv1HAwMDlx4GD3YpsNaFDNF/A=;
	h=To:Subject:From:Date:From;
	b=eY4mkaPeWHK4WuKc0+d0p4G07ylbEUblnwaurPVwof1rhUUu9ZlyXfmj3NeszzGkW
	 kJZl0yiQV84/nqDVNiwLR6tIutpImWThJ20uFIfLlnW5WETZXNhFAWwuJYUuvDvGvW
	 zJnIzbjt9e/o4JnuofsZw7JNit1fLiWjMXkDJgQmH1CWXmvRqVT03VaBjPb+0a3igH
	 Psu4Gr0Se5tVOgeh8AkvrubojHNyRrxvv3VKPIRK1HUZTI/w01F/iRw/DuliYLKmk/
	 o+EzuIMx3eDq9jxLbmCJjOglBy2pvrhL4Ft9E2M9BCJKqW04rn4d/XDZZ5zwrIOHpI
	 WpMvVkG6veu1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9707C4452A
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455231368.8643.7408598148322203581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786a7fe49805efbb777cb94d5203a9e93ec965feaae77dc1bfd721f66050032e
Date: Mon, 20 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784552313
