Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618BE40802A
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779807754; cv=none; b=KcB1PHR6dzxs0r1JuKMimBjmIETqvSXl3EIJFBl4Q5XJXvbXziOXGZO7EJVSokPIYCFFf+IcG3sJva8pWXb67+9EKDDShcgZzzZ8qiHJMnvaW41kJrDIOvWDBPtvNLpziMDufPejkrEraaXWRXMH9HtaL+YcCcr8ptGbEvKOjco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779807754; c=relaxed/simple;
	bh=o4lOyD6HhIg5nRz7Ztmpti85nTENLjReG2Dc8RB/dnc=;
	h=To:Subject:From:Message-Id:Date; b=NwtAaAi4LdzLqBeqFQzpYQyt1T5izBZnH0/tJUQPmAo2d4l/hoLq4o2GnW2aEXAROQ7vF+SPiW5fQrL0ov3brJPwTbzNbGzEByrTT2lbFg7aGCbha+DpWZqfDAzkFQ2iFyvexNvU4z3TuvX+WegII8GOKOzymnqmgNsCq81eWbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUuTY/U1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUuTY/U1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2382C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779807754;
	bh=o4lOyD6HhIg5nRz7Ztmpti85nTENLjReG2Dc8RB/dnc=;
	h=To:Subject:From:Date:From;
	b=TUuTY/U1R7l2/PgQ+y94JH/UiT4/XkZAYmvaO6aiXI7qZfBXZqdKBYPvAHnDTubpN
	 1EA7fHcuRETZVQ2So+lzalcgx8pRaGXTdGoMFAcp8JPmAYVGbdLarL2IE172+IMHjO
	 eSmMQ8UplX2OBVkqBvafbaRF76fy/vi/9k4RwzhxiLpJp4VdeqA6kch96bZ3AStJZ6
	 SgGxVO2Y3MarQttNelB22at6syrahDQKWBGPlqZ6/vD/kcnBtZjO/U+jfIrKPINyPh
	 WIRme/QRKK5V2Jl+SP//M2I1YRDxCSEhAb3IUjov7FaVoG9Minj3fiuH4ymXGqnY7d
	 lTWUE7vIfi2eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA977CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980775381.25083.16607266152457399359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1853fa63a3e6641b5eac77f0d79f8b881606d4ff5e92bdebbf9f3247838967e4
Date: Tue, 26 May 2026 15:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779807753
