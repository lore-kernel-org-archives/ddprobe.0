Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F7F18F2F2
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723193154; cv=none; b=uTRhizKVYedqqrDOWvpualQ+lG7BagXPs2YPo/l+iqONu9ADKQNZCP5lv2ZiXZ6vBlsdoS4W/k66+kqJG+rLHH9hMeZtFmld08kjk9GDqWChbKLW9n3ybmAZgg+cgjzNmXwfqIsO8yrEUKh209S5xo4ATConN6CQuFIT1W+WHwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723193154; c=relaxed/simple;
	bh=RFFVmYt8QvkdOha0IwQ6wZP3CUR0mp+6x0DhBi8fKGg=;
	h=To:Subject:From:Message-Id:Date; b=prTbCW4B5H3T50BBJPRI4Q+5RgxIVnc9yfp661DWUg+BQI1OTWuBDdw6nHBPbQZ/5eQ0fV+yNiQIK5/UKL740AHy3seOkB04gqo6pCey1z6Nuvs6V4ZGR20vg09t4v68A/WupebwPJxsgF6+q9LwQfG6H2QmHZ5Im+AKI+IxnfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrpueb1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrpueb1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B30C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723193153;
	bh=RFFVmYt8QvkdOha0IwQ6wZP3CUR0mp+6x0DhBi8fKGg=;
	h=To:Subject:From:Date:From;
	b=nrpueb1mHtmS54Vym0HuqeVprg0OfOFogGyaCqzSqRsnGQfqT43XmA7clj8J/mR+Q
	 abJdNwuFDEiSInncqSJYi8LcW1Pkvg4ECw3lygkBpJn4dNSZGSlJhzTXnTlCdzfvJ4
	 nHZNABWG5zbxovO5W6iBxELTfiTg/T5MV9/R+rbgIeFOxEV4MmrUD6FHndEMOnH5/W
	 oC5Zmfqf0ytWz0xyya3CeFSM2x3y4UhCt+lJtg6AIsMDnJ57OLHXh5mHUiSAJeUoe4
	 xpxWSs3+N4nlyWkXuuqRNgpWK4QbYGvTcjxuAQKodChGp9CznC2IcT36gZOmHEiYE7
	 ukHWIGV4Q6MOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A34C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172319315364.12522.6852533612599892081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107b090d022d2d783e5fb95066fbffce4ccc4517bcdefe24783bc85f1d357217
Date: Fri, 09 Aug 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723193153
