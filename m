Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188C0143756
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754276394; cv=none; b=bZHh7abC7R9YJSh0+VUOIAU/5gUNkP+9T2D/S6oEalipxdKmbeWp79fPZKXfK2LYMgxTlagYF9zHkDgg/JS7MEsVNW3V7R78gnnnZ9vFTH+CZGgVMXSqiRbqp1xJ+2h2J6pqy3NyF9E4kEK4CH+Li31F0Hdqr0c/ernJpFD/Zds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754276394; c=relaxed/simple;
	bh=W/E2a2R0Rr1VjgwNal+OBJA4qgbAwMrKJGc7yXe75NQ=;
	h=To:Subject:From:Message-Id:Date; b=ES296hMIFPZ3fcc/s4ZlQhy32NHhvs6GTt27/v3bNlg4t5DYdWgDv74JBHI/qj4jtrBC9RvlyncZpR5JY+FYeBZzAyo7Q1HFKKvNRuNunYTtguY4u9Df0zi2ep50xTsUKfW7buX5aPJ5gOVcOrK51wpgWgdpGAPAVqLdygnbzbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blb0LdRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blb0LdRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2159C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754276393;
	bh=W/E2a2R0Rr1VjgwNal+OBJA4qgbAwMrKJGc7yXe75NQ=;
	h=To:Subject:From:Date:From;
	b=blb0LdRcDa4yeFOiI8UhZ5S8AsonLQjdknnlqn3ujD5QfCyBXCe8rPt+aNyjf3E9a
	 cs2XNjzO1WMyRXWIZtnA+3JX/zC+wLNg3VnvTjjXNuJS1tKFEC47lOIJJ8FSE/avfD
	 l/buHf2dVbAfL044WJIH8UlX7dSU5fZeS/8f8pX89E+4F/DY/GTW1KdKqfc/6gcuSr
	 w/2rHrDC3JLpccP+94xk1p/C5O9rUjRlmOXyJyBR5KwREQkSqy1K1w4OLpO/dPs6+K
	 prq2HGxtedgkamwhTPkBOB9IxP9nI+aTA6PP87euV50hyM0AjL5wYd2meTrj97rNr5
	 O4KrByZAuPGPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCAEC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427639357.28519.7435185745785548207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2a69c76b1aed253281e360e05f61d1c1dc8bae213043d0e6bfe8178351a513
Date: Mon, 04 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754276393
