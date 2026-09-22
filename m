Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C052C08D0
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790080234; cv=none; b=GuHUHYrq/Gnird888/RyF9HtgD4ZF4aNKlukMXS9zdvLD5O8Nh0UO/GOCo8xHx/5rjwCRAMQaumUJAyqW/CegXrK84V5qmmXxJ44wLTO05EGbgGL2mdtitFEz0vuU0OvsM4qte2SdX4grtB2iu6ghNcXxrxgImh4xOKpmiu1sTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790080234; c=relaxed/simple;
	bh=Yy+3wrc2W4hLHT+uRbKsBNXRaCZmN5tVBPc+qjtG3zE=;
	h=To:Subject:From:Message-Id:Date; b=pzPdMVBcgVvxYcuZiephiFJ8UfCgQF8c+XX5xJq+piFgCvmkrZUYSiVxrV5c5ApfaRe8o+v12o4Adlo1YEnXXOXpZFqu6IWqIRYHxYIUjpikGkuQeAdqSl6RUT5IZy/qksHeDcJP7HDH0f1AyJhy4The9shKlMUxL70nkX0XC1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgSQcWV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgSQcWV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9217C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790080233;
	bh=Yy+3wrc2W4hLHT+uRbKsBNXRaCZmN5tVBPc+qjtG3zE=;
	h=To:Subject:From:Date:From;
	b=dgSQcWV+FEvt7RuTQ4OBaYMyqS0tLHmDDAocRnsHKYIKGV6gNBvXK07Pr6kRlyC8n
	 CrlyoLd3YctCbZM4ifucAtRl3eesLPtwcvcBq6Kz5xla/SMyQMoK7k1TAcoACSluRV
	 f1IiFIukxE5ny0Q1qLPyLb7gSJt0biCmSUovgpPCgS1KirWCsnjmKV4gXc/GXZlfRU
	 5DzEWd/iY4w2CfvSgIO20fhKN5xvXfQ9WL6pQklXggmgHMOJwnyXxhrQUdhDkz29wn
	 DymOAh67BqDyJcwdeJZdI5K+5KehKtAIDh/z/8P6C6kzLtAem9n6f1SlM/f+CtLD7J
	 +xCPVJlJRi95A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C37C982FF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008023370.22051.5772342097314737599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2121c97c4e0fc6916cbf956a9e4a9dbb6aafc25d010401c21a62dbc5225cc5a6
Date: Tue, 22 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790080233
