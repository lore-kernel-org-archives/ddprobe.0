Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BBFA378D9A
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792162234; cv=none; b=f+jtag4zNVNTRJFg/ve2GdXS6pKWNPLOmzEZoNmjr//ofMIJJe9MeGdjORalyRdXPZRiTa8Hjvsd4gQCcIjwVyY2YkQyJupYaOI4Wu5OqcITZcfzGNQEH3WKREnr+3kAVgwFtx+3SQjEN1Vr9KMuDceoUy/NW0A4As4VQ/MdSDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792162234; c=relaxed/simple;
	bh=eeq8lsD3ycQrz2efRAcm4THGSE9Ol+G62biyuKMwhhI=;
	h=To:Subject:From:Message-Id:Date; b=oXsBEnwEXGTHUYN+0o/aKMuOXKjDUSGYxu6tUahqKy1dJDGm9r7ch6yfA2YzUajvHZcVSuuPyOQzV/xt3kKN+htgdMaqH7zRKxGqdj7j1l2Jw3NycnwnUQmhtM/zc/ItBeovI+DGAliSdLi344LLF2k6esZRxy3sH54FDyMv7ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djlSyJu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djlSyJu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5FCC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792162233;
	bh=eeq8lsD3ycQrz2efRAcm4THGSE9Ol+G62biyuKMwhhI=;
	h=To:Subject:From:Date:From;
	b=djlSyJu0ANzUEsm0ADgOvGjc8Qp8uidRohEevHYrRjYDvilAbn914mgD23W7JKeiI
	 09SKnKPz472jyMc5Udz/nZawQjBMjHj+4TVUt3Qrn5fpXSABTmenar2nJf9u0RfofX
	 iYH7u4pNC5LxZXutdSq94xMzFQyG7T1PlYegejKaR0lRD70V3iAHs4l1H5mKgYAhO9
	 NbqfPlj7avVA62hX4v7jT+uyyai35K8lgX3WbX38jvMa51SalMtZVP0RBRp6vTGn4n
	 9z29ckE+usChnhrCjwjN6VUjAUkvfnlzfNF+wpw9s6MLAiQ4oflgi3vP30EUlcxkBl
	 /DjqRSt2rf0lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B200DCC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216223370.2824.2453707856745163296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faff0e6e656ca08ad3d49cbafc2957f85fd751062ac3f6a0df47017c35176ac5
Date: Fri, 16 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792162233
