Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5A32701C4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776433654; cv=none; b=haBRTzh4mvBOOl7RURNNlVzULumpsyFUXdRHZ/MqSu8UWq312un5evmM/K0Bccy97UjoECXqr++H52PmQ/nLhr7va8ejRMWq98wVF8QsuaDV8JbS1o4Wo2MW5IG0C1M8t+vIwJCotW49it5kVFWcF7nkFHkf4JQ8/BVbMc/HTHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776433654; c=relaxed/simple;
	bh=24tdACEYqwbu214KOXl35fuH9/eFGpJIhiLLVEgtAX8=;
	h=To:Subject:From:Message-Id:Date; b=S/j1y/nx4Jbp0PNcW1F0HBx2vPzYnYmbJoX02H4J4D3QYfBbitfgRpPS80KXeigrEndC7ZE547WX6WBcFvxCjZB2vCcvnQB5Zp54dwLlqlJPEDdSfjbghnWJw5gNbeTfHGVZPPfQYIB9+UEyQiA4j7kHQc7fGAJ1ukisUW38E54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hp6CX3JE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hp6CX3JE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C097AC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776433653;
	bh=24tdACEYqwbu214KOXl35fuH9/eFGpJIhiLLVEgtAX8=;
	h=To:Subject:From:Date:From;
	b=hp6CX3JEy6f01rDatwFaqOHSnRO5aXnWGHqqI8EqrP3CjZ8AETcRvuBKpcPGuvRR8
	 jD//laZHSDFsgsWjb06TjLTxACzcYew9BDvBQBbacj6eqtVeFkYTVIDUr1w+4Pkn4Y
	 L52TfhQd0FkGJR0EWoWUrK/bLewqytSvSWMM0eQa06NFCmSsFjy13wSMzv8vrDO7A6
	 dpk6MqeeiFdMlQvkh53epEIF3HMlV+cuaVBbasToMCnyq76INAmtEVe0wQFMuQWu5i
	 XKKwQOcgrtNkmW1UuGbUS2XP3L3JFnZ7JmFJxIOZQKJGwpuOBEBCBs2VaGAzGLBW9i
	 biDjfiuIBXpSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD11F436A1
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643365368.8332.10651676940306309611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b94e9eb6ba8471bd304729cbebceb1615e33e81ac189fcff6a9af3de552a47
Date: Fri, 17 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776433653
