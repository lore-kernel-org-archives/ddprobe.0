Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1642A8C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741455534; cv=none; b=I+Bc56Z/C4cHOhRdtGrISt31PN7dqD2yrrVjlQP2pJJnJzHxuxheAWfRqakrpVb1W3umXlG/tsTIQoCXO5QRXBRQXRxoC9xemOEtGXB6ceRCwDLFle1pZtzVWGW1RMT16lPBkzv5ZfbmxV7zOE7A2behep/FbUkoekWMThEFcrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741455534; c=relaxed/simple;
	bh=mM/1gnXA3aiyritYCryYrPFUiByWzDBqxMqbn3KWj6c=;
	h=To:Subject:From:Message-Id:Date; b=PPmrcFMsPryQR4c4QnD6AHHUovkQ78m2CBuyEzAcN48B25B/jr6Z7lHxHoemLHKrRWS2MLa6XMTSxbUt9kHsCtmECDhG+1UXbFWVsTT5arIlJpOzC7uiofcP3Bw68Nom8wPl+zJ33+us26J0H4O2d3VVqerJo34j8RMcUWwoynw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSBtbAsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSBtbAsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2C3C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741455533;
	bh=mM/1gnXA3aiyritYCryYrPFUiByWzDBqxMqbn3KWj6c=;
	h=To:Subject:From:Date:From;
	b=dSBtbAsmMCq8VmuBIzgnguwSj3GyQcIvp7xwP4zJtP8ME/N2ZvwGN+Ve7ac1CsaSs
	 xhDm4CbSS3LUWwz2jtNtesYqXS2EPB0cmE4c5y7OLO5C3jg4iraEHPhaaiZ79/OQP+
	 VyVJqUKlKcySmcye3M93y9gj0xjou7W0Me6J+GO7T8Pn9dhFmslfD/hIysosZ1314/
	 IgbVucaf8kJm7Ftp/TzRLIJqYnspJNUxfG9R7+xh+ugvFk2WiNr5EPchOLILoVyLg+
	 U4iUJYYDnIYrA7NUaK4Qk20AXgCs7afJr9StFuYktgvKzSjI2bc9VjNlp6wLOGGD/L
	 3gvuM1qYEu0Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9630EC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174145553360.12089.8773035922453709876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58ddf65209e90a3570ecec661daf862af8f8ff15c52ec5af014e614588222444
Date: Sat, 08 Mar 2025 17:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741455533
