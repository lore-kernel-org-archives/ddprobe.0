Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A6F137923
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786937434; cv=none; b=FYJtTC0jaDDjCU5yGEgE5QwYk39KXnBuMlIPhOAC5p6xT9XAmlQW2bjuGPfn0Ft6s4Ndsy6sySqa2HZalDDYGn5OOtFoZCyBGiVmeaxb5Y4z8rY+xjWnLdYDKhZe0n+/HZDpGpgcogtIy5WYSypVCp5uhT38wsrz20WGCqqdqcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786937434; c=relaxed/simple;
	bh=4bZP9AACrmJsKL9QZ631xJy3QLaV8QJjldMoveeuopo=;
	h=To:Subject:From:Message-Id:Date; b=Tjk4zFDLp7DfevCgR4ietqYCi/1132Z0Pcfn/jpsgNChJ4V6fYFkUcRyCJfwAuEchFulZJx0PxaeL1iWksArQ2wHZ5BXBmAqSg3rPov6tt4QsQXmi0gtxEYyIDntdAOjB/1tC8ZtIfCnKurqiUw+N435ZQmhuHBzxjSl8Qb/FFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dd+RkQqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dd+RkQqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFA3C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786937433;
	bh=4bZP9AACrmJsKL9QZ631xJy3QLaV8QJjldMoveeuopo=;
	h=To:Subject:From:Date:From;
	b=dd+RkQqVwUunZ62jRIew2FRsU/bqsfDNIn8M7DIhxtJFvXIK5HCCj32NIIWRm/fCI
	 0U+NRVBI9Il/qr5DknvepsHRH6GMLwNMz1CVN9Q4OgYBpueg85qMm46Z1sTrwWwcpS
	 3z7IsewcvbHKCj55wFzPsr7zhe/UByuocUR/2sLlzkaulrnut2NlarwsfugQJLRIbW
	 9K7u9mSRGC9jQJPXYADzKYs7MCGTRBuVth25FSNzuJkkaYowLjwCU4UaNY+RpKvKe+
	 /M8DCWiF5Cp7SCWidwkF2OZ5N9aUVJT1DhSvEfNF9XrDMsBV9aUXriCY+x8Z+vP+LN
	 9twSgBChasrdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC12C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693743368.22771.14807813524313318400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9256f37fae2225667c43e6c5d166976fe11dbbb61402ce733ee3d9bef45692
Date: Mon, 17 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786937433
