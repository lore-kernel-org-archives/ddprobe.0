Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384142AF1E
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747845594; cv=none; b=WwpkVQ7ABhRqythc/lZx/FlGhWD62IHK6blGFwwWP0fDHlGLQbH9VivavOuBp48UaBp5bVqVtQB797EvTPyJfoVP1lcLSrRV3ZJx/+aIiRuPjCoge5xySZysODqshoJYZ/Xho8chYX3NHM8s0WssOKx7fr7kVOCFrUwq3q/8kSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747845594; c=relaxed/simple;
	bh=iBviZiDX5NJMoyDK9xGI7Mlrrvo79yPPoBHvqdvSjtg=;
	h=To:Subject:From:Message-Id:Date; b=dddyUfvAVphI6IDU6WPL7jyauSuoKxraVCnXuP4MHonZ1ziaMXM9+p5XxNAutZgSGCJgSSaWZV6mr5BOozke/GlW3NVJn5gNo5e0eN19GloaZm8cu2YdBQ/SIYv8yzJOQNtJKf6jwR9wjuQdKY9nYQu0uHnPlzigkcl4pbmdL2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b78Lmb5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b78Lmb5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0156C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747845593;
	bh=iBviZiDX5NJMoyDK9xGI7Mlrrvo79yPPoBHvqdvSjtg=;
	h=To:Subject:From:Date:From;
	b=b78Lmb5jCuXKbkf6E/NN3sVJyu5SIDsx+BsmqwJuQcbYYlFdFcirDQ2MZd+QJLrUW
	 M+PlUZaGHGylBoRJkt/BWGRq2EyQPREEzzwUKoa6Q5ijI5CPL3db9kdofbEVRtRTNN
	 QQKsxQpWBhL7/HZh4bHJxpYtEkZyHbWtJLtJrISUJ1vaRgkEmtvlF3FaBLeg5mR5Gg
	 baXRzM6gE50CTssP49rFK9a4JfDj8qUcSegYwSwd7VU/FmlaS4lfnGWx7e+CMY7CUf
	 V4vjMeTCLbiBiMxFf5HpyNQPrHG67lSrpY9uxTFJ3x/CHnKYCXL7MhVa/8syDLuAiR
	 CoeTlg59XpDrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F6C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784559357.29742.2782458675861967563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8046d315f24c7df35df7b3919fca187fb3764cea549fa47665db68c92e732f36
Date: Wed, 21 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747845593
