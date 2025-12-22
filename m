Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE19275B15
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766401434; cv=none; b=po9COpmhWyFBJWWaHIPJN2yibj0c01KKYaRnDOCwp5tQsNqPsQ5fe7WhtsTs5rXq9r9Q9OeQnbb9L0fHqjkUaLPdNi6ERj6Y9l0WRA0/efj752ph4hJldGLnD3yGnl+BX/xZDsNRV6tkN11HIq0GUg1WAs23ktNEpCU4hje8ldM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766401434; c=relaxed/simple;
	bh=S9GnqABqePX4x7j5d7MqyaMsDM7xhQlPOuj1Wl13/+Y=;
	h=To:Subject:From:Message-Id:Date; b=kHjnsvlXBgemyQaYDQn6GfZAc3idtxt4PlhfQBrZHy7qqClcQapHUpPtN70bOqqApH819PbDgT3OXJs6Y+EddxYaCjou3aMUgj8DsRrVzy+q3JmhlrCibetmKpKvqTKoLU7kMBuChf2/Dy8NwhaXU/kmb7XDn3F74dK3vVtx62k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC4HnI2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC4HnI2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A84C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766401433;
	bh=S9GnqABqePX4x7j5d7MqyaMsDM7xhQlPOuj1Wl13/+Y=;
	h=To:Subject:From:Date:From;
	b=fC4HnI2bcJpjHbhjvlhoIaXsNH3ru38NTf0J7mbum6bKXNTyLWGK4WtdzduhOqq8k
	 gsiy9lnTMReLjjfJZ+CUS6s9+Lj9BpjSBoimK4VvQf0i+Kp8tvbdm7vJNWSUeHHGRW
	 kMttBz9lhhSG9Jn90fCJ/J5jC0Yf8jM3etjnNWTBg9Gpg5oUPxkVBVIBU5aDtOUQjU
	 6P3wW1KrpnCePqOfzn0t+d1X6aOJ97biIKTZl5RDvxZZOfY0M1CNRXplXvn/3RjkcT
	 9bNQvxwU58DjU+ESNE3QifbjAyyQBxGT/YjuaSH1+Z+aNg73TSU0L2/rewo5adGffk
	 Jz3p7zdw51Zbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D0BE6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640143359.14941.10117394606652386696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa3d371df4ad47b689f48cc31e66325b1a81d5cdaaefb67bb44ea7535a1b57b
Date: Mon, 22 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766401433
