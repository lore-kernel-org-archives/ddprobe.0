Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9DE12880A
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708957097; cv=none; b=rCtcgOXkfEvtA1aaqUXZLbMGdd+POjA5Dc3BaXjEF4fNAmEzE6RrlpfADK2+pmmo7IsTD/gL96CggpTU08ebUQoKjoggWtXEFPy7HRe3PIfTzq7j3cR3B/ihSHoOrCWiZeXut9qUtCs6NRxpIQ+3cL3bLrPVE6XJ966tQNUeze4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708957097; c=relaxed/simple;
	bh=czrQsbgPPK+tUn9/vS+D7a4s1ZoSA2lu9GtESS5sqw8=;
	h=To:Subject:From:Message-Id:Date; b=I11SHL7U0QtARIrTG/PAyaNiFbZDzssQt2tc1QXkn0AkOxfVtQbhYBQyUBRW+ZaFBGCMzCYWvOB4qKHipNn2IaPImbCWBIM95FjgTNJJT//F2axqoLkAXtUHfw3ygSaFMdDPaPJAx6cS1oFdP6LgTCKnHBCQGvdlk+aYPfPwCag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBTuCxY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBTuCxY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F85C433F1
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708957096;
	bh=czrQsbgPPK+tUn9/vS+D7a4s1ZoSA2lu9GtESS5sqw8=;
	h=To:Subject:From:Date:From;
	b=FBTuCxY0Net+KcKOYbPhS/F5agtT4sqRChRE2z1yDPgtlMq1PUOqAUYJ59M647VbN
	 xRz4nZ6IfTQL8JOEXDuw2cFFWctrDU7G2vM8KmadKl1LXecQt3r0OjRZOHSOos1spU
	 9MeRXE9ZN0+WbcOCJjPCBkQXL4wfmTN2xeN6QvsWcwMPstwqpTmqTtdRIYdSScN9/w
	 ErIwcNfLBW/SXq0CFJdrj5xRaDCVSxjTOD7N7D7AOOFtHT2gW980YcJFtHShZSrzIi
	 tE7bzVhCVmccpUx9qF0b4WPzkP8q/K5BiXy3Eid3Lsp1qQAIumzFqcIuwmbpVa0x6s
	 ksd8VAQtxcZIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F91C54E41
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170895709640.29538.8001505751426124693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dc993620f0eed0190960b4807054ca49f67be4ae30a3a9f1f07d08df972627b
Date: Mon, 26 Feb 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708957096
