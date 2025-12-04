Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30226824BD
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764834174; cv=none; b=FblLWc22JmO/tXfF/Dm+28ZIj8mrpaSIzlTO4Cas3V+oW6wn9RVw4GEZymVXZophiIEvRBzEzp++bzQxp2JCXLxYQ5vILMtXy0f09/q/j55/MPO1ViEzXeYKW4nexbWyTipK+ahmg9oBhYRQ3GOpXrhWiEXW3mTXlGoYuch4+b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764834174; c=relaxed/simple;
	bh=ZKVm3aZ/vIsv6HLQV1YGCaQkWG5IzbrU+V4c5KAxfW4=;
	h=To:Subject:From:Message-Id:Date; b=LULDEKjoTq5An5xBAzSonx6BCJ6NL44oMyh9dIh8l3/nEzIFGlNrVY2TvGH48p3XxEvbZ+StZ+IRfZSHo1RNr7G3KjtP2XtOLuFUGeLVf12OTFE+lzGfraVQaiED1vPJ0wx4bsuoTedCGPBJ6BwCrHhIz/v0ZrZS/1O7VghfDu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IayY0Y2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IayY0Y2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB52C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764834173;
	bh=ZKVm3aZ/vIsv6HLQV1YGCaQkWG5IzbrU+V4c5KAxfW4=;
	h=To:Subject:From:Date:From;
	b=IayY0Y2+W21PCyVy9iz6Yq0rhdYm6wxFix5rEyhU2My5zGXSd96iHoJXGMVGkEqt/
	 oq8rQPLPmcBPmO3JcV37HK4baTNcBEjL+eFzvHNMG8u2BkWiv2Zcup1RcGk/VLCm5O
	 LrojompIrQB4m26ZBi0kRMjEnKCl62wNTtnnoXakTE1jCX+zDdK7zvcXvjPQrsYqcX
	 7A78OVuFxzuysj3QMgRPeIm15TdtIEpxS/Z+3FWGjmIfGCeycvtphQfoB7b+GTMhBV
	 5KWzplb81NL6MhJYfcQCSC8WF5HLwXUGF+kWBvN4f2z2MnovVhABu0kOeoXpmdsGuX
	 /DbTNyGafca1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9981CD1D878
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483417359.3686.13606689300964460029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0e39a742669fb323e5191ccc91354436bcf3f0781606fba142bf2ba6c15957
Date: Thu, 04 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764834173
