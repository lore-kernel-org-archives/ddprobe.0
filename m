Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017111CAA6
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717274723; cv=none; b=e453npmsZ/zWqksfeHBOEOJHceic6MMwQ3BI7xCzRMEXk8OAa43R4X80dyA9stUNnhQxnDtmzjOGieYtnLELG/VM/LLFdWMskwfX/F+yDn46zCOm3GE+xrtYVdS6RUaSUql1D5BaQ0+OSww4cw25Xvo9iDEJ4hK7wAa6TX/Nw5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717274723; c=relaxed/simple;
	bh=zCeFWY0UC+igemBu76oFUXWMr4na1vVLOej7Bxx5ui8=;
	h=To:Subject:From:Message-Id:Date; b=RvVWl4bfTxT2hWry+eQtEJEA2nsMkhMr5U1w1leQWsefgllVbqCeh9Ja89uM50fzzUjLJR4dXJV3rOOY/O2VnVEnL0mIW8dNcqjRjrZjK0bjVqF9UwZd0Khd0v3R0+DQTJKySwGFxBc9jSZJWFneN7s/RPdXMyA2fibpzVeddgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2+pF4Oa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2+pF4Oa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53EFC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717274722;
	bh=zCeFWY0UC+igemBu76oFUXWMr4na1vVLOej7Bxx5ui8=;
	h=To:Subject:From:Date:From;
	b=H2+pF4OaCPn1r0T6GCpllotDg44boafAzEAfnLm6zp2wdWBIknX3SxL5VXaAfcXTr
	 Pr22nPlCplBwo38+erETf/N1tZfeTuQtJtew4p6TeFHvHxCXhbfAkJ24NSHahd9NjU
	 bnQMly8PRuzfSiY5I5/aIX6Manfoanp8bVKaSp4YOiCyluuYxUYv7CXgbQEyYc6vxP
	 FBBlb3L/QnW/I8YNsAV+V8XK7pgU6w6PKp1jE/gSEeYNkFGniH1kNEEfzOo5n5LioW
	 XfBvDZ0sS+etEtn3AbNfSNcmjZX2FPMZOwtrF2MoxrBanAy5Yxy8nMIgLXKkDG984R
	 gIbnWVrZHe+Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA5B5C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727472280.28864.11437188725448208190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e102138081a8106f661c24953204a25880e3ea80b94acd9fdda37ba885374672
Date: Sat, 01 Jun 2024 20:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717274722
