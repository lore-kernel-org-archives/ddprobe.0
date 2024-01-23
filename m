Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6673605B9
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705970896; cv=none; b=NVSF28d67OElRF2PvL/C6lkzFsnZcT5+8K4GyWKTS5JWDD3Hfj34KUD6PX5Q8hwKUuzoAzTpcxbLOrVHDWV7IENTQpddSRYOO7/a1ntyAugJBS5r84WzMzN7lgWkINz4KaQ0mqvxkUaW/J8KwDyaFNsJH4o7TokxWB0kynA5FiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705970896; c=relaxed/simple;
	bh=sXcslJaFx2mya8CcvpK6geFXd8KJS/OeRd9nmNAl4RM=;
	h=To:Subject:From:Message-Id:Date; b=U4484y03Dasfnt5BcfXaqm4uYf+9Wh5M3RuCcomfKX+DlhwqS4ztPFGFPM3CncNngedaAo5tqfQWlI/HyoWYvCn6c9G93vkftduyMsQCZKq6K2M2TCsnH/wGI1sYKW0GQMurSC1/pZjjzwOOiqFEb/6vdl8LvZXYlmiu9Q9dLus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+uggw3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+uggw3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 950D6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705970896;
	bh=sXcslJaFx2mya8CcvpK6geFXd8KJS/OeRd9nmNAl4RM=;
	h=To:Subject:From:Date:From;
	b=s+uggw3v3iPB6ecjIPB32iZCk8SK2jVFAQBxhfw4/VHOyqtWsWn/l6vfZyvzJxTMM
	 rk16XiWBqAGN5fOqHihWiC2XrQ4It1Kz0f/rlGHnzWTgXoDY1SCvoyCLT/fI0jHPfu
	 h8Ka+QP/4aHhMdOY9iKrV8YUkwjWi5S05JGx3RFK+I+Nn1ImpT0iK6xi0E/67pwN29
	 s/tY82wIoXdjEvbveeJJlQ6VNt8V9sw60xtR5QKLN+y0YvWO7HEFoJEEYx7XzR3hPI
	 fhOgFg1bNQ24tcIG8j+kYTgwSLt/u1ZVVFgNciS5Kpfr4m9cODvn5domL67BN4R1J+
	 8yYbr3G88cnfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72A29C47DDB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170597089637.22307.14388020008272484386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5cf2f7aa8d511c4beabf83869e3e3aff94751b0586871301e0bd6283532fcf2
Date: Tue, 23 Jan 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705970896
