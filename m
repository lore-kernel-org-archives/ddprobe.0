Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F1815D3
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756946394; cv=none; b=AFAvsVgK3hi0WEbvqLedXA0pPppKWN6pMKZrqp1vH1J3IaPmiZlcM+VJ2zt4rIIgDNoYW4Buyrv+zZdVIoBzSp6eFc/tb3YoLtYD5fx5CEF0BQt8QB8hCS2rBdSv8gKwU5kxCBMlQxpQtWmw8gXpQxOB2FHYjizmeP//ex8rR4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756946394; c=relaxed/simple;
	bh=J8Rv/4HbnI6l2VZuuykP/eUh+V69z3GtEInHtdwu36s=;
	h=To:Subject:From:Message-Id:Date; b=N52je5ioOHFEMzFsEK1UlhRDgo4gt7RCklpqpM42bk2UyhjI6kTymRZF36OcidakYTHaSD7YFOWDbEH5fer4KpKIKgrFW6/oSdcKOXv1k/5U8Z6xFzy65tUE/LdhgnwhPzjYXyZXsnDawATX3ouq8wJO1zpGke1iW/7JQosc56g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPXSjLCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPXSjLCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A603CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756946393;
	bh=J8Rv/4HbnI6l2VZuuykP/eUh+V69z3GtEInHtdwu36s=;
	h=To:Subject:From:Date:From;
	b=aPXSjLCPTSp2XKfHdBOJyHnkkEhrwmtYCTyd9/8ZB+W8VmcVtIsoPdziXTGHW52EB
	 DuIIlgOkVSKbQYec2kQYCoO1xkVyT3H19/waIVK1oVbAYViwmWP//liZiBBoxne3vg
	 lFekANq3RmrCgVW/gmhdE3j4KTMPNN5LTlEqCU3DZkRdfuHXMqEmeNMgZn8uRBO3eo
	 rh2lgSXm83l9t9OMC+H+3M250jEPfasQXDzM6U6NM3eFG0K1nDKBxwFRKiWFtp5luT
	 wFNOVTAFly7DQiYYitEf5Snpc9Jzp+itNgi4yO4oybxuip8wWjim9a4XUtdC+s+glu
	 OlyYceBhEa3fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90844CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694639358.2292.7972866283240787292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf850622f5409b6322d06d574d52937391005d5b2b6e632ba12cd014810c377
Date: Thu, 04 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756946393
