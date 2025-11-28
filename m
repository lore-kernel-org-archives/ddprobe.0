Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332BF289367
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764371574; cv=none; b=VUT3KF24Fq0NuHKLzZ+n29bHD1fcfnmecRt4oIhhr427MscFtn9T6L1wwK93AzsMR7J1w6rLBiDJQk3KUkbX8+1EbVGm9YLCShy7K7nlBKS1444C4mm/vZ1sLxdSE3RCblu4CNOQJUT+MRM3P5dafZtZBBfzIfXkCPMzaAgRP3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764371574; c=relaxed/simple;
	bh=v85s7uOcLDjA64aqKBjsRaaXG0qGt9MYcq9AfA7fzMc=;
	h=To:Subject:From:Message-Id:Date; b=TSi4n6z7JRqiy9IXMKrhjXdqiTvzOTZT4vqOSo0V3yse37d1FH9aM9RMDw/Xq9EV++8iWnXUHzQAharWeApxLyExWOnEdVb9qP/4NDWbCyS0A9KL0vvBf8V1vb2KBderRFmYVWPhgrQWWXGobIOky9WxSWiLHRoXmIA27yj+flk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7DQJm35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7DQJm35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8D1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764371573;
	bh=v85s7uOcLDjA64aqKBjsRaaXG0qGt9MYcq9AfA7fzMc=;
	h=To:Subject:From:Date:From;
	b=R7DQJm35R/+Zpyl9LCCaGIj0N9n1h71l9hSiqJUznmE+siBMTX8Wt4DMap1mVY88+
	 PqZX5G/d76nrbrTwm68kDBjreF+/v/N4n6UKxCpvWu2whMm/r5w3G/A88i+d8asT1c
	 pS+mo61McOwF83y3uTwtnlMbjRwfv/Yn7OvNvvADNIBHhNSPchp3fRuNxzQ10gOPLp
	 5NWQEiNNiUTfE+B4l/N+ggiX5hA9Au0uWNFdgpJ9+OJN6eTq+XhT9LIR4b87FvgA5q
	 1qFUyeJkGnHsFPok6psw48iLB078n8vszfiDWUOvRfYmIdP5ZoWea0cidfrkdJyQZP
	 TLgCu7bdhg1Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BC8D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437157359.25669.16924746647249167976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ba0f4003bb7f65f38dbec9f7c3b2b02b5cc37b63d47e671fe54ce0d449f1a7
Date: Fri, 28 Nov 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764371573
