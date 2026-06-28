Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCCC13B293
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782629914; cv=none; b=mo3u8puZ+napn0tdowLiGFFBiPf7XQasDF3mEQ/dJ6np85s54RpSK4ufYmNE1/dNchqkw2VFC+f+yKI4YSum7c8SYBknSwOdz7knOz868P4qfa3ALFgMkkccb7qFZKSaANwZmH1Jbfqp+kyB2yyRS3Wiq9o+dT23BGvoHd3/jsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782629914; c=relaxed/simple;
	bh=ldChUY6fdnqvVEj+F56jzXiSlYHD5AeoozGiqq2Ywk8=;
	h=To:Subject:From:Message-Id:Date; b=tQsTNdeSRi5tnDLi8sFQRZqZE603ecrvDRKDR8jAIZ/F8if6JZuGG/GrhgWv8ZoNI6MLGIvXbU4RKcE8RbXXX0YIO950+mMtRFeuOtkghYnNLAalDJCSG/pOtXqKYMVrL6SeGs1RkrHIAbuBJpZhbOxj7H0O0eYyIWU53wv1cb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojcNjoVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojcNjoVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD79C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782629913;
	bh=ldChUY6fdnqvVEj+F56jzXiSlYHD5AeoozGiqq2Ywk8=;
	h=To:Subject:From:Date:From;
	b=ojcNjoVwekD9t4mHusP2TpP/fkqHT1PSxMwAb6r4OlCV6wHFEcteNZRMjX5uUmCTr
	 sHSfPnshwITbvRmzO30gNfqrqVnYeVIi2ByS/7hib/zkp+/wCVw2/kndqsgHqy21iC
	 lpgOM1B+QWkO2WPVabSvpjZHrYvGfAAfz+/NmqOQO0WthC6tp2F/60s09Zo0pb/yb1
	 AAVSRw68kKfSb74OKHP2OHlCjXyLLPcXpqABnuiFI2/IHR4N25MERTcnLAi3XhrUrz
	 DB8oJuqlV802aIToi30pcg57/kCPQncDr6yns9AcVeKRhey+EaxxettG2ureixR/3K
	 aGQwhrITEAiIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5CAC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262991369.22672.18347530917039279232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474a45d5b89e9d87abf064e5ab8b7196d442f092f88bffd2c0992fe0ab9abb74
Date: Sun, 28 Jun 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782629913
