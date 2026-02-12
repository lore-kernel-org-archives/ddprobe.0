Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17746165F1A
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770894294; cv=none; b=tGz9FM4nl3JeKRmt8MD4XnDEsyfhl6Behzge2j2v9T+0pPdAFeL5Is857YgFCQzGQkozAxVOhLSS17jLm0dsT2XCSrXQsI7z+cMpWYlzXBh4+GSPKEmMQA1Hn9OJh14IBiYq1nvhxbyAjrh0UkfqEa82e0Wsy0XhlIKLpmWXhOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770894294; c=relaxed/simple;
	bh=v2B6WjiRpl5zJ2BVe683O+AukTG9GVKLdAGzJNmzkXo=;
	h=To:Subject:From:Message-Id:Date; b=kMNf/I6wmNZd/yfFqMcehodUah/HdVrNGnHO38XQdPPUuDZq9k89/tsediqKbR2kFnll7vSThTMYI69e2gbazk9SKQGCTVqU99G4FxXg4RFQrxbc6g6d1+yGM8ctHWvI/lDlNaLatTe7710OyEiOtIZ9qXj7/fccECA96l0hX4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONwNY6V/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONwNY6V/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAF1C19422
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770894293;
	bh=v2B6WjiRpl5zJ2BVe683O+AukTG9GVKLdAGzJNmzkXo=;
	h=To:Subject:From:Date:From;
	b=ONwNY6V/a5rdAqXWTb6Wu5Dh13WBcZQVz/jsvQdF2Zx0t0qAeAfGVpHvBU3E2uiMD
	 fVaE3PE8P5ZdNvAzBF+CCP8kI5ma9sSa+2W2DZBQfMkqkDIcdNp849tIKz6mdxzmnU
	 ulIKOqgCSB5IdfjnVkfF/rA17/MHiNsXVkdsipMpH7nYCsVHS4klF/KAhwPHjVsUE/
	 wZsD3KlNhZofqAx6El1NmA5XwJAtEmyy4BrHYc531tuwUJiqrrYUidNjl+HdTH8vLO
	 eO92OuHGKEAJguHi3iDspSSOEwSXPXDsRM1fQuaC1FrIam6t0CPjfO+aOa8MSEdc33
	 kF2EMujJMDKbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB71EB48FC
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089429362.20574.13719842493198500240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0efd4b17a9e70dc50dee04e906415025419eb1b2eb26505d8a735f34ab975ed2
Date: Thu, 12 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770894293
