Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549714EDCB9
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790024434; cv=none; b=c5ZB4EiZbYeOQ4xDamXWHquZOjThdni78AgElpEc+5nRuIc1lUPvEMFHDgsO4T+7j0d53D72Cog8usMjSv0aYQYy8LQVMl7dHbMP8IlmU9UaVHCdIYQUsDwvQ21R1LrVYuxObyvdSuC9KVUT/ITSHkagTmUTp8tN9/LhA/d+fY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790024434; c=relaxed/simple;
	bh=VkFzXXx6BAxwGbLZVSAdqrNYB8WvNpZOBzRb0f9wr08=;
	h=To:Subject:From:Message-Id:Date; b=ib4Bu7GR3gbdCuklS9DWAknnjvjpqdkcczjb3xGLZ3fIOKJwyL4+6r5bkh755/+6IhkRjC8hP8g1VCT2lE3rD5nwmLLE2XQjNWzD5erVG5h2kCTJh/RYc19ri+VsDQez0iTICXrD9VlaHBto+vG7WvW5wwEjQtjlsFmoEuljEyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amGPxZGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amGPxZGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCDBC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790024433;
	bh=VkFzXXx6BAxwGbLZVSAdqrNYB8WvNpZOBzRb0f9wr08=;
	h=To:Subject:From:Date:From;
	b=amGPxZGuWNPtTk7aUe0cvSR50SoC0+zxuhqB0CfFDn7fmclUvObqKH8zNvfQjmYAG
	 W2o4NeAfU40bnN90nQCTbKZ/j/48tEnRRP2AzFJKhQKqeBhkanE21LNxrIvTHqDlda
	 F8FnIIHQIIg59XxCWSiU9BDT4eMSSRXwbvlXWqdIHwNzHW+FxhmhGmgfMhd+cGE2/K
	 D2+gYv0J3xXOKw7l9YekEB1mdddjGF30zNIztjwlFOjXueW3NEtvDvT44DYjo5JZjY
	 LpdSCf0YN9A6omDrHfjQH2Coy9XXreppsC0/+Sd2hrBMvv/lKkn9qEVqTCx3U36unD
	 CV6Mvhf8PzkYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47C6C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002443372.18617.6305554857448535860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ef90c18ab085cca2318d7a5e85dd46886443406ed3dc3a17735b2786b6b4cc
Date: Mon, 21 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790024433
