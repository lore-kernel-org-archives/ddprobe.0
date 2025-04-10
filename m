Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B011FC10E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744310994; cv=none; b=U1PYXAEkhHbuWa82dHXpMyD4wfjuSWt3DQp5bOEsfApcyqbOFj3UT0H3aSX6n6BSmm5TSeYK4WpuscsrCdgS8rsHYrvrkMquf+vAeOYspym8+ZXDmPPkCuU3PDW9NW5D7D808eTx0CywRG6wdh3zhQocA6d70hPET/wLCeXo0EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744310994; c=relaxed/simple;
	bh=oaM5k+hLl8KaPCFbF8SU6j1ivW/QSsK2m3JfBqe9crw=;
	h=To:Subject:From:Message-Id:Date; b=sNTvzS1IjU5a1yoz1oEEKpGrhPaVXVcQH+5/MP9ZUxBV8aiKJ6T+Q75LMiFnYEi+hsJ7C044t/29Jt3uJHpsUfxco38diD5z6AIi+aQm9is8nUO8sDRMHveGvcetfx3yQmYqkQJ9RJSEcpdl+/4KiC7rAYCmOSs4/YvtPYmWqQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cB9xgIG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cB9xgIG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7724C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744310993;
	bh=oaM5k+hLl8KaPCFbF8SU6j1ivW/QSsK2m3JfBqe9crw=;
	h=To:Subject:From:Date:From;
	b=cB9xgIG1StwvbFb/UfG0OrYLqLfWrUbFGh9oDwmdYiuNiwAzrwA4dK2s2FPAR/PXl
	 mvfh2ackHlEBPQoN/nYKwu0tTkotVU3PX7rcHcYOleNCP2CDuE2vVMwkHocsnsWt2W
	 jc3YIRmghksHhHRqOZ+K2cBvZUs33LjaYaQwWJ11KWSwKezM2ys01QPSUTxqMONGBZ
	 0mnE7OvgtmNkIfjlUESSpduz+Xaf3RZvRCsmjhN5FrDIOHkxmOh17f3qhWWANQthGK
	 dpxxeU/9RTWWuWHJVhWMqZmV16+bzvwrOEK6u4HL34sv9NEi52EEIGFbBAFuVdJWYz
	 Z4FUWHbLCa0nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91587C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431099358.5132.3341995769566708052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab83b5a3957a32b459df3fe52d620e791d5219662a4412fc25574f92b4f315c2
Date: Thu, 10 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744310993
