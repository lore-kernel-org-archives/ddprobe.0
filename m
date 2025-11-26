Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FDB27BF7C
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764189774; cv=none; b=jjnBwWTgqlZ5794a6wEPPCKW1qbbA7Z8Yr9oIjvLFIRZVUY0tgSs2Bs4nQSmg2XrOryN63X7WJYVDMFG6WY1ZDc6R6Oxn7LnHaiizmbbXA9vkiCuI9JkIDKuWHWiGj6YfhnoJuLSwvtHFNf50vds0f0LTqfvPzTyMu0vIjudPpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764189774; c=relaxed/simple;
	bh=jKuD6TZrBwT1GaIFlvHCCN2ffAZ4XNxgR16Ceh62Kos=;
	h=To:Subject:From:Message-Id:Date; b=lo05AD784FnkwT6/xkC4qiJWDrpCteZvPJZ9N9JpGfmcXPMAnKhjA9BTLZOD7vxZOhkNlwSVGG44Gmih1yieRBEu4kJSJOv/4l4CFNo2vPfph0UVg5WsixRFXIM33iDNjRSVYWamCn5YTwf44LePRxJaE0pFwiC71hUbLysaJxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zhg7DBYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zhg7DBYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B3FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764189773;
	bh=jKuD6TZrBwT1GaIFlvHCCN2ffAZ4XNxgR16Ceh62Kos=;
	h=To:Subject:From:Date:From;
	b=Zhg7DBYilJn/XWUelmVl1NuU5FiVhTCNZAYcFPNJVBwTHky3EkVIb19dI9fiFcOyk
	 xIP3V4HN7ZLgRlQdu6/uQr5L2806a+GWKbpgNJPK5ReyyK3pZ7+H+m6cwsXlSfI4Nb
	 pNZY1tiPKFJBKErlf32T1dufiapMAp/S6xmoOD82y+J5yOJrS/kEWGC9s6BeIN9ZAt
	 aMqTBjOyfCBlYrBkKGFA3QxEN3mfj2rBn2uYr55JYPoR6f9VNyG7hvulhvtj/mPXHa
	 9cuH9UeeznKEco8DVxaecBc63Du1vDoWuACaBVIDdkkpAiN1Yyxea1TUQrTcYUPYps
	 7tV01mxSfC47g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91809D11195
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418977358.30908.13706507875576189909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc503406c2ccae0f8a8106dcd96d347a0330cb07783ec3310f37f09795cc40f0
Date: Wed, 26 Nov 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764189773
