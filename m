Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ABA83C3439
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775735734; cv=none; b=euOBrY9BEwVvfuY04jPP0iWWFQ4eAOKxUKI6iXVmXHsSMRbJwlW4A1BHQ1evLATt+2d2UCk/VUPh8ewoI2tk4yqDwerFKecvWAKa0PTu94pYuSnRD4rnQhR2ExbZLQ4kHpelfUE3QZfrzKCfA3wrl8ZleivSGYpt4CECPGSx+3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775735734; c=relaxed/simple;
	bh=CiPLtfdwBNi3cfh0yIXmmghJmsTOKQhnQyh6zESB8P0=;
	h=To:Subject:From:Message-Id:Date; b=I8PdlfvlK6OD8hdVsYEjOf7SUH54iV6uHxNrfk6Si7F9Yns/ShSc/83s2yPJjMc1FPajZ1N+JdIFrUpvHI7ssN9k98/K6qTbmACgI5MB3hfJjikRqT0SzOudhDvC/JgLQMjZdC+i4D2QL1n/QuGD2nc1C4EtoI9e3KblME446h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBUy7qvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBUy7qvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 44C16C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775735734;
	bh=CiPLtfdwBNi3cfh0yIXmmghJmsTOKQhnQyh6zESB8P0=;
	h=To:Subject:From:Date:From;
	b=WBUy7qvl0wjnj8s99k3XNYqpt/P41GOmNRnR79V8hoa+xJ7R+63Kk6BXm9CseMkq7
	 Ict7ldQtRdnMLNpMxLmXU2YzNoMaprXmPxhKuNb4gS0cK64sXNoqZq4Qt97RQs1gZ2
	 BOAkYF1oqHFUyRcIOkcPao2Bwr5wJltcOFspoBDrQ+WKdLJ07wvTmXzlF4YqMOmF8P
	 GrnzxdRoYIU2ZBCNxcwj7u/xT9536fF3ael/FTsQVBPmgAWmTIR5sFbzEFcBNn1yp3
	 M1SDEunE382sFdhRv/hGRp/xIGde7wE8Fp6m1ECoBdtVVyElxLfN/2h4h2sf0BtnGi
	 02ee8aMdvAV7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1261EEA3C55
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:55:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573573394.21363.9496396026568789427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5033344ed034d51b1a61ec151665e2010e9699fa8d2838af0947280a6eb7ed
Date: Thu, 09 Apr 2026 11:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775735733
