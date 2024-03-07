Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70401292F9
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709809697; cv=none; b=rFLflW5vk5mjqcs/3QXRUdaGVUl2m6idEg+lCueS6gSnCGdo5ukMWnXtnjA7TyR7ctop1jpGII6MIOyusX8LE7nNYMcLqCrxUZqCIee8P1Vj/rZgHSBZWW2o6WhSdoXg2ERYEGbJgUscNbEwqm2HI5DPICzps5boyZ3EYYca1So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709809697; c=relaxed/simple;
	bh=z0PUXBTvd2fIa4sXVIku1RNFiUIbQUgtfo0l5czZawE=;
	h=To:Subject:From:Message-Id:Date; b=HULvcugMkKz5lm6RJLU/w79yNQlUGWFAdRe7lbqv5Si1z9hBb0g0St6weCdO8aIZyVm2yxJbNQNDwSeL0L6h9EMq6exPRDtJhrbzHgggBNo4JahoufbIxcrzZ3OtWYX2m5k+zMpYx41thvp3UpRKImFQV9c0JdSnsWd1pHZMT/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/R6EiWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/R6EiWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F1AC43394
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709809696;
	bh=z0PUXBTvd2fIa4sXVIku1RNFiUIbQUgtfo0l5czZawE=;
	h=To:Subject:From:Date:From;
	b=q/R6EiWfaaiylM7KQS+9U6hQbG4dlclRehKcrJjYDhIuaWhOuSSne2r/yufSzw9JN
	 gCfBHG5WBCGcnloTUO1GavT4h7/wZ+xTW6py/qWeSgUYBwmqMQD+BKhUEkAqDil6un
	 z4GNndiJurlPT493USFFO/WtBNBhrxsoTi3XL6Nu4PcWPAMKYFh47u+4GwgcgiYJ1v
	 /7dcNiBdOd34vN1/FTUNgwBagoAOcrE3yOg4un5I5A0QrVrSNJuVM4wHoTOQ1TVNpP
	 NXxwgyvr/g5y1Den2JnpJxYwa3kD/RNV8Ibgrz5SHKVCMeQ/h8JgqsX3wyB+SCereT
	 h0WdOD1M959Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6E3C54E49
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170980969638.4926.13892037917998451795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef7293d116d76f8bba109b60c1fdcd6692fcf7cb16de70c2e4f8ee6d6f29072
Date: Thu, 07 Mar 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709809696
