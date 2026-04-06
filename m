Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C662DCF55
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775514934; cv=none; b=Z5KrDhVOId9f/yRBKfHzbv/QFPrByJgCXJxKZ4wuNFMKfiayl79Mqu2nFRXk9gghPzHhdBlKRZTHzUWvjmbEWDPtcazhxp48mKQZ41MDjqtI1z1V4qjNgq5LXf/csqFXWqKcCZOxnEa83nKc18J1I0af5hj49gHsReJfqzsNJDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775514934; c=relaxed/simple;
	bh=cYObHpH3EhFWtxXOihcFLauhX0OE5Hap4G2JBINvmXk=;
	h=To:Subject:From:Message-Id:Date; b=kFzP3hu/LdG/qKy5SEQuSU3sT0JAy5kzOSqWCpiLRskBx22qZVkHa+kxS75V8KfQ75f8Eti0hFtp//cLOZ927oSgYuIr5smNFTPpyp6gHMFdU10I9GPNZQ3b9kW5MKG+L2+RV2R/indpYa4YgZ1fEuq2H5fjKbjR0tuElsPNPVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzMFg61l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzMFg61l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F5EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775514933;
	bh=cYObHpH3EhFWtxXOihcFLauhX0OE5Hap4G2JBINvmXk=;
	h=To:Subject:From:Date:From;
	b=qzMFg61leo1YAasaPN3NIIJHQd8vYl1cWXV8+fMvDmqIc1AWd87eW/caAO4eIFQy0
	 eAo4/OTpunJgsmcDu8izKmmgXlnTHYVXcC4yPHxs9O1vnfZlwjs9mgBqU90wrLXFNa
	 mNnJO7fX8K6DTg6cgoqxV3vDwZC9q5SuTUDi81nSPk3WVefO0Xo3oByrpQjQtIw8SL
	 DxHpzH/N5D3EkN4gQqekl96FxuYnrTb+9EauQL/u5N40m+Q0itm1ERMdP5ep+5HcJ7
	 SBmbNWPsTWc3J/sptf6nAy8l02mt5IwbFYZ7xL1enRqziGAo6XKoZ5iPvZATdvFZKB
	 gnogbwtek4TNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE10FB5177
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551493370.27029.2579257725450858795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf530f167eb189690c48b337a8e7bd0cffddf2b72fe4731e5dbc8789bdd930b6
Date: Mon, 06 Apr 2026 22:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775514933
