Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26585286D55
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752128994; cv=none; b=CpUwLmP7ex4Bjuyw0p/O4kMlzJpX6IS2r9U6r1QvDCJH1Y6Liz988jcYL26HNxx4VSupnAry4ZfWeHawRg8YixQTso2ZuXHer1bqLMoTuNMfVAmxXBs/pV4Png23/dcHuXRvEQJNJNlbJOzgoKOhVPFibEta0aMCYqm2L7+xK6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752128994; c=relaxed/simple;
	bh=4QUoQTNxk9ijmO25N6/1g94Ro5lOoeQRunVAPCnSlWg=;
	h=To:Subject:From:Message-Id:Date; b=enB96ZY1ot9Gn3Tppr1vT93tESG96aUFB1utUNmKHOroBo+8rdwZYFlyL2H7wEbQMxXZht0dLCDefJy8LjpXyyWI4Dl663WehXwliWn7eQV2dVqMt6YtYjBlAVVx7NlAzhtgTA2izjU9cM68DnRTfKu996MvaBBwqUuGzmQqdtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLovby7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLovby7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2594C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752128993;
	bh=4QUoQTNxk9ijmO25N6/1g94Ro5lOoeQRunVAPCnSlWg=;
	h=To:Subject:From:Date:From;
	b=NLovby7m8pbbp+EmrhBHVnS+jHWn9MUoXcsk4Cyp3zF+Cx7rx2otOa8LQ1bdBU7XT
	 Bea4UNOWadPFG2slusndLhyLuqM3u3IjEVLSQfwfw3ulVGIDUm63UoOifpf0iHhSwX
	 2DPDiXRB6u29VqENKRBq8goSBSniNFjf4IywVshIH50jabCw/b3TXqU0mThl5uPCVA
	 fvuF2gmbezA4sxGv6erIjMTNHp+iM71vW7pukpJ4eSoK7mgMOx6JNESmbnIHxd3aNn
	 nE3LJXunq6BEvhWj5iwBeVIZxy6ou7NFjfrQq3PLv1SynemZHWUV2/NO/gAIgJ4QYc
	 Vrs27XuOsyyJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A00C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212899359.11715.1043019423385841530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250924cb7322612d42baea07232dce73b07f00818ec29a716f86f7b5e8f9bf65
Date: Thu, 10 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752128993
