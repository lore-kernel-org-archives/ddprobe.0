Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4916B340401
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791833434; cv=none; b=aHHXCV571Gb2n35MCsGw6xPTfCjKx5HEjyUSGxZghjWfX7W2k8ZkJLvBPaPLRKsVr8SoXAC3tlnmNUlYViugoIs7TvmEX0zcFgjfYkVO1GNydwI5Bz9zZdkml9KqeDWHvmHIrBVZrouWyXePYLNyu2UDUBaSa4w3uzk9SzwLE8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791833434; c=relaxed/simple;
	bh=qMbxNkT+f/Njm2+Z6I8j382ZroWxuEDkecVcJVnD+QQ=;
	h=To:Subject:From:Message-Id:Date; b=tKdAdZIVhgw4QaxFs4w8fOVEhZ6rWPpGyTEY06wVyuWCoLag/cOoOY03jwLd2by9WI9Dwo1OD+69uWYcgZBdw7dF9KRTMW/OmTwMZzDIFSj007Nr1b4wO9ZWH7oTBBybSK+JOJ625gWvhc+9XKB3L5nuVE3aeJ/BLqfpV4tremE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLd0WfKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLd0WfKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D976BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791833433;
	bh=qMbxNkT+f/Njm2+Z6I8j382ZroWxuEDkecVcJVnD+QQ=;
	h=To:Subject:From:Date:From;
	b=KLd0WfKvcJmJ1wNFCh5qIi4Cb8wYNxODNgWHwl1xVSKLBO9OtUKNYmdIhG8+wBnKk
	 voyhkjmkZoTUfqBcvo5Dx5kLO4teueYSvi9AOsv9bB9Rm5UaUGoE+5bjorQdaePaF9
	 VCTo0dcSkWyKsVnOyYkv22X+M3pyXYFhxT41kYnmJDaBRzZNH5LnjjJyRS38bl5722
	 oidZznO86o0nTSPrkHu7xHY8bwEGGb6Pnnb2hG+YJib8dueltK6B5Nm5K4GyWQmHtS
	 D5XmDHuZNSm68+LLwkvTeDz/3ctWIrBrvqdeI/SkqfwVHR1uaN0/HGwwilOTynWi1J
	 3nkvvrsuyUXaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F9BCA9EDE
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183343372.17454.3222085361325250959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a13698b124aeabfdea99b86f9262738e4938dba3247c3176f70d8bfce18182d9
Date: Mon, 12 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791833433
