Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AC31F94A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766108034; cv=none; b=WLzlxIQfeqdG9uQT0tb7fmiNaSOEaxnc/8d6JiG3719/UrXhW5AWnAWLw+HFs0VXk2ySxXV0g0uWZsSLit2iCEV72BbV/jScQ9OarPB5rFh6oVry4giYrKs8anjX9FKO07sjL6LJogMPQAZrIMMQpZdHKGF1T2FZor4CNtEoswM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766108034; c=relaxed/simple;
	bh=8nFtlzmcC2pC0b0PK20ulMuxWYvQh02ZZUNIDIKcmd8=;
	h=To:Subject:From:Message-Id:Date; b=Vf+Udow8HiEP6evipmkc3d7vKOhvd2mRxabt1yEfl6Pjk7jB3rGO1CWmxBY/wpM8W0nEXegxuAUBCMAwu74mOXot21bsfTIE2pxlBjujIsmTs4JUzXqnR915cRgvzhY6rzRcSmPaQrtiGMbI8K1BNSC876RDH/PRpeD1Lvqlvnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afpHkOaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afpHkOaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBDCC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766108033;
	bh=8nFtlzmcC2pC0b0PK20ulMuxWYvQh02ZZUNIDIKcmd8=;
	h=To:Subject:From:Date:From;
	b=afpHkOaCt/yv3uX/8qQZwEILEssiYa4kp1vIMN2oKJyDvK5Toui3QqzcTlTCyFrAl
	 HSZLcqSROWSz7ndIC5s5TYoVR8OddeqEE2WXomSWMXHRg++R1RWUgJGstcY2ilb2tf
	 nzWXT9gPPeBjlR7rCkK4j49CuYfrjvSwx5IyYgwc55nw1d1iTbkP3y76CE77HAFc9A
	 NgBtlHlkMpF5RrDPDu+YAGtC2KdsKlKvMTzZ+jotKeFAQ2MbVQBz6FZ7TUM+lPnMsu
	 A2yrp5pBAzqvJXD5NztNElPorI6gAl4/5rgQo/e85JfTLBpTw29ZJHjDgIK6iGYZZv
	 Ok69aqznh9huQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B4FD711D5
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610803358.26171.6423739743544437745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087626e7d6e58cec9ed5d717f4682ac8c5ff0289af0b2f5ab2d71cc5afd7d115
Date: Fri, 19 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766108033
