Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBD2204C02
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 09:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740130734; cv=none; b=iebbXBJu0T3X6bk9N+N3fumCxgZukrARlknUrff31UMj9a2Oui8wZZOgxiEAggTVa/HKKCfO7BHvtLXaGT1mzlmz0QkfqoF5MHF4CN3Qyif6Y+zFLyGzSMeMyN/lFtY1QsZ+uJSfOeFZupW8XiPKumyxhoZDcQi6nQ2nRqHMFds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740130734; c=relaxed/simple;
	bh=nevoblWO6jtN/UIqEmnJ8QTFbzEdjkoYOJ4/8WyLFbo=;
	h=To:Subject:From:Message-Id:Date; b=AqPB2NwAMr6FOD4AFySU38vPnFYZlX3JrnILjco1v5jSzBJLEPvKqX+u7dMRIvsz//78+RWRPWHqWFiShP3ijb8FcuwKXjCU9uQ6hurBCZjy8wC2peMk1CACTCCJGVN7IAMdATZNUWgDAXU3GrN39zfsCsGaBWo7kgDwWPJjd+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMh2hxjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMh2hxjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27C0C4CEE6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740130733;
	bh=nevoblWO6jtN/UIqEmnJ8QTFbzEdjkoYOJ4/8WyLFbo=;
	h=To:Subject:From:Date:From;
	b=sMh2hxjkISnV328D5x5EktHb5yzsLkWtOIz10wUn0nen2WWHXV6xNMvM/kzI6Z6VT
	 b7UZ1MQkjnWiD6F0RTM/6ojJg9wjC9G71WIV9gLu8jWmQX9ayLvsOXfSfMaNNnsGFw
	 9sW1zF5/7suP7TDOD4SdaeuUlCm6fYdST+5EvOctyLqrQmEw8YGBk83sToicBK68r6
	 O8pRrXmKEsRQPdKOfHs/rda+fanj2+fTe3msLj7S5XEuz4ndsdV0V/DGkTiLDeiNyh
	 LDJX+7X12ZbLtrjG5G8cdESWXqYvMSJs+utMnIOERUePH6/853BR/b1bbsMhxV29rj
	 dova8GyrHZ48Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF3EC021B3
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 09:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174013073362.30652.308919107831762230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3df21ac7bd59ab94308aced1a634d849f5bf77b1d3486e6e0cbc3aad03adcf4
Date: Fri, 21 Feb 2025 09:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740130733
