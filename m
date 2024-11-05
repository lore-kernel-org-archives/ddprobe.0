Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A2A21645C
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730849154; cv=none; b=MAwuwxWrguBxSWOOKlmirTdDehc+oO6iMWXczdO/iJB6UxF1h5nZNynWv+m9VDSK6pzhxCiKcJSIO3sz0pYLBndOenuBy8zdt75S8ZnMAOgYVQGOTpp5J1xCyGCxwhtcyj+OCC6Ct8E90oYlU1PizrH0pEKSdxH+hSeEMoztTPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730849154; c=relaxed/simple;
	bh=TXDLo33WNItuvD0Lcmi2Ix1rBnB6kFe5ahwrJzcOVEQ=;
	h=To:Subject:From:Message-Id:Date; b=rsfQELrEbjfyJSm06qnL/Cw2uriUft/9nazuUD4+/qRMfH5sQHpjHmcSX1/odVqc0YdwX1Yn4Bv0AhzGRxXrizjCU2qalt9JnOh9dglgYo/QnOAA/TqsNVUI3azqpZkCHGqQUvHTtPqfQHPWe7uEc6xI6UzqjK6QbpQ24AnEMbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sePreTTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sePreTTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F44C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730849153;
	bh=TXDLo33WNItuvD0Lcmi2Ix1rBnB6kFe5ahwrJzcOVEQ=;
	h=To:Subject:From:Date:From;
	b=sePreTTsbCSQZW3/y6/PhNFNkCRIZphAHpajFQg04lZDKeoeoBzWJQbVhRXehHOuX
	 yvnYFvW261DUE0z1/SHhtNfqD6+gp5BhhaGwBSfkn44uD64I3j+Bm6YKi1w3BqiAql
	 SqXCrExL3btNSLOZG2Fzq7OSHKlSthN5y2Wh79g/tZBi77BZ87lTcc9yuf0j5XVX2H
	 qZIWD4yVzymQN2PU7q8sti8iBQKlzYtF4zEaa4+Upj2zNaX5rq+QsD3xRg/yA699ZW
	 EPOlOFj7kmXFODgQEQ116sDJlFwEMaBgIzaA5Q1iGj+n55ya2RYKDFvuQqdreG34s1
	 7kUYzEFT5mfIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BD8D40CE0
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173084915360.11453.149956797202817675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e31cb55c1814087169d8e1379d473ef9e67dcc216a95315bdb43de04213965
Date: Tue, 05 Nov 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730849153
