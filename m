Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676FE2D7DE0
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759996794; cv=none; b=oS4aMyk9eGWyYKqqaP5rcGdvlhPhhaWAnv7Yw/VsYKMUS9i9KCqlJHd9QFORasIUeSkkGx1j8cD8tSxrj+/EY47LIwClE5imN/eK82qpawXyXjgnNOOV0+a8beid3vKgxdqeTY9Q/DlczzkPrOC/hh57/J9KEkAU1l+CeRHw11c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759996794; c=relaxed/simple;
	bh=TW4gBp0JH3hmQyRbopMylPfFcPeUMuft7KipWIMH+30=;
	h=To:Subject:From:Message-Id:Date; b=SiZp6UpE4Zsub2ijLqM4ubgwVglw2VBH0cYCz0G1SF6ixCEFVsjMFRZ7fSOwmk2+5Rqvq/ivwZwRJi38YdaY06Q9BmOsq3PS93rEYntdEZZ+wdl1fa3sMAy7SnLOVrP7TkhM698rlBjKtlRcKEo0WTApfk+IhKT2RTe3LBA5dGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZmZwKFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZmZwKFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDFBC113D0
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759996793;
	bh=TW4gBp0JH3hmQyRbopMylPfFcPeUMuft7KipWIMH+30=;
	h=To:Subject:From:Date:From;
	b=RZmZwKFhyXgDhArYakLMAg5+UXqBcq8gBsGamTSeRuG4rqTran0iJMqpF+/jSF4m+
	 a2iRl09g7WxtvZ5Djn0YdiADf4VnMSlncdFojJOMitOJ0YikwEf7I0CYFh7VeGfgYy
	 KmJ/FctvirMfoCzi89ZlrcrATYvGfy7PLuI0jsYYzlxi123EI71mzvTdDy+PSTE4+S
	 o8U72XHS6rqRyCE2miCYjuDXvTFl1eOX7YOP5Jljq09DOAJqE2PQe2QwqYafWIGJbz
	 bSn2shM15+xytuPWr+sL5wMemofxoQTA8tZEycKdZ9bwOsUT667qr26qOHzxCcY0bA
	 JNWuiDVRXQN4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E9CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999679359.23763.13067580738061978736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39c01d69e0b8cbaaf32c413d222483ebbc18dfe83f90c62efd3ae78860e2784
Date: Thu, 09 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759996793
