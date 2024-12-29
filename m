Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48481259497
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735494954; cv=none; b=pVww0rn8FA0xD24mEngoL+oO/l182gQ3/lapsXP85ccQCHN9KX7I4hKUYTQJ6tQF8KnD4dNfU/0RQDFLPyQ3PY2U0kbOjRx/echjGlykSzDwh9m1g6SLV1osXV/na6HHtTkXvrF46Z2hYp5csew+Ph83uutWxSwll3JSUtAsjQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735494954; c=relaxed/simple;
	bh=n0wPNPxcyY1vZe/z84D3XRQlWrdpOhy9ndPysobmVDs=;
	h=To:Subject:From:Message-Id:Date; b=jfmHzM6PBbDJxTTUpYBjnCwd41wN+ena6lGwq/3SMkjDcBC6hFNAvMLLATX39Z7sr8VfQu2tvhnJW3SBS9A52syue83AtY3587/93cgS1bM2IdJbUvwstvLcvkfThCx24nVycE4kqosL3k0rWDWllzr2Ve/xgfAOpSJ5mEChJ+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYxveUnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYxveUnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA25C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735494953;
	bh=n0wPNPxcyY1vZe/z84D3XRQlWrdpOhy9ndPysobmVDs=;
	h=To:Subject:From:Date:From;
	b=YYxveUnWADBKCK+zlVDTiW6n/yYhAmVHOAxBI9LSFW3kru+YDL+hH1HAXQ4dDxCHr
	 nmpgOSqBsTT79vDe2rCV0q2xQsuJC2af7ihDeae4lxUfxshS3/z9IHLeriNJXDhOSR
	 6t5KKnT1Madyz2F3PUobc6YlLdVJb+HGxsqT2bA8sD9tskTlhSdKFHwziMRVHI7seZ
	 hWc3ABvYdcsoB6taZZUQM/G6FasUag8WUFu9/z65JrFp4Pd4wCQ4UxRFAJ8cylbNnK
	 PKyNDKbopJ+XxRun001zhG5KH0LlH58e82+z2P4YPb7Oar7Lti2rz2tYlibuLZIgbM
	 GjG3npswrroAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A2EE7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173549495364.27619.14255971804250102084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bbb52491715932bce7599e2c6f9e5f2a848b838af29eb71dc1ff3bf841d0ac7
Date: Sun, 29 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735494953
