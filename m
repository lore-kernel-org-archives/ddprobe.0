Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB2938F949
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774500294; cv=none; b=VUE3vkCn5qR28fzXOn3EFiS9OhVjReYWNOY8P01YEbRKdccUQLslwYZvKjdYKs8udSt7EYEFHdOxS85iRKaCYGFuWFcboHnK33AxewEbMk2i5UJ73nCaUW+XTBkPNEgOA9bjtjtDPtXUfG0s0Sw1X2Pw2wU104wtzsweKSGyEEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774500294; c=relaxed/simple;
	bh=fnE+iECA7WC6Udjbr4lsz0KLWw0zVrl8NSaBXG69JkY=;
	h=To:Subject:From:Message-Id:Date; b=MwFKe7t8WKKr9CTA7alMcb0ahBZuBWQ6XcoPKMOD/nclXXO8C6lNd8sskYqqasxqL223jRKRJhZru6njt2ke4xzrb5DFD3vqBQ+bxYf1xxwAMrh/dcWwM97nqfHAqbCAJox8k2KmLsmYQ5PIkVeU6Nzna3VdMe3xam3UP2p5BYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLSEza8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLSEza8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BA4C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774500293;
	bh=fnE+iECA7WC6Udjbr4lsz0KLWw0zVrl8NSaBXG69JkY=;
	h=To:Subject:From:Date:From;
	b=uLSEza8CfTLCsOPUVlTUynFXLchIx/7Wlki9urv6LMZjSFJKXIfsCacF51AR96Rf5
	 V2FR4LB+FO4JIMpUfuo/cAXatL6GuEpAfaaZDVJYznbad8C26OsUZBeKboEs0R0AMC
	 sIm8kPyXov572AMUKz/mwwxi80R3C3vPGWt/8zbVT6GxS3vkF/2EATgT1d5sv6vLJX
	 mNWUJd+1IUy9VpaSjgLsSZTg9sEP8mdELo+tsG1GCf8YfPes96Ozl4seC+t/Ri98JU
	 p5a1Do//U6z7HS0b76Tsh0Gaw87M7XxNaSMPlsJ8Gi6IJYwKgxmlKvY9MH0aFeHCdj
	 brNPIYD4j8sbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911CC109E54A
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450029358.32168.13705628820418130878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cdbc40846d9882297603b9f6ab99e94ce51784320094a5e632d0a92441d2b0
Date: Thu, 26 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774500293
