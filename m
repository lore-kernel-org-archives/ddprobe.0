Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1337B189F55
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729261554; cv=none; b=gvMi3DUKL4C1xMuJKnAffb78c5IsmNrMRl+lUgxQsgpMESWpmdyfAgbx7mYNv4bjbrTpYDY/UlBqKaZ0U2Jlx1bSn1JPP4ct22lipoy8ESITbfWQTd/Lvcx588EeIg8FQ9uZEaob5UGq8Wy/U2gYEgR3s3GdkYIX9XTWdfDnlU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729261554; c=relaxed/simple;
	bh=ul9R5B4ugM/K/AW/TSNwvxPf0MasM77iCjgtQN5Lveo=;
	h=To:Subject:From:Message-Id:Date; b=afvzrCQZGgsDaxA1gOVGvCDxIygdhbErbVJAdgvaoS1NnILlDhNNveE3rSZ32TZNNXrsrevVYQ+HckXnKnFR3AIE5pDqgLn/hzzwWAHmXDhObMASYCPKdeGifNy29KfCY/a1IukXkjZiyU913eL3GUVSmzrLigyL+/iwy2HXM5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLPsM28B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLPsM28B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62F5C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729261553;
	bh=ul9R5B4ugM/K/AW/TSNwvxPf0MasM77iCjgtQN5Lveo=;
	h=To:Subject:From:Date:From;
	b=hLPsM28BWvCf7HgkGVzFtSVxhxHKUglS9JTNg9G8agtZ5jDU92pes/j089z1ylSGE
	 4cV4YlKrHTf0LIqZgD40Qo6UTFuVYHYAscHT5DByg0COBet63VlsqZEcZ0oPr9EKFZ
	 7xNN/Se6QgsXWOaKuxHkbtNHHGSoiKwzkd5e5cGaHLLBRvrwges9ehuT2AmkCtVkJL
	 yNeojjs1Tiz61iOIAc9rTieP4UO9MqdbxZINQNHhJ76lykHxnv6SPO0N+tYtevH1KF
	 WjZWvmihbMSz6K9NBqdvvgiSPow7F2tah+vEMpQeh4j/adZjHYPW2Z9Ll4qrHHK42V
	 cy8/7QbWhtuxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B3D30013
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172926155358.29349.17981819605302027806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35eea6f1ff0f7d9b876aa9ae5045598440af697db19381b23702df26cbf95a06
Date: Fri, 18 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729261553
