Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174A0322B8C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767644034; cv=none; b=OuAACGvS9CLUEc7DfV8jjb2nwKIgNmcgGWzOJCTFzzv0s6YHT36aJ1lqhxGUyNJqzxSxul+vxRFc2D8KdAJMwNdB68TlAtsTd1Nzb089TNZBGjftVZRh2sQpTWyxFmsaGUwbpJDwi3696ANzBlDA3PAql9pqxgw3XuYVfV2LbSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767644034; c=relaxed/simple;
	bh=02VMW93qemVuHy+Zs4VP59znjCjKXOAFtD6ah8mT3kA=;
	h=To:Subject:From:Message-Id:Date; b=LMYWfmdLXLbj2owWDCKaqgEeFzYwcrX3QIeSle8ZiqYHKseEsZ+d2TEhE0Jz7U7jZE62LPU0R+PJoX1NOqw2M4HfbjYJSv91Tby8jkW1cBioGmquTkEkByQo9nSrfz2r5VGWsgQhvKpu/PFfrvianTBu7HqBDsxJ1DoKaHINZ1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGVHONef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGVHONef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA96C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767644033;
	bh=02VMW93qemVuHy+Zs4VP59znjCjKXOAFtD6ah8mT3kA=;
	h=To:Subject:From:Date:From;
	b=WGVHONef9kHiOtIr1nQRZz+iWcnUM9ybP5Yvpw/5kpbMDDdEP4OmbPHcSXaymSamn
	 j0bWwkbtH6c8+u62Lk9+pmwdgB4+0j88otxrI2YcypTc7WCv9glugV9Tp+Jsz2Zw9X
	 2D5+aE+QbHdeKD1otTBof4FHxPhMeFDdsbEG2NjgNKJLQICy6XoVECzTYEXLmbjDjw
	 VF3uYRXiVLuArzkEu4ZCiVnadRr8JtFueJyhSIZTFCcTA7YvAEjS9my6um9UFrkU6H
	 uy6Ic6HPE7kWL4EZJP5/KvgnPGm5Np1Dq6+kh6tkaZXA3ZjylkKkGhXKmdCubsMC0l
	 kczXIETJ9xRag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC2CCF2D5
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764403357.24690.852422117479979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d920c02664cffa26b6d0ead2c7a6898862a006e9edd87516ea623dcd212c3c
Date: Mon, 05 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767644033
