Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396BF1F0E25
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743682794; cv=none; b=sWAjrzSZ8meAMrmQ+sGS+Z/ui9GgEzYWcG/VBwZ7FOGRNQxJOASRoFbZ0EMiyoSGwKN+1HOE/MyT0XqAvQBIP5o5qDXyFACD0ElWzmCmFa2/CIMdBKFXV4QCzpa3G6rQnbJwd9cewrJxsRxQPCsxqEjw7yuVlVTBEiV/yx/BxhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743682794; c=relaxed/simple;
	bh=x0xxGZVlJBH6edxtXsvUoV6ZMuZKyQMRb0WIWGw7/jk=;
	h=To:Subject:From:Message-Id:Date; b=istYu+c1ZRAjFoKfFeQHzoWtofquX/jBigrZblkcH3Pu8iTE9ABgZy/yG46mys0ebBmQO8fcVGuhf7Va4K/8gCk5A2Kt6uGq5RBRgHz09LEb74bwz6U1iOeTmfkOda/Ys1VGk0sNfmEuBR1Uyjx2Tcdri8inLeUoSy9LhVKA4l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVEc5lll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVEc5lll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E65C4CEE5
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743682793;
	bh=x0xxGZVlJBH6edxtXsvUoV6ZMuZKyQMRb0WIWGw7/jk=;
	h=To:Subject:From:Date:From;
	b=nVEc5lllT7noqG11y/kICjvatSTVEjnpmvwwtqw25DTbtrPfzxLOIXwtngQI6duHj
	 Tv2sLpAHbjHWw1ShG5WcFJ5kAEi5y8hCrc8yuWm30kJ1HFIyZSAme0LoMGwbaS+DKn
	 asds6J42PIUpJ01iwtazRPi/EEhjA1SXHe/nxSvN1uuE2NiSjL8acehzDuD6MbbERs
	 Q11GvmHVQOMwdk0XxvDtl1HEtJLAg+SgoKEMylhZZYu1FJsSBxxIuSh+sq+7+EeB9I
	 ZV898RUAPFFgNYQCiDwgEdFasA0QWItaErKSck+1nMLyyC3cTeCDxos2JAXNF8jfAc
	 ZUNEyQdGqyJtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9507DC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174368279360.18656.11010973525781677234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a47e08502fb0694db775f3de5c8b21a09a24f30741257dad363d41975152a46
Date: Thu, 03 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743682793
