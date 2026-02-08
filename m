Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274E03242CF
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770580434; cv=none; b=jFj5JMqvAGaSNY+csm9+bzCwDU5KKgALqb3Fk1LDE7k0Dh0f1NyHlP5ssPUEjeHe/fPQpcgBLCfeDTGK7+qTa92eyOkzxfFQLqY7UV+Q2XBv/WjltVBIJPLj5jvmpP7gBJ36WkKM0r5AtVlTEFSGoTsCj1MjpzAQjWZFDlfMnms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770580434; c=relaxed/simple;
	bh=ppS10YWToE7SGQ/wlhF458Zff3jkakVfGlLw1PT85jE=;
	h=To:Subject:From:Message-Id:Date; b=LV+dnxTYnJZ5m1PxvTqvqrcJL5YXYd+Q+tDmn8cbs9haNT5AOc9zdX6FQ0EX0cRx/vbk1cJl7oqU7qMJKensnIq9Yx+7Cf66UmrUgX/HSQupedLUCMdOG4oGFMwMk3NAYvd6/BWBcU8SRsSarOS5HyCAtXIYzlFzueP44EbBx/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpnIpFqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpnIpFqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6ECFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770580433;
	bh=ppS10YWToE7SGQ/wlhF458Zff3jkakVfGlLw1PT85jE=;
	h=To:Subject:From:Date:From;
	b=NpnIpFqswgaDLJBffkfUEEhR1qjnTQhMYDU4kGjV+GDUeuLJg/NxRZ9wkW7rLrbSK
	 VbUHyyyu4UlSHJZoj9r+Q0OhEJQ1DWqQ6AQTKaLVhsFO68rkUDsu424lZu1/GZz7k0
	 jbuF94ojzlWiabfCA6oJnnDBEGOnGXEC0ydQieANrrSmteWsZe0tZfpL+DtuKXe4F9
	 nulnkX8jvXYz2Eh4HlygAYR/Ao+pujd3xbtTL4sH9DIIcBZwYYEtkJTlfaVyVZM8yQ
	 Q8kwaBROyxtfz1jkePsT1dGBPjTCyqd21+xZUpyTLmTfUA7oqsAl/Wj8AOVAbXns04
	 4+VK0+i6ki6JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02DEEF06E1
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058043363.14542.3778095896197545503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc5ae044df9aa0657dc341c5bc7cc74e576086bb56d9602551864e6f6dfa6a9
Date: Sun, 08 Feb 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770580433
