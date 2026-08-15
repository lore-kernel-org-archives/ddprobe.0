Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B37222590
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786797634; cv=none; b=hqEUOAjZw2tYRSYnqq/pbB4U4tdjfS5604I9sL4UfZ+EorvOe+unSryZA/KGdPCDLkK3yCTYnkDqR1GZsPk1Y6aF5KVuCSfmXUkfEUlb9cmCNR3mt5XLeztpPF7FFf5WuNS0Wq6J/Z0BxNzad8dGw8Y/smEQLp9AjfbO2SeG9wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786797634; c=relaxed/simple;
	bh=DTDp/x2/+aHGIfRFnsRE1kT52i8l5imSQvUxevyHQrc=;
	h=To:Subject:From:Message-Id:Date; b=PAB0k0W7IexP5MpfMrAsP4Z74iKPsJSzU12siGe0cODNOcsYDQIoHayg/ttUjU8NWNd55vY8DPWClyUcVL1YWUmdbMWc06sC2knCdOXXtG+ioT482p4kfOww80fR1ALRGXKpiG7HnE95KLngPnV6WQ41gWdhtnG/5chYMP6x+Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0re1vgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0re1vgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFC8C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786797633;
	bh=DTDp/x2/+aHGIfRFnsRE1kT52i8l5imSQvUxevyHQrc=;
	h=To:Subject:From:Date:From;
	b=M0re1vgFKcjwSGUE7qK0CJbJbbOvN3AH9vKqIy6LEaXv3t8QwB0D0SYgHS+orza36
	 3mWOofnkRFxuj0bqb40SPZq2vTHMoWXkpURujlg6e+Sk//nkaGg1yMxXgaxEd12RyW
	 BnYhKuSlatzjKelTdItdBlMNU1LWC61E7v8nevODeueLq9/WSzEqGi6mmGCVVbZWKI
	 mw3vLxfAMGaNiINuHnnntD3O+Kp98w9/+0YcDIZ3raK4X9pLfWiicbkUXaEi+wCzaG
	 8CH1+LK0+6uZ0eBvP06BxxwLAcKn13YbjCYrqhhr6mZk/me46e2SfDAWKUnmG1bttN
	 RG3vyKs5OzOHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4296C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679763372.30525.10150747518003262797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d74b7ba04dc958de577597ed5360f531e77d61d8573c239a1913429557b648e
Date: Sat, 15 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786797633
