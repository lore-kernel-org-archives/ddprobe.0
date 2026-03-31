Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0352926F46F
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774931694; cv=none; b=KcG5Y3PvY25Yyoe8zw+mBcU5f6k4h8ncbxNRQUzK+gREN+OrLW11se4vvQWm2+GD1dEfOThCzBtGIdNpDaSVZVERftfnrFoBMfFlkSyrxvCSdIfGJFXeiJWARIGiVEls2K45elSK+c9pf9tmTL2+Wb/r7BtoZDO332CoWY+UQhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774931694; c=relaxed/simple;
	bh=8MMNRQnp5UZiafKu9JhSaSzJEg6wuQ6Z1zpTNTTZj1s=;
	h=To:Subject:From:Message-Id:Date; b=T0X3pOmL0Ewj32wBYPTvZdpgB92mxrsnnXnosqsuoCHlZ5Eb+U0BYNIUJIpMirkM4t0cOOwt66TQMeR6677z57X0AO/5udIoCKCPJAbmpPiQ5mC+lsJn5zGOvAYHZfSNC+lBbUk79h6pghUvYEPCeV5dZs4nfaeL1CXvlZGi5LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSl5apWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSl5apWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EB4C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774931693;
	bh=8MMNRQnp5UZiafKu9JhSaSzJEg6wuQ6Z1zpTNTTZj1s=;
	h=To:Subject:From:Date:From;
	b=KSl5apWwY6qpi5WEQwnF8+52f5HfFoJrPbDdgiqCyWcp+B28DJ0CpwovKe4I1NtVk
	 vFJuy2fesYmtSXQ/irn7XtHWJvd567hGhWvNasnjCnC3qh3V7jCxaHgB5sv1eJv5GU
	 f6Hv50wg74zeF0HK/rV81K7dib0VQ7iMIDCI+v4UWd7bWumVG5KRLhbiCE21qbqE/A
	 QpaHlYnkzNnYB4BSjxrLFntBeXP3G3G8ny5Hc4PkmxPTCqtRSbVfmh/O1+ixadyY1B
	 d5Mc0EKC08Dgdca5Xp3ixEUO7j7FiIAOQhu1jDMe4nqPIurpNF4ac65po3xfNa63/w
	 hz3n5iE8h6+4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92004FF60C6
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493169358.5570.7957617883763936054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0914de97b467ba49e9ec5ae53036ca0615768a2222205f39560e654bd375905e
Date: Tue, 31 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774931693
