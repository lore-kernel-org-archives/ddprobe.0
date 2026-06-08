Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B5B3A1A21
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780959274; cv=none; b=VvqreqRSaI4i6PZxzRK0zNdLxDgEzJeKH7RkmRvatXmqQg/X+b07CxJQNsyFcQK4FnIyPWPfeHMVranXb1kA5GnsQp/bXAdt5PN/Kr008UKIn654puebOGXvdOCTjw/3vuTBI+O4ZJeBEOgxI4AltzALl2MCyJGEh/pTF9RPuHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780959274; c=relaxed/simple;
	bh=h0myuM5CmXbNFIAakpz+dW9H340HsU1Zba52dkZc4O0=;
	h=To:Subject:From:Message-Id:Date; b=D1z7QmS2zhLp+rY0L2Zc2+qBRK3scOlLfCwRamatQNSEqo48usdNy25G4GuPSBWpH8P31pq7X0meyMX+tkDk78BX6rlLH5tQmQ6BBq+TWqUdfwVBHz4/ueImohjNjvC9AWQmQR14K1CgO81WE2A5e0ojuP7LGLNm1KEEEpDJIb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3Fsx4Zu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3Fsx4Zu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90A3C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780959273;
	bh=h0myuM5CmXbNFIAakpz+dW9H340HsU1Zba52dkZc4O0=;
	h=To:Subject:From:Date:From;
	b=t3Fsx4ZuPKTJqPUsjCtQ7423tdV4wNCzy2gAvPBz2qZZe8bvn8n9CXyl9bMtWvr4g
	 gBb7lpr3Lh0eDnkQ58kguV5w0V7rwpV6sXrMBTNtArh7teVrKCbDlTjJ7ApMCkJJ3+
	 BrQQXog00NNDfXbMShc0k9cNPnT6O2cUaAUEB+fz7wh96vIXu0LBtDuMXiN3jXsTDV
	 8sMxWxk3L8oK7Htz4EsxZTqaoO+0n4ldcyoOP8ecW0jj7njnK7vN9NO1xQFww4VBpQ
	 hD2uR9jLvzQtA8ppf0pLMuL6NX2cZXR0ByEJ36cqicfTf1QgVUf4Qw+lPDzZtDJb+9
	 ayT3s+lILSMHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7840CD8CA7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095927370.20928.701323416449661063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033a90b3083d79c185373f5adb4d4256955573e31c22bc6c5ac0972bd21d39d8
Date: Mon, 08 Jun 2026 22:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780959273
