Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A2A76FCC
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720415783; cv=none; b=soO/fjy7gekUfrBQzGr9gvats5JeSet4bS5Qy4bX+Vafkuzkucrg9B1konW96JeijCpm8w8dxnIER/K+7GnSzG806A27eplIFZZuE5rtm2vhYj9bAmCQtTQieJ9sk2qVS8GGIwzpPPHwHRFU18zRN6SoU1OwlK5+LuuMLqdKDjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720415783; c=relaxed/simple;
	bh=yvbJBkr+WMHZ9PMg/0ZKTnt4jv5PeTrVsaoEuJ596fU=;
	h=To:Subject:From:Message-Id:Date; b=FLYlmzSyjWdyZ8I+0In+9KY8khasmcGzIce8sGgCyriKkEhraCJjzMQihzc+HZT5z/7fN3oorQfx6RPFdxmU+TsbYw9W74aHfftK0s/mLs3OtIR2GIyqj61hO7I783pfbw0v2sifT8+UB9KHqJTDdEcmUXJSvX481MEn5dAGzU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Addnrk/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Addnrk/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17AF3C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720415783;
	bh=yvbJBkr+WMHZ9PMg/0ZKTnt4jv5PeTrVsaoEuJ596fU=;
	h=To:Subject:From:Date:From;
	b=Addnrk/bEVGeUJLYBlAntc4tlBvQwpZToCXHXNbzSMPKzTY64rqOHYEC2okhJQ4ql
	 tUXipqrEY+lfjd/pbgXai+PD5wvmOwt/1lV7kH7gDyx0xJnSC8ljZTI5a0KIIow9cL
	 Vh8TmK5sS03M4brRpwk6xlGfwoCgfqKGa/jc2NHwZbT9oCizggvRCNrMerUNdwn32T
	 KQgRDjBjVpxjHLNoW3bTh0UNWjbTHosPDiPmFWdDH4oyMFzuQDqEJ+7XSR3XjIovDU
	 UFDauWapudU1GT1YB9vUPr0rSnMXE80AMFDqmwDixv2qKHQb1sLyNtKA27A41T+mpm
	 Y36CrR8FJE7Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6A27C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041578289.16036.3846008691848613401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b1be5a4f28a751d655507d8157b40d4b9ce881be25fedde516772d5c2b46c6b
Date: Mon, 08 Jul 2024 05:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720415782
