Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43610439325
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783523314; cv=none; b=coECbguWsddljiDmsV6cIpRbCUdafdCa37mbjpKGCN7uw8PQ3Do4Gd0eSbmSNC7lVGz0PfrwmT3pIo+HM+q01pcYmZhjunzx8CfLyMqUfgz2K4dxuT0teMrLX1IC0WFSqd9MPHJY7bWE4OTyeMGBNNRROvnDwu9z8Qxwi0aBexM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783523314; c=relaxed/simple;
	bh=S7mzm9HnLoiK8GOQNwIHZNWnWDhaqxSh2wPr0iokGqM=;
	h=To:Subject:From:Message-Id:Date; b=bAyBOJF2iQ8WITQFyNj79eENQpZPmG9xgSObWp8QpW8SmOJRmtcQ+JK1AnVEl605zJpDKbc/OmIKlDCwDhiBRFvj4hwIKB29+TrSUbSy3jBmldrH19VpiYKBqDfow0nJcwtxEW9huDux+ZtBREZV6HpEJdKNvNiKHbSRsLMjY80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9B6nY++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9B6nY++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58C9C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783523313;
	bh=S7mzm9HnLoiK8GOQNwIHZNWnWDhaqxSh2wPr0iokGqM=;
	h=To:Subject:From:Date:From;
	b=F9B6nY++zNrvjN0pzmpJr18Ev4NGkfmntn+/+KYYu7YlKEH7upim8zTpxNrHI3GIS
	 3v5jshXBeFxtkuXIp7cPewmHk4WygFsUaA4Td+TeyfgsLCZvLfCypsPOyTvRm8zA4+
	 fXtFy3b/QBtYoFdEoU+wdRNPYr6EyQEGyOx+4XAqyqc9Lpc0SH4BW8CzqGs0PyA98d
	 gnMgTHivEZEVMeGxixV4p1Nu6fJxYOijQxqJrBxLnhgs/QTGyp2zq2isy0MD2dbyzB
	 3RhT4O8GD7bS8s7zTyQ8Viut0kWebNwaG4Lpec/MdQItKiKRgg6uEDHxvLP1FLbsCR
	 WUMxCu+J8ekQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA6BC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352331370.26236.17442755313677978485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92a079e3a8fbd8a4c873499bb19602337332ef9cd3a5d509960194a0c33a3f3
Date: Wed, 08 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783523313
