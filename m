Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210FB1B4F1F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765631574; cv=none; b=oAWBnTkgpO9H0LiexPTmGHap9zSN0q7AYH0zK15EkO0MLPrWXyZncbEHjTS7A2CnxhdIFLNbezLXJbOyqpdvPiTea7Y2wIbR7LqwvSGwk++XrAgcsJB6PBq7i7VOdLWQBtDkWZBY9+xAAPqNc8/VXGEsrdDB424uR7jrmp4qz4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765631574; c=relaxed/simple;
	bh=zi9VaRYRb3XebDRoMcptaIjyXquQEAn6MOiPhbiHiM4=;
	h=To:Subject:From:Message-Id:Date; b=nFQ1+nBHSoQF1BGk7xReU/Ff9vv149kgrgXxdpM5pxkFPJibdX6x/tivN8fgrXA48SfDbx/59VgtxxEjuK69De/eAoc4pcJRqRnjlJRXlA4jsrZ++IXJeftrLUNsRTyzi/jTmKcyg6QzOOHn0kqI+y7cwnxQgAYsstDeEhlG4mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJHLtt97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJHLtt97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F19C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765631573;
	bh=zi9VaRYRb3XebDRoMcptaIjyXquQEAn6MOiPhbiHiM4=;
	h=To:Subject:From:Date:From;
	b=nJHLtt97kAD0PLoQfvpJFVJdNujv2KDNT84uOLLVLKXBS+u4XIEHfEXUGTVKr0YW5
	 5ZyTp996YvYt6mQ4uGhM7rv9y9swji/nwwDV/hs8OorWPMh5x/Hryj0zRvzICz66Gd
	 G2DGJrcSgxtuhO4RF/JqApedB++sjfgMK42OsXQqxojrtACepQghsijR/AqpJk5bVd
	 QpkWWG6mmyP7LR4XMhciP8C1d8NLITK/UROD5P5lCBlmeytf5e2pN9jI7X25/iRC5J
	 Bw9utDjNsFQhM07tydOLCMjpUmYlKQxS5kaHs4eG3avjTz49Lcqn8bIZyjNwKt0muh
	 3CEuzHf0VWuMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C644D59F76
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563157361.18664.18175115951528429704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ccf3e2bac75d3b678467c1a3c13454817ddaa97033be94ff1f18a6c453c110d
Date: Sat, 13 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765631573
