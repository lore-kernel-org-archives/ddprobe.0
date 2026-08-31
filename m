Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9EC3F1045
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788139234; cv=none; b=CNjJQGVS/1K73ue94a9mY/Fi4M4WIizLrulKAb9Tfv3ATRJcu336zEnAwM+YGbEi6JHO1JK/yO1QRsX83vpclm7bgYwu1HxSVmdxxJT5DZ4QLzONIO5s8tW7adnDDjOmQ3K4dkmg9dXV9Qgf/Vcwp7V0uMP3TVxDiWF8zQexo9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788139234; c=relaxed/simple;
	bh=kfdR1vUv4dcLTL8/AQirY3wLKSlINiz3NlqAK/mEEhg=;
	h=To:Subject:From:Message-Id:Date; b=txx8IAEy41+QFThMubP++oLZ0qs63DKdHOHUKtgqZGi1pZlYiJs0stgvxqaoKTGEeplk8Cffh28Ulbr1qPd0POoHWuhpluxwiJMUGMBB1I9lEIxoYCD9XPdqseONYRA3viBX0DeKN682pKGxdTr9nY6a3s4gnDDl/lwC2md+yWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHwo8a8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHwo8a8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5745C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788139233;
	bh=kfdR1vUv4dcLTL8/AQirY3wLKSlINiz3NlqAK/mEEhg=;
	h=To:Subject:From:Date:From;
	b=LHwo8a8KxyG9yV1VwtocDHl6701rmaK/TvXVn+Zw/WMXNfmpytzbR8i5cVo0kKxF7
	 OJ8hHclA/paB/U6Agd3vdWDab1ET9fEIKtGi7dOb3qbpLDo3xKRUp/pXEDa+jpCtMe
	 D/GC64yDR/QoT/Xx/nt9Q5IFIFQ2doTZOkgtUuMkuo8Y3o4MPyuApAAByQyalORVdV
	 z4TStJNoQuCoFyhPXX4gM6gTp1oj+CffPsVVQL9fz5LZ6a4V9InOjPwCexB09mIx9h
	 cHYrkUtC59eNLcZxT9gkYqwzig+lYM1GtKL2FSoK5FBYQLy7Y07le2IwRLST5+8PuF
	 ie2woCGoyiUrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB55C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813923368.14888.1030658657616912370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee957acb61758eb7c66b298b5917622e7f8fa712699b12b0d3cf8903b35cd8c7
Date: Mon, 31 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788139233
