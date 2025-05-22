Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B08286423
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747904396; cv=none; b=mhP7NHJ1UBxFd5o/s1dpSva9RrVRK1CDIVSuHCauLStLUcpYifo0lWyIwMo/nHoRV6fuPItuhAEnocG5AePsf5mp6tfGeoKfUVKkaNpuVwb2eU2kddVDxDJGS6m5dMhXiDbLnKim/0S7fbzyw9G4nR30Bfo8jlBBcEA2dmhhFAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747904396; c=relaxed/simple;
	bh=ez+CZAwg3cRubOTMBYkljvm0GuY+0Xq1pDqni8n+/nY=;
	h=To:Subject:From:Message-Id:Date; b=lnAKpkTESK1zIERqAk1MHmDiab9Tp/J7VUC89FGf0HFiom712LOTCASuNT/U0P+h7LdPa9H1mg2WHloFCzZj4MfU9xpvpFOKGXW9sPPzXBzwqfk28zgYPF88o7u6i+QpndoV4rX4ljeTwnOqOW9ARrHR0E0letKtewC9z7hgQeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXTJ0NgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXTJ0NgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8B2C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747904393;
	bh=ez+CZAwg3cRubOTMBYkljvm0GuY+0Xq1pDqni8n+/nY=;
	h=To:Subject:From:Date:From;
	b=sXTJ0NgHKG6XsV/8heBqt6Irye5V5F4uPfYEryfrHqcsVR4wAAfVSbITBeCB4xuum
	 nDftIeClk+cYyOpARdZjpq4vxARHqSpPvZNRJfk/1PeKJIw0/Q4aQUHs7u9zWkKC8y
	 iPYoOpRYHkUCKeAR1HtMGFSoe081363XxhDCdyqk934sinZzv0fPHzopYbMxx5UO9K
	 1JVDTpNZI+OQ43BhFpoYb747oEIyGhlTovgRU39dFqQ5VqjSH9vthUjlX/5QkjqJzR
	 IF4NmD9s5NAoQ7GInza2S6YygNuJU41ZmCeXgj7JhNlMXgiJxrOXxh4Twc1L/ESBL4
	 +LUoxwvzFXuRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F423C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790439357.26351.5552230968499912633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01fb2bb23240ebf554b6fdc4b91a6a311da9e14251e10d543a8062b74274731
Date: Thu, 22 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747904393
