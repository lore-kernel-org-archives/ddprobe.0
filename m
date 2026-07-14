Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578321F0995
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784026114; cv=none; b=fUzIwVa8I2bMa4TWcgakvqRxPotpJALN2LLZshUXuyy9Kky4drk2IQ+Ul4+H5NwXcGJaNX9DjeFPhU4UtHIwrquMHiBQgGTR7k8nt80M2crLoJDjDO2QDhBEcEA5F+s+4owHgSJTzifpoRd517Pct5jlvPfZlDobECheNLUBtNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784026114; c=relaxed/simple;
	bh=RwVqGNp+vu5MfzKmM4RdKfdD9NCXJYIuNivLlQy1eys=;
	h=To:Subject:From:Message-Id:Date; b=k/ovLNjEZAFjoXL8drsYFgGwgNLczsIK9p9h+yyZ14GFug1mC5EYjJCQ2r3IniTYEY7m0MnX3Vd92yQF2ZhoAC+x0RTB07At0TMBRp838eoapxDNxnfwKE/gWrN/Ec8h4AqF5BrmfJnI8s7sms70GhUbq81LWsUgbIqHpgILuvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWooSyt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWooSyt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1ACC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784026113;
	bh=RwVqGNp+vu5MfzKmM4RdKfdD9NCXJYIuNivLlQy1eys=;
	h=To:Subject:From:Date:From;
	b=HWooSyt+3Cp2zsIp3oVI0y2EKAt22+6mRzySthf8BZCkraZIcfEcYX3ypZW832cKk
	 r+mw46g0WHKc+tBm2zeOa6AQOYt9DaQxsREfrVN6ghReE9AaJeF6qVQUfQib7qR70k
	 5q5tsgF1UGciLyEJ6S9Y2DJqEeP5syPPkrmD5GLX/gNip8x9MzZVNbnPfXPZ+tjI/D
	 M83ipdgbzrf3aYhVUbVccxsfZ0HzwJueUitDLE+f1fP1rtCEZXVjw0npUR5W5jpvU/
	 Dmn8QniDek3JKjI+bX9XIYBqobvYjlYjbtrJqSqBBt5rbELlwx58c45BcBpCCQrVl1
	 u5hmmqM8XUe2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E75C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402611368.32211.13898934047027491984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9316c2a0c816cd8149689771636f5ca3e95c3c6462481d2876b8fbd8d2c439b8
Date: Tue, 14 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784026113
