Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508A31C862E
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749903595; cv=none; b=V5BXzaEp74otQwAEISpTZRGln8G7TIryIT8S6/CMtZY0hCUmcnMKTbv1dxxDP9VINcRky3HgIYH3zOZ8D9iSD2jo8W4Ja9/9eMEgP9aBNDjxRdpJK96tOB4B/MPX8lD7+gKd4D90tyS8/L/jFOnTvHSODyJRs5eWPCtFfdNZdDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749903595; c=relaxed/simple;
	bh=Ex9DSlibtpam/30rEA7aT8duGvtrzPXHHFkyM0Ag+Yo=;
	h=To:Subject:From:Message-Id:Date; b=W3l3GGROz17axy99W6XRWJ1Fu+KGagsyG1c2lZ5ptiszREesqnqdr+ymXRXjRsQA+uZSjmIfGQOVq+pfxRlEnm+Z9u65gSE+5qZvMSMkWqKzNmvnrEhB85L8aJe/HCWGBhAzB5GS1nmxE0Yp0WU1xx7Olg5lO1JfglvC+9VBcqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojyC+iB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojyC+iB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D07C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749903593;
	bh=Ex9DSlibtpam/30rEA7aT8duGvtrzPXHHFkyM0Ag+Yo=;
	h=To:Subject:From:Date:From;
	b=ojyC+iB9gq7F76r+jwvFfrl1lhc156GHtftXH016A+Xxx6RUxRFJJUE7DGYuWpn9M
	 gap/nzMXZ0tfxaWquzpm+5qiisKO4qUVS1+hcpoU3LBurmKt9X6TEJdcC28KvqIkZV
	 VtJKvOD0e7cX+sykBKLNSkKbbQHJ8xzUUSrZSKkj4WmVyR2ruMG94/G2iJ7fEaaKFx
	 wvNdKsfiSVxH4tYsnMa/5DeV07f+ATNDpJEsMhh80UlktxlKSNuIMuZpWoObDyaatD
	 3dVPgjlYE7l/6HWgs9uWb3B+GGwjaoai8cGjrNFLbeEnSTBFNtQRj5GHW4wIYBAT0+
	 uQs0NPT3N+A9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1860C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990359371.22761.5962180213634627106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7d64c3ef8384d8283c04c274904b216f5426aba95da616e7ece9a95a11484e7
Date: Sat, 14 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749903593
