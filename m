Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A441370
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732413954; cv=none; b=LlhjBY+R9OpggJSVCF6yssWRuFvgN/Q8mWzGvskH++XmK3carxy3FpB9IhTBXrDbpR5msTwSeGBBC4cTlVy3033E/Ftf2CN+kzZvcl+a2PA7Hz5/5GKFYDO4/+mN5xKPc4OoXZTA8+VyCQNDx7AZ8M2RkU/c8ZIjxxRYWgD6U84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732413954; c=relaxed/simple;
	bh=FIftsK1g1yMI1UIzBdFhsTMNjJf1CNpzKnKQeRJP/mY=;
	h=To:Subject:From:Message-Id:Date; b=EcFHV3e+rMyENIV73UQ/r/YqqJT1osy6L5YUULkcaQ9D5d+PMLosubbqqUbjBt5yGS3nTik6WVXn3TQQexzVOzd7rF4RxNE8D7D9N5ooGcpv+84cKGUHMhX3jRtwE+Gd78qKXdywoY134UufOZUHQ4hsh7rW4tVDKu2DmdhBpb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzLc4gvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzLc4gvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B78C4CED0
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732413953;
	bh=FIftsK1g1yMI1UIzBdFhsTMNjJf1CNpzKnKQeRJP/mY=;
	h=To:Subject:From:Date:From;
	b=FzLc4gvVyGZXMhrnj7JmRcx0krGGQiaGGcIiiE3kw7M6UBDwi7hbv10yz/4NhSMlt
	 1FyMUt/gVOnHWZhzEHTgsMB3HGTU633Kfq7IYc5RbY+XjTp8YQweIzzlOMHicwZ+0S
	 4F7lLdpOsMoS0II3PnSa2fQe0kz2RIDFmGFSywJAZjnozwITd5KZnADRRdA1yqIYiw
	 0YhCA9iRj5DE/CfS2P2fmLYh3W4Cb96rL88nqdFV+vVytWB3ZvY9zSPbhecI9g+5/P
	 vs7vKeTJv5RoOuUBWJM95s9rjX2ymsuZhnTjoPq4rm2rqv0/FXHwew+EiMvCw+POzS
	 24+S5CSlZZwhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B8EE6688F
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173241395358.12498.8980898792343087438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 913e78d9b62efaaf27e8c4dbfee16067214107c43bd86cee64432357f9f3cf42
Date: Sun, 24 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732413953
