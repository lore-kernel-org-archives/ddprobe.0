Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC0339151E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773661494; cv=none; b=gwUujKIGWP6TQEvwezQTG4udARSPAdLF//+P00Whbp/9PlDn4e1aUfLqTkvBgtTy2xtT+ooIJ4m1r5vjR4alJRkt74lLoxltyfex+eg55Mzqyb6z0oI6zlyEXnHXQxq4m8VLX6fOtA5H7QgPdVyR14q5Ge6RixKdvyBuxa1pBFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773661494; c=relaxed/simple;
	bh=qq1jFYkHLXHkoOhYATthS2ozk8nTB50ETYPi1bct5pk=;
	h=To:Subject:From:Message-Id:Date; b=mNLOZr3I/buPhb/fPkvpm6OerKdIfXGnZSt5XW4PSPJzeXKUMW1SSsObPVcaUJeoRNozbJE1V9UJ+7t1dzNc2eyEdft39R1uLj9aXt/g8Efgo2uIGWx58HW6GJTadjpu+qlvDyjAwP4TVXOiHCb6Lq7ENKum9vU+azBisBHgWQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmeujhbP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmeujhbP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF3BC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773661493;
	bh=qq1jFYkHLXHkoOhYATthS2ozk8nTB50ETYPi1bct5pk=;
	h=To:Subject:From:Date:From;
	b=tmeujhbPCAQUrenoePjMOIBsDxs6nmmxzb9N/AzVSg67JtZfYjBsMCr+S2Vdcy+63
	 7LCVDn99EZoJrSJl1CmQG7q5aGrFkc7IkGykRt8OqXPduwId6/OY2r5RcOgyAFsa6U
	 9fUE20uJzluF65Y9ST96Mn2sFH5forYl3KYXzUHMPp1JDXdjHr5IM5n0K7v87ueJT1
	 S5pUsD2r6jJZVPg4dYx5cEIc1xz/9MYyvj1U0Q1Nqyv3h1/5jqwmShZh5255+duS9v
	 3M7WFq+EWQNOryCgq9m5ssqgk2l9qDhPeWnoRyUAjjnBJd+8HOrLDYQ9VCg+gn/W5x
	 sv6iDWUc31ruQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8BAF46453
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366149362.23738.4854631695284265445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7569b3f42a7abc904cd15638f28f0b5b6e2b00f442e99d7c387d3889502b2d2e
Date: Mon, 16 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773661493
