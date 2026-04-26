Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4D536164D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777208254; cv=none; b=AtnqiTGJKSuZ8G0WnAHwDJZqTMMLOU1Vh44sC7dPxcntVl4mbSlZwFjC/e6wdg9nqEseQpVwj9OjNGsjMXAlAtfr38iahl0rV1DJ/TC3ZlxmgtI1pLOP91o3fN40LwN0KkWQ0OoWzaEC5WBDjYc1wAfMaCfDFxJebUat8tfp+rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777208254; c=relaxed/simple;
	bh=LUIoOxtsSLSeb720A7ZJZs5qgVTsOmm0o15soSUmVGA=;
	h=To:Subject:From:Message-Id:Date; b=ZNM6N3EuISwBZM52r/8JD4cFyKqR6HPhGQFiLEYVgwmwfVra3mmSDqHfXHFcmSgKILnS3pes42GpjWNJqNquTGS+uXTQlr2Q+eGwSvtnc0A14ZicQSq4gV8Qfz5ROUhzz6vapr4Ereu+jbso09HW3JFMkyU7PP4vg6JJlj17QR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnrOWe2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnrOWe2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE22C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777208253;
	bh=LUIoOxtsSLSeb720A7ZJZs5qgVTsOmm0o15soSUmVGA=;
	h=To:Subject:From:Date:From;
	b=tnrOWe2s2Vz8Klvwpun6s7gapmmnLQB5UHkgLQgA4j69+CpLwABk2JFS82dUIZQDA
	 jHXb4gtdI0UGprz9AzkTPb1Gw3UtdUDJJit5iiUcKoj/J8zwCsDTZzP+9x2XGzpBwc
	 HfPJqE+YKVjJGiWjRJ9XHfe9sOJAP3ifBkl2L6wqXlh5x8y9fU5BaDCYSPxr4eGp6V
	 E0VwEnoCUjZ3JSoOwjJQNRpUwHTehhy3QhQQnMGuq0YGyl+sXuaFwFJSjgMaJk7Txx
	 qOgDFNrzMsl57HFtoCjHyiOXmN5xQFWB5repDmyEBzyQRLZHXDjH6BCqVThXRSXEdo
	 ErArNcUkROh2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4C6FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720825369.29626.15058367817672999661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5443a57dbd56e0493d4e3ee82233aaac03760adb2d7372836574ff3ba37e9bc
Date: Sun, 26 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777208253
