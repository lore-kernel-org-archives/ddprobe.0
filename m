Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2491E18A6DB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755460194; cv=none; b=bJNuOpp6N+Ey0oPfBjRNIM5ZOaPAwgToa8Ez8Bk2jqs1MEOtjHXNTbvZZ4rx9WmK7q3Q6XLbo3hN1Qep5e3LnYstFudYI/RrVTJVkmFUdH7eKOw6lp6HcSOnEYvoSXcKKKhl0aU12/jkdITC2fp//lxzW7aOggCm2KbA0m5Uszk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755460194; c=relaxed/simple;
	bh=M3Ev3uIGLKb4acQZxbCHFnSrIaed+TFMMwYpo1DYZlQ=;
	h=To:Subject:From:Message-Id:Date; b=nQipwy023xYHdUPBshE4kD/r7N3Mzs38mNyq0IqYj6ieccG/9Fv64OESmOxA9RY0wnHLBPTf8UXcPkPwhIuhfakyRjgkCUZFZdw3N7xjGNJkuXhjl6wVFrhDXb1jQX2mUIaJ0Vaz96tU96v+gsZ6p+wJwoL+oXpP+RuT0YYiLhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyCyZ1Xl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyCyZ1Xl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64ACC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755460193;
	bh=M3Ev3uIGLKb4acQZxbCHFnSrIaed+TFMMwYpo1DYZlQ=;
	h=To:Subject:From:Date:From;
	b=jyCyZ1Xlg2y4yUUJfKkgMXAK/nQYvG9cntqA3YpO+s1d+LXe0tQNM6HqDY023oslj
	 vt5KfEYlqGod4yhWduPWmsnHpo+rh0KFej017hrqleq0jrKBqcVbCdsYBdBFexUpX3
	 xhz0UWGhOoJqao1loeuhrqKQtogUqrBVeZxTz+qypwYdAP9PTp2XLYkT31B4iNrEzc
	 AGYSZLQW9mM8IXn0zS4v4rf7UKBW/cmQyZeUIidi2vfEXD7PT7A9UbrbNrslC8cy1g
	 RJyeCZcJp7b50IM2Y0endwvABqMnV7h/CjMZfBrq+bhjf6rjrt9GVxq3WKkiSnh3gR
	 RASVA4vp4oC9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E5CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546019357.15158.18203818470236366064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b52f417f50b192aab33adb5d6c93b78c768d8077ae651e24827ed3be06f3559
Date: Sun, 17 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755460193
