Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EB11C6FE1
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751053795; cv=none; b=BvUNCGGxJMIMMuPZYz8ebgO5ZHXji053NVOFQH8X0RWDEiuKI3M2gQUDEd/nPA4q8OE+H5+Qg/16Pn7/fDAFji1LIzXCdOGPhPuY7PmXsCvVm5mU6x0M3D/YVa0TE9fV+Twcuwpfgxlil4+63IRBHfhBvty48n02d0xlWp6a79A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751053795; c=relaxed/simple;
	bh=WdmNnBkr9sPcAkSjh12EIJ9sdG0zpGk2Ivfgaa7ZBMA=;
	h=To:Subject:From:Message-Id:Date; b=fGkBBFN05X2vN9dE4r/8LAP4tyd61P2jCEMrc40XEfG2VkmMVEQJUsHejUlLRTxylwOJe4jGp//QsSkPa0VwrNBtPsjsArETK3rlzdkbNk4RDnvkHWcP46YIqdu/ps/Axzc/2TG5nJwP2mH9eTGjSU6QSVH9SVRnCEbQYIEwQ4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgoJxSWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgoJxSWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751053793;
	bh=WdmNnBkr9sPcAkSjh12EIJ9sdG0zpGk2Ivfgaa7ZBMA=;
	h=To:Subject:From:Date:From;
	b=QgoJxSWRX2lS7LRqEo4gB4mqH8612OWk9Rez6SvjzOnJitharX8KsQBkBkWIV3pLO
	 kP/qyXU2ZAGD4M23v5lMu5Hxcxu4eowhQJFdTNMyNHQTQg7yZrKwLLSvFOSy3IeHQ9
	 Tqp91i8q9P1OC6Vozs02PjxeJibNxt2ii2AKHXQ6014LjcLgbV2VrKcIBUe2ExPaPH
	 xHt2xv7jtlxYzQ2ikTvWrKdKL9T3yuDrVFoG7flSJru+vV/WhgziK18FksZFoEpFrV
	 ybVpg73T2vITCl83HkXv9PqIYDv6RRy3oYPMDV5635ZkfYRySlWCT4Ixkp59YpRVQA
	 AUeMykeaHs0qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CA0C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105379359.28927.5166150963442706363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6986fa2d3ce2b794d5df6fe3c1fa82342fa93ca09a699390c1433e2a0646d833
Date: Fri, 27 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751053793
