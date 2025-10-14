Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2216B19F48D
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760404194; cv=none; b=YDW7+Z6buYWTL6WMZxqsg7nW0hA2/y1Z2zP3+iiFeTQoimaIF1xIIziSopPNt9gjO7l6Wqz95jeavSq0Cybe7KE59trZaHfUDodn8U1MGeY2x+f07oppbFrdRMeJv0KlLkUo818Ddg0u3DbhSULeyQTqIxpzgOAkYOqbQqn5Ja8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760404194; c=relaxed/simple;
	bh=1hcDsuNgfnnvYDJPS2/hiIV6f1NxJ8DAML93P1ArNvU=;
	h=To:Subject:From:Message-Id:Date; b=M9M7KXWCVfjqvLB2WfSNV0e6PaIeG933nnimT+W03FhHy2CEMCp+9p7GrOOjhaHdq3AWlm7Dn2ygJhyeMO0dARpD5CfEuTjGnSgE3HvuGHHk8oDRvZs1lBgg9jHLBOh7H0FGNafQxccLbPYyqwlIp445jBu92YIOVZ8QQUnL1OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3YyZ/0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3YyZ/0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B26C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760404193;
	bh=1hcDsuNgfnnvYDJPS2/hiIV6f1NxJ8DAML93P1ArNvU=;
	h=To:Subject:From:Date:From;
	b=s3YyZ/0XXEmbLLer5ou6a9R/GjpAGFkIarOpsVQGtpAR3mmFl69hJ9U1LPVP3WOQU
	 tXL1mfyLd4WtWWIhX6lCTJ/jR86BUBe7f98mtIVbYk/eXrG7u9Xh4kNkNs+8hQnUKh
	 7EWHU5251Uk513ExUZTbFrBCwONkdD+4tZ6AwFarJRgUQd5iIl9wzflIqT5yrPT8fT
	 3oZDPtyl1CNv/G5KbQYq9G4KqlRq5etL+lRuG55K0jfqurxPSDq0JexKas/ISKedih
	 ChD5Mu9pLDsnecrSBBM5T9T7hFhW1y1Hy22M0nKf4RSte3ujO9ldJXLpesfYFg5v2z
	 BMPKnE1olLtYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C26CCD185
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040419357.29919.177627661141062100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d7e77a4b7ca2a09a843074121b31ae90581f2276401478edaaa2e3a32c547e
Date: Tue, 14 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760404193
