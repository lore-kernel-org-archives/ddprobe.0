Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BBE13B584
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767056634; cv=none; b=E2yAnZMlRPXROdT4kwgd+hufy512DY7JVxFtY4St1pLgVMAeRLA2X8qD28MyojOl7+TyM/xBojhPuMNXGv2nq5b+ud7GPRm1vM8rq7FW7P8piuzLKkCGuXkbfo6V9aXglSCV1fqvQDwrRDVEJ4pHJ2Iq972hC1Xe7gQslFTdeKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767056634; c=relaxed/simple;
	bh=nsh1J+565jQMU4KLVWqJARLlMgw2m5hgJyQ/kBP2BQM=;
	h=To:Subject:From:Message-Id:Date; b=N4fiAaraPWhQRNi6Yzn7zb+UzGOnFrevu6eul8J0Wox5Cq+uV2rjHztkqHC3FbkUmWln/Kk+G4ZS9fokHbjerV479t9hQngq+ZO+25uLr+HV8ERpcpmURqw/rROFMNK9pwkG3JgWChk2CkycY6kTjntpapQj9gLChm47Rjq6P30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMZt5QMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMZt5QMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D26AC116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767056633;
	bh=nsh1J+565jQMU4KLVWqJARLlMgw2m5hgJyQ/kBP2BQM=;
	h=To:Subject:From:Date:From;
	b=KMZt5QMAXzu+EE1pWMV6tC9KDwKYHtFHrOM92kPwoeZys2mlCYcxmgURa5uELIBuu
	 nCH1BtKwx6l5FTZIvVYeZ1LbpwIDS9VuDtcvo48clgW12EFCGMEsC1oiSM1ibOCt+s
	 7qnZo2tgdwyipXv+sgDYqEGdAb9uI+NGmAcpK4AkzUSEN1faCwNlVJwN4NhSanK78e
	 U93YBRgWKLpITfJp4EHlCAmKlLGmO7dpDj9QA4zzIZkZwjKgaa6OE46pIlokIGV7j8
	 QqU6ncjTJLpgx0dMGuVK+f/PbCjlf+9TUJM/1hfSHiuRMCMCYL9k1jMYS/KtMfN74L
	 3cWHljedInrPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A8E94108
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705663357.22344.9230904673234732060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140b83d2f3090e23df62f60b0097de209b4dad2bc512668eebc4916901a97766
Date: Tue, 30 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767056633
