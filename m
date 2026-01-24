Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD9B29ACDB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769239435; cv=none; b=YTiYnRFUUWerfvTbuH1WSc1P84QNWWULGitiHm3c46SrRyHLugdeKt2n2GBnZWS6ntPBkwQEdsOKLAk2e0OmeaTslmeIIkHn/f3yk9MOXPPPCshmXwrsxZVofNc9FSDxRnYKYDUPWj556ImXmc5HZ9JcG4tYWzEzuqEJLSQFxEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769239435; c=relaxed/simple;
	bh=lzXNLzEGT+FbeDbw9Y0djIjJc0jp0BRLVxWcPyskFjk=;
	h=To:Subject:From:Message-Id:Date; b=OiXdIFzTgA3ADUiVZByuGGWE9M3n4lufAb92sU+i++LUPcH0H+flDx5hY0ZSsIQI9WwkICvb9gcQyh1HgR0tLTQNuvp0BaXqkfvFbOuf0fGZc1hmSQsWla5d7/bGPzoO5F8ieHUSObyylOmq6y8lBDzsQVagZ60iVeYjOz0Jsa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgLDvRfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgLDvRfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72CBC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769239433;
	bh=lzXNLzEGT+FbeDbw9Y0djIjJc0jp0BRLVxWcPyskFjk=;
	h=To:Subject:From:Date:From;
	b=cgLDvRfbNlOjOMvWRMqt/nGudRKy0hn8Z06JEiiPWtfXrSWO8dFZEx8YGP7t6njzT
	 j/arEse0y/4b/4SW/+QteknMgS8xa4hyXy6I280mEU96QH5V+Ypr7kIp1Ag8TqTyPn
	 PksadoDTJB/NPvHxDPmOkcJNs+2TRIYHQFtQW+KCn99SsJTnmLLNjodbW47B1cN/0z
	 mXf1dyuoywuODKY7BD95XegxLy+GgyGnjWgKYWGRYtWoiXziyFYIQmOUW4yfKydmHO
	 qtYlPfCEXYWgmjesN3RmH7FJmfB//jX9yY+4VM7+J6BvT2iwX0Aro7p6qOkeUGn1OM
	 EjMiZ5ybyoakA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953C9D715D1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923943358.8515.15835951211587114397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921578615621cd75e6dcd89ee04ddc6528ef42d6ff38dbf8dcc06a764b48969f
Date: Sat, 24 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769239433
