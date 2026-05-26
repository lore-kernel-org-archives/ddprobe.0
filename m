Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1967E3B6BE8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779802954; cv=none; b=j9Yx4tmIjU7FDYCnwJzHjedGYwnkzlmtWp3/l43w7DlkY+dQYLN3OrEPjSPI7LDHpMhw6uYelHhM928lDnZWHByY4DHONoSqG6GGj33s0PMusVc8Ol+R8DR8wx+EZOLU6TNZAKf4BCQ8O9BKWxXTCoRnV1IYJAHJ4hHGCJEyYbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779802954; c=relaxed/simple;
	bh=2skLhT4nbcsvymvamBwhFfb5KUSf41l0pWwCAdqg438=;
	h=To:Subject:From:Message-Id:Date; b=TB4+7VR2ef1ljm2VWsRsy+IFghOQKoUVvw4Eg13x/c5c00H4Uupf9P90KjQhee2TIxJzw1V+2CIhk9q60FgOJqGmly0QpBeLcU+OKMdS+6SWibNnbulhE7fOjxv4NEQk5Nxb41VGhJMVFuEt6S7h4pYasoqT+A6HLS2xSkYsmtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEfuXwRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEfuXwRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA93C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779802953;
	bh=2skLhT4nbcsvymvamBwhFfb5KUSf41l0pWwCAdqg438=;
	h=To:Subject:From:Date:From;
	b=cEfuXwRhXiYSmlww3jhglvBDcDNDBLaw7vCc2F357nltgLj8GfzFEN8ia0dlEuqxd
	 /C4bzqYt90SATTYzdFBqtjIqQIkTSEQQkCwigUN7QsSB1s57g3/TdCnYRpsu1MhtX5
	 7ZWf0fAvltC+/JF05i92R8UhW3iqusyTxK01gJaPgDH9oEBlEP0nVzkV0jVZXZeinz
	 2d9iFF/MWrD1Tvv9uvh9pIIXUZ0fUTvG7GerkQ38qcuVYktEznSJO+N5vDxId3pI/W
	 DComATMzCWvcA80yseV7RDakgAO/v2EyjA/Gfsm1C+lk8I2sDrScEzhZJ6H+OYbb3X
	 UFGMhXfz+xzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80DCCD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980295373.27422.10767452599176079147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5afff5253bffa71abf0a3af57170d01a97419b09df820051dae9c386af31bd7
Date: Tue, 26 May 2026 13:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779802953
