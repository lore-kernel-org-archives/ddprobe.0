Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACFA4F5E0
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780209274; cv=none; b=iKF24SSs2bfoqcCn0/Mr7/T08HVLzMQZX+8FxlwKLwG36KuGPMu07Zi0A2aX3XgW75cAuScBm2lnLrRNCVIJ1jGfA0dF4LDbfR9NyUxlbbgfwXKqMb8aV++UsNQUs9hLAqMEeXgN336q32D4nwAS/RMUnyDVNG+bwaJFv2Ncebg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780209274; c=relaxed/simple;
	bh=24cPPykCLFhJSb4tXUVxlYEChRPAfwG8EII2OxSCPzE=;
	h=To:Subject:From:Message-Id:Date; b=cJOUahmQXTueeYcGnt1KjwjTCiBY0vxneC71AIRYixQGOrE4H/JJgrGX7NazavknHwVzQzyp4Phq2OsIfGmcwFHdqMo367PeJGoI5MI0gkaFxaUGkbsPPMQ264NblzhrhaxJAeIIWl/FMDZT/A+1JnAcMONpWvWgfvYFPCDEv7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLrj/K0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLrj/K0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FBFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780209273;
	bh=24cPPykCLFhJSb4tXUVxlYEChRPAfwG8EII2OxSCPzE=;
	h=To:Subject:From:Date:From;
	b=kLrj/K0sS0xvTH/UrkKnTDXyQoPZVAvnhIXLOhhguVnx9KqE1edH1rKyBqJZHY1Ao
	 ijrjBdp5UmtPqyFHInqWiVIrKEHNcXMnmkQIV7XW1weD+s5uVsNvDtsKZlm0/xQ0U3
	 9f5W57lgjpYsW3nkKIkSRosPlZ3rqCjCaMjsH9IwG6RrRuMx5dndGJeIu4IhVTD1m9
	 VgqW5aiKTAou7tIu5gjp8dRKzLousxQz89KgpyiSvZwqc25wL1iww5s0v8CEWJ8o/8
	 oqby6dVqg/fatU77otb1dD6fdwvdGyiNPZ9Ozlu5AMtrJUQ5EaJYdOkFFr7s2O1vCx
	 ju/5q7Xh9rebA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD689CD6E51
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020927367.11630.14317939411038288747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b6b14088b0b851fb04b76e0c851f15dec445c9bbd9a04b953dcb3803ba28cf
Date: Sun, 31 May 2026 06:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780209273
