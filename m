Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355153368AA
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784236714; cv=none; b=R4R8nqCQ8HJCzmwIpgmaZHd0ARwsH6RmO5VvZdwd20zq2dlchzKPlIsspJKLmtd2e/S9vzvPVAd9Fk0sItEaf61xEOF5V2v7e+qqI1KCtAlM1eDsHQx4uG5HGS9kyjjkKZnJdFFaDpoP6r/QZIfEi1D6eUh2jBrCNxkFM3F0uUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784236714; c=relaxed/simple;
	bh=+Ha4wQ/Iymiz8UF/E1x13ceHhfJ7nRMRngVhrx9FTYM=;
	h=To:Subject:From:Message-Id:Date; b=kxmX6hCZ2He6cUfRe1RoA/AgOjIT51eoljjjS5aKxkwXiwmjR8x5kFfmNK3nk0WK6MsyozMVqvwLLI9C/24XUPBzvC/OL0qRjelxLD7qFrQkiWvs2E6M9Mdn3T/peD1AjPEZJoiOu3MLfh90MoeW5m9n2H4POTW/3G/WQLqDRNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnN0rEja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnN0rEja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE340C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784236713;
	bh=+Ha4wQ/Iymiz8UF/E1x13ceHhfJ7nRMRngVhrx9FTYM=;
	h=To:Subject:From:Date:From;
	b=GnN0rEjaiVuE/CQ4EGx+oCrAiESnpbf0/BuTUcrSVW0tdEhP6y6R+eFzrokoCGk2c
	 uLNg2X8CZCqA9upHWJH+1mhvjcxWMAJz9YV27caUQEyG4WQhr35c/jzY/CfRIP1Cu8
	 DmPra5BA6L3kG2BB/qlTj83pGvZtozXTGGie4M68wAMJ9MaYoNEtpWCpCFF049tO45
	 i/tyImvBerCEB4i+Z2FecG/0FbSAalJA9MaA2958EosXlat38w8Tcx9STJc7TQ+y2U
	 pLd2Rk8NULSIW3CJdIq5d9CxhzM1v7XVZdv0Frkb4Mxzpv/1hSI+tqpbjB1yfmMcxJ
	 cjQTztl5nQ24Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DE1C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423671368.4228.16586226929625066740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f064ec1d5e1f4ab38f03ab961f4a73d67f97a89a3871e96f61945d6147df139
Date: Thu, 16 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784236713
