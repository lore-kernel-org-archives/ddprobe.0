Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A38621579F
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746704394; cv=none; b=iVdkEpj0b3xMeKD+Kocjq+HO0SjqiT6zFFxfmoaWe5ssNlymcGsfq0+FfOwRH5CBySiVuOyRSCFhdYlY9NmuDBFHb78/KrBiv4Uxx1HxpofDgMFwVBYZi3uZrZo0MGThdyBx3uTOvtiwMUbBTdCLsEeqAiPqhiRFVgQIoVOPCn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746704394; c=relaxed/simple;
	bh=aOTYeywopkD5viC9VYV8RhxrphuP4pYrRfJ94xVr6Vo=;
	h=To:Subject:From:Message-Id:Date; b=u0hgYZP+ZPFf8xTQnTL50o8RCiJcWVJNqcWLk3H5r4JfwGmcN3b4VCDqBCkAM+Sj5GT6KPHRktsFozw/uZA4sgpcVADYh9xYTC2m1cZzLshpYA/NVFBRT9M0PUtkbV8keofl6STnwnytakPDpMbJfsZ4f2BHWpzv3QmFSmjetTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWH2l314; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWH2l314"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E14DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746704393;
	bh=aOTYeywopkD5viC9VYV8RhxrphuP4pYrRfJ94xVr6Vo=;
	h=To:Subject:From:Date:From;
	b=QWH2l314ezaIyEj/e2xspk5aWEsRlB/jH72EDJoHQ7vIQ2iCFm0MzJJyY4RIKeDI3
	 g47kbfBDcBxqtvDJCfKIEo3+T1cZg9eh1ctc2GVWrHVYZ6YXVOjQT5ZtLFT8mQCtth
	 B5bfwDzAlGKij6TwIz700z5d8yA5Km5zQwGyd5eyQbCGTeSWvj/RuY6KoYAuLlxmMf
	 Sl18LMMqyt7dR/AdnoDvjzydDjDa4pPQCTzBa3/h7JmEtihWUcl7QhPhllvs9TZRrh
	 tErZQ4VDQStiNJ79ynb0aYtSqQR5aEbcWLBEMdwWLyVDB2jLyOqpXlDuVshqOBt6YP
	 0PI8x1OthHcFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC7C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670439357.1589.1709994774063833201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c7b1e0996e360809a2b35bfa959cbada165407cf7d8d70bc383af3a03953c50
Date: Thu, 08 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746704393
