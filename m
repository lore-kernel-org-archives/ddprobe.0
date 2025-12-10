Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31351E89C
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765374173; cv=none; b=dV7LWHnr52RC8AepMx1Z5bF0ojhuVhZLUBBuyrdRhSmXZt8vQ1oUQvJWPT/FZkMprOd8IVgQ0Ds8sEmSxO8BnixggRDmGVAidD5dwuSgLE9baERuVFBw/lRf+cUDg+v0tIQMjvk0q5xLDqQaUp6qnKUCR7LIcf4rkB0paKBQTZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765374173; c=relaxed/simple;
	bh=f/bkr8tZ20B6ggM6eJ0l74XkODmn6awTjN9bj98gF6w=;
	h=To:Subject:From:Message-Id:Date; b=iMoi4BV9ees9lJHw6lMEL+Ni5MVwVHTjlYEjxLor+OvLdt9t/Q1r8iM76izHI7398CGFWlHwcO3GuVZo6J1ciG35W9ks/PlGwPwyUufUEsq5aEV6zm8MuSCRylxpTAh92v2+BQRB6wG7p1Dq1q8MS/QKlZWjIbzcJbsd23k986Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ER6R1cWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ER6R1cWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91B9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765374173;
	bh=f/bkr8tZ20B6ggM6eJ0l74XkODmn6awTjN9bj98gF6w=;
	h=To:Subject:From:Date:From;
	b=ER6R1cWQNoorbQDm+E7+PZ4dO5bCxxHkC2LSIgQhdDP6+ebHQcw+oyV9ITCNZUMbN
	 V8imQfE3b+jvxiBqUDN17PiP11AjWRL2juavsrWCGpsRe/SujT5S6odam3wskMXSYy
	 8V5dvgMyEanBJk0rumeGqysMya+FSX9NAQQWTVDV9rM9K3hSId7h4o4XqEygWbBU4B
	 uv+1m8Cx7oDnP/z/S3BIfp7hcaCkh0jRVOHUPA24HJJ3OtL60/dBcoIoUN4wtwNvhX
	 YCfZQ6GkK4Si+ET/N7yyv80c8EFD2Z0/MeP/UEGyhdhZJ353CiAkEETlpRkh3a3c9y
	 iIp86FEtmfYoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94626D3C54A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537417359.28745.12482799368129622616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec5cc0cbc7381a8d5fde895d5e7f6e93047d05e75882334d504449c45c8c17fe
Date: Wed, 10 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765374173
