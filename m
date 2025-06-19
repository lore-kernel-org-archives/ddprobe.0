Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242EF20E6
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750294194; cv=none; b=pSA1VqdTIaIpCTTugl8DZwJ43U2vPqPSyMvPxc0WrEPrPrzfmQFBtLgA0FmmcCDv8CAq/zJeeA7xSIOCUR4y4mbUY8yxd/a4bm/wU9XxZvFz+IjWgk0b08ESZLoQHbXftiiGpBNECtyxGLEmM1e/fR5homg6qXxnA1mYEkZxiMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750294194; c=relaxed/simple;
	bh=j5yau5Q3HQN3sKhgBFjgoxHJKs9+AYi+63uGE0SGvX4=;
	h=To:Subject:From:Message-Id:Date; b=CDcl4+755YQmB5BQslu0PdoxrYT74Ro1OU3MQ4xGwjdoDPssEGi2k9TjFFHAX5ow8QKEJZCUVqWBI8CTnxbp8euCvU76AfYVguZiisNze5pV6OjfhywX5BFRvtzy4FiUI8vuG6ToKs0oJenzCZqI7vETTW6EuRbBko6H1CNr/kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCKOFloz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCKOFloz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED9CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750294193;
	bh=j5yau5Q3HQN3sKhgBFjgoxHJKs9+AYi+63uGE0SGvX4=;
	h=To:Subject:From:Date:From;
	b=GCKOFloz/yTHKpX8KjYQ2IiBc6qbFkTn3qMQsvmZCbmYLhBiR1CzY3ETvB4ZgFVo1
	 GkXYNh5/0AJCpO1Xuvw1c5TW+a9i1BQAvT3hY6EVuFY0yn+bwo2s7XtDVz1cqk/LA1
	 URnTmvcJHwY6wcehcSTOLFia5u7wQCL1d6AfjESm/fX4zWS5cIGfNCYTP8KpSdoDxx
	 VmfKD8q8FL6dAxKSV/slFZssJZxlo1Imv64PPyuAW7DyI6cIG2L4n4GThZ7dNz2dX+
	 xbS77QVuBBN3k+jiH/pMAivYI8RxvUgBUSnBgL7kjmIWpDYiaisn7RtQdvELlPvOg1
	 la/atMUSeMs8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0D0C71157
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029419360.13140.13128823836773483620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d5fef40fb12e6ecaa56e2dfeb7345e6b22ff61675c7d7b980ed86402d612b7
Date: Thu, 19 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750294193
