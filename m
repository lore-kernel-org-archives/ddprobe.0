Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0449A2E8DEB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766407434; cv=none; b=YZ6DXry66SJrahBOfRafmUwh2VVLKbJhVIQT3KRpxBRvopZyuTqiYA61EfAYmU+XlRauRIKiWQar14RwAqHN1yEEqVv9IjEH6QkUBIKqgBcVN90mkEUjz3yhhmaPJeijGxMjrDpex/VlsVMkhrRkVbPAiCM1H6aRRQo+HmCfh7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766407434; c=relaxed/simple;
	bh=eOh6a+OHEovljaxkM/0wVdMmJhBqb3H2iwVa1euMH0U=;
	h=To:Subject:From:Message-Id:Date; b=B8t7AUZiZvBY5HVOzocALF7a0J9B6OEH9JQXf24C/PHw5YohKD6L/ijfdMA1LJDtwoqwnKtVUgegnMe4LCDEM8IVT+5U599Sa2CTchiTmDGyqys5ZVar0qIuoOipwRqmCK+8PcFn6Kfaa4JJ5nYwKpXQVoRxcT8B9VdbAmr1r9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTKsrvae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTKsrvae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE67C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766407433;
	bh=eOh6a+OHEovljaxkM/0wVdMmJhBqb3H2iwVa1euMH0U=;
	h=To:Subject:From:Date:From;
	b=CTKsrvaelVu4yWbrSG/x+nrT3x+kNOAqdoaJsHy+Z2zII8nGwnFG162HJJ+jJoPqv
	 joPv9vUpj0Lv9oWyMB1wwrkVkcIMcLukdeh0TbRaqXzN5o89dM+s5WMXpuu3BLvaBT
	 QxNzpGy/6wFbDsh6IWX0t04lNLOPzS1RDIGkfgnmIjB8KMxLEuVT6xkwVdcghh3P54
	 lV1M+N3f02stUb9dq6kL0G2pXr7byMwAHgQ01Flg4KR4PH8IyQEB6d2AH+UAO24mmG
	 EL+M41d5tm1j2RQCof8DSwgd9GU98LEe7q5nwxwq+Dl02DHxXZDy+RtHxW07BEyzDk
	 S2jG3kC/u42gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E4E6749C
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640743357.22853.13007281012336752752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ff8decba7d860fe97690ac2b1e0bc1ee0f9d20506d2290e2d791d074f582e3
Date: Mon, 22 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766407433
