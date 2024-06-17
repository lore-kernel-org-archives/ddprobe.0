Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51643DDD4
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 04:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718598503; cv=none; b=WnjsBqEra7sejcYUit105J2apVXG2JAPO/h30yzlZnEdTew/8no/OgbFjTLanXcZX3W2qg+3qLxNZ4pEzeVg33HH44zgmIwPIZ03Bl/Arf3PHWA1hAvA3MlDbtz1wzKGiA69Tx4K/7cdPdDAdzelogtFw/LeM9EWLbxFPyD+DfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718598503; c=relaxed/simple;
	bh=oDb72948j2Vxqe+k7wgk9AtFCamI5vGQhfnswsnihvY=;
	h=To:Subject:From:Message-Id:Date; b=E3LCbxENopp22aneLdbaSxB6iNL2I0Xt49ItTHtY0IECBEam9xh7+wvfrpOXG4lCuVg/FlhS4V5Wd8gRSGgsS0aGZzmnW7gn9LN9KZtrxqMMZbyhLExcBS8tRxypNECBAOfOOUhoGIeyOHDGFWIg7ch/2zuTdpZ5nTaiqZKdNEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hg7rwXCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hg7rwXCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D654AC3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 04:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718598502;
	bh=oDb72948j2Vxqe+k7wgk9AtFCamI5vGQhfnswsnihvY=;
	h=To:Subject:From:Date:From;
	b=hg7rwXCfIH1VBrrWstRV2fJ47dAwZi1KuxCKkiy2krrBxu+RmgzxwXZKdFlon7859
	 P0PX0sJihqYeBjqsTdTJR2eTbEGyvTs5ICXDGPmc9OiEClMr/dOJ/vdfVX36CLgXrR
	 0/OxCCzWiDiTI2JWYUt45Zdrg9WP3yBv2NUz7tkGWMP3WksQEWeZc8iGSVIvYHhT5K
	 8NhTX/K33zl5PUf0zdBAZnuczIWMdfckYxlSwt99EzSqZ2Hlyh7h4teoyZZ/gRKXPH
	 OO9viQCk3w33F7cKbF/PzXRDL29kUA64WhsgmSXXH7PTkLeOocoAonOAPeCrykT1O6
	 wcNvZA1o+5+Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20D3C27C77
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 04:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171859850276.25559.8636571045551547786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d266c27cd384f653bb587df089683e25518f7ef55bccb80b2b21ad5206647f76
Date: Mon, 17 Jun 2024 04:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718598502
