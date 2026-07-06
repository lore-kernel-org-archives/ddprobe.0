Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D43133A9E9
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783301314; cv=none; b=ZVGSIWFdsDTUqVdwSQneQi709PrW8G6pTywPGN9NZkDOa7dVhQt2YF+en88h0qNycxSJG7p2UUFZtqZBDCeYGo6WFxqe9hAABlughm+9fVV7DVTtjm7IbNGiz+F01FFmtypic+QqLyWn2Z0fLvuH0ZtcYjXyYJz1CqOyFf7Psi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783301314; c=relaxed/simple;
	bh=Lx2e/s/FjW9udKu4QB49Yz3fAlGvIg7RcLVi3TgNIfM=;
	h=To:Subject:From:Message-Id:Date; b=swldZ5U0Pa7Oz6WjGIj2zP7RfdSpMqHlPMPH2sbH9RabWVozmHGhIF+R8H6L+1/HuCE7/fp8lULUvKrdfQ4WGjdT2FRvvvSBmmm28SbW9CrFxrnX8Ps2/S5DUWPCP9u492WGCtWcdRR1Upi4TOCxz+O/eZQ7oH8KZ0Mu/ywF/3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g60M6GV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g60M6GV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5D3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783301313;
	bh=Lx2e/s/FjW9udKu4QB49Yz3fAlGvIg7RcLVi3TgNIfM=;
	h=To:Subject:From:Date:From;
	b=g60M6GV4smaRhtsh1DewtaRmrgtsm0C7+VfFPz3mf9H/uGmVR81ptYPul1hX8THxj
	 HgDBM4fN4l9g/vKlhhmL5wdNHPrJ0wLI4p+Mhnev3F8h1nmQhH8v+zEvWXVcsVcIbC
	 TTT2/xz9UfvvpGRw/wOawh1c+2GSll7Y9pVlAgDP47uErJIWWKf/Ql41X9aI7U6W4C
	 AW8pDdLJ473iogdT6KwigvoRC0FkD2pnGnAHpY21Qx4kXMmTT3kY5b8sEh849qR7ZK
	 YP+TK9eSA3YcRZh/EA6seY0rd8HA+zAlH+YknoQuW1/9IeD45rltJWTTU1BCrYoMfp
	 mvfvGrBlyIqaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE29EC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330131368.17614.15192840497839434229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700ca99b860c1cfbafb4d206f05a7af2169d79a439404961a13a45ad676f42f4
Date: Mon, 06 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783301313
