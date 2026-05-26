Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8892F7F11
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779762154; cv=none; b=Pc5FAu0+vVTU+yOelvF2bbeAdCAbfjFgs7c/HH9odD8zUuFc0EgGmsBhu/SbOLFTLnuP/9qrYhHAViKeHDmIQjM2gZntx5+B0RoE4Smyh1FntQVw+N0Ufqbs1Gfe5n11nCCuBFy0q14qnEVIPAflpWk3ou4g5+k/uENANhXaZ/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779762154; c=relaxed/simple;
	bh=UsAnOW7p2FzmBWF3n84/8mRQ0yNvqDcfOeLjTXVR9xE=;
	h=To:Subject:From:Message-Id:Date; b=hvK8yhnkekQAb/RQiEQl9cM2XYK9H1mP2Zfc3mBNcC9Wg/gCtrXNQANjrdmH8IYtQb7cHb0t3sqjoIztL4u7RQTGKZyGkSvzRMmYzc274BGYCZJZF9e5VheqHGlCkULklYbTv/AczgEg8Dzpcw9dll/SwKrwNuSjNl69Whd7XOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+V4rC8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+V4rC8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53CEC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779762153;
	bh=UsAnOW7p2FzmBWF3n84/8mRQ0yNvqDcfOeLjTXVR9xE=;
	h=To:Subject:From:Date:From;
	b=l+V4rC8lAoxBQ/2DF3qVaEwz7z7QFQlBXQ72IU6DdtfIuL5odU0xfzNaRKNiLXBgH
	 MQRnzEPbKAwXllJXkzEWknOe2Isc/lMDeIsMX+BILz5+JRbIxUh2OltDyX/xJ7Zb3x
	 kI5mqY4JH0FzHfEbMxwKTFydq+2GbfOwvAevhOrW1lOqkhwgCvpmqCtVjzA8MAykwM
	 bE6GlxhxTE7ZIDC7ZYeQeJqtcsN0GabQ8cWKYsxG3VDYgU2a7y1/RnhC56/3pml+kH
	 +fj4jS9Agrjkz6cAAz7MxkHVKwq+AY1lAWZZPmYaDCZODSf3374+1XTBGgsCR+nwb1
	 tMpyL70p4j9CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EE3CD5BC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976215375.2572.3425277654840051063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48701acc58f530bd2de5b42d3589715bfaa81d0d62200afa2fab5bd8c79c50e
Date: Tue, 26 May 2026 02:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779762153
