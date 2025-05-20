Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422571D9A54
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747704594; cv=none; b=e6siDT7RLak3eVOmVmnXQmNZwvnA/73K3ptUUGMKCXeB0rcBJaNCpNahqewGoEuJGV5uxXVGB+9mTeD2sZqXgWPsVteoy5irtLJkQNiKo7z1WgFuGJyZ2lutwc/WQi1bmOCJ9FyJx9vn5odONxNrtvpSsZQhyiIs9yQOclu1h/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747704594; c=relaxed/simple;
	bh=OtcKBt1/3+NeDmcpfhBRzUG/oB1AFW6w0jb9tNRvKDM=;
	h=To:Subject:From:Message-Id:Date; b=RWNWp4jJBu5oX1BRPvnWzPzQqWewOwbcprzDzPrphIE/gL+lZS0nxc8f1Iu48eCfLY+GS9rtwzpq2UTPgW5iXOvhWsBmSatviKHcJmMJcnx6qJrRF5dVOM5BqvZNu7PsYTyPdOaWmbQon/LGMSyHYusU/W+tZnfbFXriFodY3HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFgVuVM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFgVuVM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ED9C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747704593;
	bh=OtcKBt1/3+NeDmcpfhBRzUG/oB1AFW6w0jb9tNRvKDM=;
	h=To:Subject:From:Date:From;
	b=kFgVuVM5DiYU+VxSuNVqFX5qYFYwzkKv8IfAIituSPqTwqW1WsR/M3q3jSrJAxcj9
	 lw7P6GN+eF7ZjfBB/i8CltiKrT5JrVNNILabOB/XgcDUzwih9/CNE1lFMIzxDOk1Qr
	 5xIqMZ4cYmk8r6EI9xIWQqZGJuD896Cn2nm3o19s5kdqGXN1lNZJdUeeyisB7+FzmG
	 2B1a5xZxzq0ZruZD9CJ2trt4jc1th3+sqkzWdzD4Mq8SSrYhXELitcKNUQskZrle+G
	 AVYZbKsauawWVOQ4A9f6M8xitTjVsNHrbwHHmkNllMs6SJH8uEIMBWzPCywBXQe+m6
	 pKercgvBngGKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF80C54754
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770459357.2176.8228998759814077678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b19a605ce04236d747680ad73171e55bb905925daf257719c13d492c6f7f7f9
Date: Tue, 20 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747704593
