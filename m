Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCC0199E8C
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727724954; cv=none; b=Z7SM7EN7Xnu09T//WMo7H2Enznjceh7PcBOATUJr+FEyCivEMJPqQ3ZcqzN/Or+U7Q5Wp2q+dv1aVEDsaaD9+kUCdwh1OH6gS4OHheh+fwBWiPrSht2qCneAOfrNCwWCfvXhZaM3Vb0rr9Uu5cLUtFAerPoUaBVm8Pgi/EhRG+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727724954; c=relaxed/simple;
	bh=xcaknSvlsHuzYxWqEx5Dz9sDBv3HoejWtHd4Gj6c1BY=;
	h=To:Subject:From:Message-Id:Date; b=EwrAWekRk9AkpXdRYHcb4bDquCXc6GPPerglrzlhJ/9nludf6usVw1CLy5bf1B9QfWkzzoClWvY6Hkpwnf/w2vgG7HnsgOg6RbrDgJsoJiYhfC6OOAawN7mkC48hpnFhE1Mdrzcd30Jf/ENcWGfMVcS7ecj2aKgt+l7MUXOMVZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAvmwvo2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAvmwvo2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72B0C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727724953;
	bh=xcaknSvlsHuzYxWqEx5Dz9sDBv3HoejWtHd4Gj6c1BY=;
	h=To:Subject:From:Date:From;
	b=OAvmwvo203M2syhLQjXQm01KKG5q5U3UiucwopHBimn03ti1DMzU7tbNBuE1p6oqo
	 DX7xjSxm84p2MIHzcx54lomZ30KLVATaU7VxN/432PjkPOIODB1Bd2gbShRTxGcaM+
	 Qs9CdvIncfbTkhnVgkvanl1p70o+TJqtQ8rUmTN1AKFVeznpoqUwCqR5ze4JGDpbK4
	 u0Lx42S6fa0wZ4OywyZC+IVNgLY9yFH5L4K9jBewJgKbziBD7P6e8SlhqIWjGB3h0d
	 Mv0Ao5k+mBld83BcQWDyMWJum9aJX4dKcn7AsiN93zWxGvADjDT8e0vSklcosgOMNV
	 cE+CnjIMWhRoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C38CCDD1D5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172772495363.17522.11518241601134236644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966b9eeed67e809a566cd5921eb36577df7701701c00c0a8a8b52ba97796fe62
Date: Mon, 30 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727724953
