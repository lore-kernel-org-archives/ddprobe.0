Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DB31946DF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754875194; cv=none; b=gUVA/89OQRNjw0oG/GTEsP4Fbwc4W//JDPOr2tc8BrF6YwHqMoee8SgvZCJMhFXNoQPpxoSFoI9h4l0nq8BYVmDrINZOGec4TegShp9uWKxf3jmFbhJTljqlOxxQzkQc8w5RRK9DKyi17hzNDSP6Zc51ipyfG6HgrOnkHTnC1Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754875194; c=relaxed/simple;
	bh=vlVQDkGJMn2p7uQNLSgF3UGUG4qWQ2CpDaFKjNwg8S0=;
	h=To:Subject:From:Message-Id:Date; b=EvZhNt0LmV/3Pd4ehVS6ZPZToJpweNc2yH8kxbRgrmQRobJ959gUmnu0ZNc68y1xaF2hQLg5mFeyY/fLD4sd1bLu0MHF37IPIO1XW0cw+u/QEO2EDwSfWV1OL9YJZqlTXFjvCo5g37B5nuASp0/JrchqWj7ht8Pi7JtXbUXghQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAw2ph9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAw2ph9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4244C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754875193;
	bh=vlVQDkGJMn2p7uQNLSgF3UGUG4qWQ2CpDaFKjNwg8S0=;
	h=To:Subject:From:Date:From;
	b=tAw2ph9JeWiINdfiyDxXKXzHfmO77SjOii/0iPfbl0bq2b+SYufERyfSbtqVPI3iP
	 yJu6Gk9pe81dQMoPpu/QzyQ5GK2/yu84rESubwj2Z9WmmqYVY9u6oBklcTV5NvJMGp
	 FpsD1gTQH6FQedxQ5EVXP3+FdqKUxy5dHAxkkgRrbyUEunXHXMHNBhITGQd3DjMvrq
	 ZW2sFKyMLdyPZ38S9UWHwHQyTD1MroPy897Mnx/wheiEZYf925U1w0F7nGT6pRjKn4
	 w4reqQkPXUJykTb/1+F5fIGUeUxDgIEMNI91O7lHdl7QvpOan8fvwUis3M36cpHDL0
	 4dvOgvRCL4gfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A2C87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487519357.7427.9851239652786849628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a1fb72bc6a3a4131c4d2c15f1bc22a2be77e1932d86171b147513f3c3fc7d8
Date: Mon, 11 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754875193
