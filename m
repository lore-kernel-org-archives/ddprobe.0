Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D6034F474
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789621234; cv=none; b=rdvWGBdF34DML+Bo4XleexAwRn6HUxQTwNxKDApcmrDGLRkZonBujHuNoVf0ywBLicecmG3H/ClTaKKdEGgAQ5X6YGOEkZVht0HSKNkLKYUfDZ1AwdBE29uYbA+wrfZugqqiMGuKa2845hfMSs9Bk8Dv2dJG5vpCH3OFL7Z+/Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789621234; c=relaxed/simple;
	bh=1pA0dk/HPruoBE+yTbWfbE1tdHPGKAvZoX8Sb3agrdo=;
	h=To:Subject:From:Message-Id:Date; b=Mcug/S1CLemptMj61XrtZNUY1bKdcLY3HRr8fAWpOzB3A4uzeYatvg/yPyciVGUd8fpL1Tf5M732p64M/L7Cl5TUxEDK+3G3IsbWoB987gcQq+dB+ZB0fJ7crzRtnS8BDhHXibjBWOZU0rARIF5W9zGmyuinBFo/J6x5nuuyX8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FB2S6wH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FB2S6wH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D959BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789621233;
	bh=1pA0dk/HPruoBE+yTbWfbE1tdHPGKAvZoX8Sb3agrdo=;
	h=To:Subject:From:Date:From;
	b=FB2S6wH9swOtsXBUYyrRO4NNZNCu9FFWwyRvRqwottG+Tscfkfy74aH1reyQnxMqU
	 9cVdaLCOWBPIID8scVeQG3/eQFdoxydQRhP8NDcpW/bpBP99z7WTo2yKmqaAJ5Qhxx
	 APzqQzOMlCoeR6Rg1IMYC4jhBgkFax859mdWQ5RwrwsbnKcPAGbMDKG+XH7jxfUrkF
	 JpJa2PGqjBW+Jy+dd6QIhLeh2MEHdB7KiUMQbyIy3sNbs9ZX8kTBzoLvxXtwZA+ZDK
	 qlGtF1Lq0dsNsKaCFtO1Tu71kW8twJcRqLvhgIiRYKDYFWThv5Eue7mmm3YeW5Fuas
	 NqCjE0kar5UrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BB9C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962123370.30479.7842289826464321185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ac7e98095836c7791261309413290767342090811a885cdb8b663225bbab77
Date: Thu, 17 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789621233
