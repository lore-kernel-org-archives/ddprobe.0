Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B88145020
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722467754; cv=none; b=o5tRxF5zotWcror7uA2nYNJ13itIfWXp0j0DJJNGiZC0WaSmEJveV0iGJa7cuOr8WDsH2VT0N+/BwkpcJ2+LLpkYCsIHQfaCx2ftiYrC8NzRcOQPfASQGySl27kVNeVoXIP1002gVxC0zI0JwtvbrKOPBLwY9/mulPGikRVVh3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722467754; c=relaxed/simple;
	bh=9oYBmHn0IBOz+S6kiXPP4SH0uX2lcEDY3vRRL+wQB7Q=;
	h=To:Subject:From:Message-Id:Date; b=hBSH6+ms0Y1sQWVVyNkQhPhtnYlGYP+mfmuBmpe5NnO6pjEGsI6DfXSCLV9F+icA6jJN65o7Zj90+A3+yS7IrCz2LheoHpLM5qaiQMLTrqiO9gdeiJjG/BnNycFWc25eoFUVBq/IkdvZlx2eXj46lXYwiQpDhLNVeFFQ8QqNp44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVwjg5Gu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVwjg5Gu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C407BC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722467753;
	bh=9oYBmHn0IBOz+S6kiXPP4SH0uX2lcEDY3vRRL+wQB7Q=;
	h=To:Subject:From:Date:From;
	b=OVwjg5GuNY8oAGygsU2Yygyp3/H98HDEkv1KiZkFALBPkBQ9nCEZ7ula7qGymng7O
	 uS+0nIJhR7n8lqWqi1yaFNprHYYtIZ6LdazO2ac5382e12QmLAAUHarRJQFPQJDpK1
	 9gIW24pVJFdQ8TKkzlufqKM2djyJF5Jz54fOjlYE8b50FnPyLiE7o0PVNuH95wTTju
	 yXAHNSJsIvMFwKSw2dD9+jSiu1g027apm+Z1oYicJBMBk2yzFABZ+Cc1Pc6Hbk1aF3
	 IJ4jNDgjqIzCNzyCayC8zOJHY3eQqm5FPaTdrhTxrrOSgaL14N8928qhfbnH67W+t1
	 lUgdTpyszMMcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94C9C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172246775366.23560.15929783402126139592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 603323ab06b9e0ddd70873d165ac793c613d9bb7232ca0f71a1ffa903ce62d59
Date: Wed, 31 Jul 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722467753
