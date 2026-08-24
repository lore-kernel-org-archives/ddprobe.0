Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8AC370ADF
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787538634; cv=none; b=A6Hc3v104e/qav3igacvxqnhbcUHnNqFxRV448+sWC3OmKAPVgWITCa0c74KyfMVgeq3JZgwnemw5F4xAjXwGOaOgpw58rQvGaRp4mgNK8x1mWIHy+WwTYUM0zzqCdo5EWZRZygJvyAR1yyzNs1RQFvw886GJzPMocWNkb/x9u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787538634; c=relaxed/simple;
	bh=ThXOn1MrbPp+y5zb0P8IqNNLeAKINLKok0zkPHQMCyA=;
	h=To:Subject:From:Message-Id:Date; b=Itp8H2qNjS9va6LUd6olMk4Go9PvpwPxuCFeD9VnakWHMG0dBbhB6+JP3fOtgJZOJkZisUDoKeIj+amFBE8Fp6F80TgC4cFHiipi3DA9N6QbQyak2NxQoziHwEIQTYMncxr1RWI08wRwrA5Axd3BZ+w+5B2nADWJCAPZC7zJc9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ks2J/+JS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ks2J/+JS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7D9C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787538633;
	bh=ThXOn1MrbPp+y5zb0P8IqNNLeAKINLKok0zkPHQMCyA=;
	h=To:Subject:From:Date:From;
	b=ks2J/+JSZIFYxi9Vz6qnRP6R0ETBkm0TdxVYp73a8gbK727M6xWLJuM3sdvNDLFuy
	 1L+8ZLcOkfjx/cQj0JNn5QKycMvnyl8qDM5/3rJf9UNguzUvpmWRfJ4Ch54M1XVsTV
	 PCZ8IjU5P5EfmTDQDsfd64JMdsSv6sbu49Ey5GBUcpuskHwKUY3+ztdzwQiv2muIMN
	 V4+ecsYSVxgjSMwXz6W3g5ht+XDgpqbLtfZAUqpdzIOqnjYxA9YEhr95tbcHZLwmdQ
	 wVOMaHGiLzMdukaOle0WdLWhULBqiCZ+yDf2Ss3QLYM0LgyTLlCnftbTX1ZSs/kUaN
	 pu5ElVz8i2Nnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA994C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753863368.27166.16478963000486576916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c2532eab73fdc5a73fe954f8434718e86b5d6a6fc37e5c020e3f1b34a8c4d4
Date: Mon, 24 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787538633
