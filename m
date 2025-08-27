Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFBD82D63FF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756315793; cv=none; b=boE03jrOI273r/uMW81zrZnck5Q3MGs4pmdF6Tv4nYKiwjs3FqUm2ON392JhrtsBieSWK9WPMhMPjAVKcvwjFC7zn0lRm9F3iksm9BQXvsrffccHX0jAzWUrXe0sG6l+F4IbsVfAk4sNIW8f1J9XB2RV4EEE6KOz9WYXGvwTCbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756315793; c=relaxed/simple;
	bh=ZaeUOMm504P2U9b/5weW9pmCrwdHSf3dvSDy+gwLO/A=;
	h=To:Subject:From:Message-Id:Date; b=X2nbcEYchQ6uNApPxQkk9jHG94eCi1pRkPmFtFsFLlLKUJls1Pbgmo7H8eg/7T1UiOrOFYN6aPjRShYV8+sh10kgtN81eDLjWwdYD+jX9zJ3nEGt6TldEWn+qTKJSEwb8ug3jdV9Ans/LmlGO4sFfBJymkHuE2N1tliDAfwDDFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPHMXUBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPHMXUBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF23C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756315793;
	bh=ZaeUOMm504P2U9b/5weW9pmCrwdHSf3dvSDy+gwLO/A=;
	h=To:Subject:From:Date:From;
	b=bPHMXUBZxjipDZ1WTZygyK3Da+980rwRr3vnQWKeXbIqWVrSShqEGkR2ql460gc5c
	 1RasJ53wFPoJ+IDH95O3Yy3+r5AhVwq4nvg5G420EOckGAUXJxFyCu2hI3AfKKoylt
	 JshtyvlmDTyV1O6gCL09I9OquK4CZPj6AObCxjIlGRb1ymShjvew02ePGjtwhECgwQ
	 34E49K7wGCBXdc2jsLQbfMZqVkfp7f9RJMT09qpkkeeEiWEPMuXJs3VliCeHpOdkFz
	 BfaFQSD4hJebQRd1/uBOXWy66KUZ6Yvl/OJDYUwhVHkjRotZOcuBXJjx1Lg6glrhy3
	 7gQqXMCqouidg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F246CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631579357.25827.991033180397995389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7678a9494cae774d9fef43776e48266bf9a32df3856d61519f6591b5a13f838d
Date: Wed, 27 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756315793
