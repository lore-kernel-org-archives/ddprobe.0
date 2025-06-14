Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EFC23DE
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749881994; cv=none; b=MRwFEw8Nc41s/QTWusf6eyKwLxczLw/4hTcNhhz0OfdouOQjCUIImOp3IP8QjgfMEphhdsmUtuCMscXmVJ2YDjhE7PH8757q+DHz0US4/3TYSKWqCXrGzyVOohyEarPmgr4YdZ/3ldarRo9yXW4ewcP4R6dmBFBUZPmc+VmVRtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749881994; c=relaxed/simple;
	bh=BupGgKJaVVMN0wLKdfioE3F1YyL0yk1gvy7COPxMb44=;
	h=To:Subject:From:Message-Id:Date; b=bYHKcrafcS8QbtbPXcLLwSY8ywNFNlP6j015AMonGSgEBGaoNqdzlNNUZg2g3bgZoojFTrhI0C9MP0H9wiK0JKzUfioOU82SSW0Y7mtUisdjKF79kLy5qaiOPReNgYfH+3YlSLQAhXroVYkf2dBQS2Piklfeo6B4e8KXG7DT40M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJjvZoky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJjvZoky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A913DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749881993;
	bh=BupGgKJaVVMN0wLKdfioE3F1YyL0yk1gvy7COPxMb44=;
	h=To:Subject:From:Date:From;
	b=GJjvZokyyhF6MI4PzjK+NrmozIamYZ5aJfKa6L5cOYppU2jPXlOhlOReIc49rfMUH
	 fuoOlRy7j1Bg8p6vue40U2CIIpMRRMkgwNxRwxJoDWvfYKzB8DWp61Dhtb1IdqxfYj
	 ORTFVu6DYPPE/cu+xWCcdtY27Ot/vvcmHmeN6qTT1udcsNJGGVAa+6gK39ez2Z8925
	 iVXEjmpiccAc7JtRt5b68QLr/tdgiC5kmfLr3wxCWO0zRR+0bzsRCvDYwi7AmkVcbW
	 yLgjTOEzBXdUSiwm15dHNma6nfYttpafblCbAKfDf3gjBAgW7q+1S+Qq4hW1ZxxYDh
	 c4l1T7vVXuRdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B02C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988199358.29986.3890660780135986373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538de909d4e92b26771036843db7e3671adfd6d1a0572db52b44ee58b12ea307
Date: Sat, 14 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749881993
