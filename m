Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A5F323D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749239994; cv=none; b=W5FXS9z45arRgTk8hSSRvsKR9518fd3lDR9WbSqcp2eF657PLlOMPj1eBTk1VSgk55oHeXAuqE5/YWm1IT3N9UCAw4UC1O6HHV2F/HoBsWPweGuvoU7h7ndypZOjtG5JnZXLBQR50SEPlzlKOi0RlO6DN4EKkfMk48fb+hCu88M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749239994; c=relaxed/simple;
	bh=cBicw0qNkI1VbBCg6CdKdhc40brFGlAIYJNDHPb7CxI=;
	h=To:Subject:From:Message-Id:Date; b=ZU36MUCayvxQVm6ry9s0mjFlYp8mxtGZ8MgqhCJlMqqGNifdwJyyW9OW31ZYYh6XkVTcLJoDk13WiOVi/wImpkXL99XOD4QxFRcvFetG5a2b1yx7zWbQv0GnCJmq5TzAfmtJR3yf/uOFA90g0s6ZuHtBPK+LTfkX6cYZ/LvXknk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIW2J7jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIW2J7jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3AFC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749239993;
	bh=cBicw0qNkI1VbBCg6CdKdhc40brFGlAIYJNDHPb7CxI=;
	h=To:Subject:From:Date:From;
	b=hIW2J7jpD6gWD54rYtBI/tDIrrZJipIbuY9Sh9sOiszDe7O7/5Z6jA7876MbZ/uKu
	 PjUsKqHXdg9lgOKfinMsH90A0EDdKKgquNr/j8g2/cBwtNCiHg7aE3LpevyqrXaRcK
	 cb8hYd6eUlAfCsbGNcxQ6E1rqOaGeaDjqLLXWTRlBEn3/i5NjH/WAvlLKJBVz/sYFH
	 WwytBYhnoVuNQoD6dC0DYEAx6jG2k7WxLq9QNfU3yLhwXtIa1WVxDs9JnbRgJcUWTO
	 Kh1cNPBvpfq8UzMIlmauJsWPojnUxqtaOQMBsDZV2D3D/1xVaa5jRvzS/iSrqgw+0Y
	 ZT9GVOMbBdAPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EE5C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923999362.28140.1904867094982429663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0d94798dcad9b089eb81dd67baa3aff492e00f1eadefab14ad1d1db7a42607
Date: Fri, 06 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749239993
