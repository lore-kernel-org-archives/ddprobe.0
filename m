Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F419113A899
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718719763; cv=none; b=s6klUnHMXTSzWjjmyPbYJZYQVfzTObBWT0N9CiA4IzqrjO/2BmyvBytvxWIUyZaOGyzPsgKQVGPDnhJhvcs4XLPkjsceOR1XO5QgQ/7AZT0Dl84giJka6VtLXxv0RHvOOnLNfhs0AMP9Y7AL52yX1LH4VBJfppMibMWMbm3AatU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718719763; c=relaxed/simple;
	bh=yD7qe7NlchYtbXLNo5dZ/+R2rXv/NbYWGG9fvRCDvMY=;
	h=To:Subject:From:Message-Id:Date; b=RhCJOO5vUtj3kXiyywulbnNwyVtcHaoJQoOPBXR88IwfWuQ9SGRLS3zIDCLpq3e0B7RC3PmZG8BAoJ1DUbOjxJpcwF1+SZ9KNRe/Sk7fajQIwXlpetIbYloVros54Be0sSA/nbidtrKW50fbVgghiik+ufqRR3kpQICTF9tigwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5mTBdB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5mTBdB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A87C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718719762;
	bh=yD7qe7NlchYtbXLNo5dZ/+R2rXv/NbYWGG9fvRCDvMY=;
	h=To:Subject:From:Date:From;
	b=X5mTBdB0gITFnm8KBp5ybsQjB8/LoVPAqZy5A3s/2CezMxXLNdsbHH+esZGDvvyM9
	 FGw07MayzxzGVSnC33B3/5/kQp+ji9RE0GuFi6K9vjHlJ8DMJJenFOpd+f059qxZYn
	 n0ORUFG4LgJt5uyTknS7T6Fm0hBXA2yP9QWlJN/YPToKieg/PgRu5dHBNgRJ+cl6Ua
	 aZ13h2AUlho03slJKPGDT63zXUmiqRvB/9UdzCCKExHJZth1/+0CvGvknLccmd13yU
	 yC9Pg0rjfDK+mWXyA7jvqIo89mTNN3bMyt8NSE1V1JOd/Sci3q/uQmwXT0D5Nm/CYD
	 lEwm5jPtiYguQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6CEC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871976276.23637.11907164768704786792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b5c7b32c3abd73502ab71a35d1fc529aaa3209b1b6616ef8ce03b7bbc4fb798
Date: Tue, 18 Jun 2024 14:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718719762
