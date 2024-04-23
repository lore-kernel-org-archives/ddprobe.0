Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482D613C817
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713886223; cv=none; b=OT0dc17tdZrNhhYutgHUc9K+YHS4TJ1p9qduBEce9gW6rfLFSekuS3OZMxsEmCMBJpVU/1HuKszpkxvlHOgSnFlrdvFyZDth41AQpA12lIBCg+rkCPB3S7tQbrEsAFK9KTphjvAZ97iL6wZTKQ+GPma1Vz9LUCLHUwtgKGI9QjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713886223; c=relaxed/simple;
	bh=up/1TW7oa2Kyx+g0I0OLBSXfjrsqf4j4QgYgBicpdSc=;
	h=To:Subject:From:Message-Id:Date; b=OQMJm52+M16T4gX+mtf9APGQmT8vj7xnfyz6X960uaCNrWzVI9WXAda5RipNDpEj/HiXPcEIiaOT3LWIORV470opQGgYbmKERUmpuWQ2o9uC1KGJ/dvuIVyWwDs07r/d8nQJdFCp/ipPe910n9us3L2xedukMjWPG2gUXfYPWxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwqCew/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwqCew/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB688C3277B
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713886222;
	bh=up/1TW7oa2Kyx+g0I0OLBSXfjrsqf4j4QgYgBicpdSc=;
	h=To:Subject:From:Date:From;
	b=uwqCew/JdDk/woMRd1IpM4NGxepJ3QIWLeT0hKtbmDF8xNxqfLk3Z7uR3Rp5oigSA
	 WqIz5aY9HA8Fg+IAlIuEgm058BNtYsh0uPg5wKBzPtv0XxYX5/30nNemmREsonjwME
	 vtLlXuqnR5hUCzlXCzLQbHqirQ23x5oEuOjpgzrJuKkzZjxebijLUAijfh2JQehDA5
	 B7kzuf6hzFmyZulUWIWq7/BIZLCidhlYbzRfU2ks58T6QAX1oCCgt6WKmxwqdCGWP8
	 BxZrZx9/NSr53qL5WQjEzW6bC5MraDG2g2eSXrLI7TgBsYGbGqquMKYccW9dRoXq5r
	 CGTBVRUJVj04w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3978C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171388622278.28236.8210667428746786573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121746cbd475060130906b74849896d29ca8cdda051b631b807be02e9e2cbb78
Date: Tue, 23 Apr 2024 15:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713886222
