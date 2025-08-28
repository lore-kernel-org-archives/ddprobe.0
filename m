Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3242A2E9EAD
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756370394; cv=none; b=TsPI6uMh19zQ6px0cvR46yqPQJ3HipJVpHjzN6ttvg1a4gM7hOvpdzGZGCA7rKXhd4MDVKQE0MFka1EjfijacV/AWY/xi/lQqodzh9cEzoaVLm7t8kA5Je0hBviYuSgi3pFlRC69SbvqHu6fd7J5O1tRf3jcFACVim2cH9eR0MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756370394; c=relaxed/simple;
	bh=HOm77C0y4HOAYVGDxfMqfnl2ZgvdokrPWskN3cDBUsw=;
	h=To:Subject:From:Message-Id:Date; b=G7CWuFb7TaDovSjiQyJNfPspz3toqoyfYkNQU0kC+KAUWBTsahVva9//p/hDxA2fBFSBpx90sL6lB/YrOnxgfrfilTTCaoiCmL7ZW9m6rqjEGgbEZjRA+7JbegB7/GvH6aL7aIw2FUBNf+hkxN+aRIS6hV56/fnlKLdoqqiZ01M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fO7UNHYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fO7UNHYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B16C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756370393;
	bh=HOm77C0y4HOAYVGDxfMqfnl2ZgvdokrPWskN3cDBUsw=;
	h=To:Subject:From:Date:From;
	b=fO7UNHYLeq84LVrKzQZUFba2/o0vcn6xdPmmzm8CJbtlQlKasu0a+p3i0Cb7pXlqG
	 ts1zPSy8xEQW2ohU1CQk7woppM6XkcI1ItZSPQ+iGxiNNF7/xEhEUxwGUQWep+njwh
	 YuCUoAJ3uxrSUIGLUM+dF9RaJxIBfQnwUlZn4Waynt/vtUaXcfSaYf1JMtjSkHDopG
	 myqw9hwX6J8JBw9AKnRe0p+j5PSXBpJVEqXOaZm3u7AOa1s93lN/urv5Id5yyvHx2j
	 FkzHj0aX4YcCwCv2Y1DgkTrdJ/2bNPku9hSwMek2rxAIao270Cn4QINd0Hza3LuNmM
	 MedSA2yof3y1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94903CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637039360.21130.10169786720725707861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f530ede2da8729a3b8be24372989f05e87c86a900bd914fb503bb96b0226f2a
Date: Thu, 28 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756370393
