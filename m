Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AA83C942B
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779039034; cv=none; b=hh8YKs0UIee2ymXfUfs1xWwIGOqZzSMZGQOjj9dGDi2FebcyWrP3b0VmaRdiGRJ8lNcoi3w0wsNRnVdyQEiYaccWY02N1a7zfUZN/L5W3yV4PuDHZnX6w55E2rePpT4Rv7nizfM4gnym5xYlkFK/11APw/yAGI+k4S2NYm0kUXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779039034; c=relaxed/simple;
	bh=bArMhOP06lUSeZlnVnGYZDvk7i9Mhqv/2hAqrDc+ugs=;
	h=To:Subject:From:Message-Id:Date; b=WGXRNtCoWCLH1mYsHfF1uBbxU4XsB9lwcw8j3jWQg8rE04+JgJZkQjhZgQByOx38PuN9lKfkzdc7FNkuY9XbmLWCsjxAajoXRIQTSU17cSA1PjISd0hYoiBmp2P1KMdYftnnw7axPRw2gj0Lkn9eHujnnY0eEAgrZeeX8bjx7EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDCaaByX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDCaaByX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16AEC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779039033;
	bh=bArMhOP06lUSeZlnVnGYZDvk7i9Mhqv/2hAqrDc+ugs=;
	h=To:Subject:From:Date:From;
	b=gDCaaByXYQdoouEerEUwoaDx2wuvKfBRdNX4fJhNIov5qXdCHA0JVXXwdOTWwsSF+
	 xzVqbR/ts56rrg40GO5ab+qhhszUdfA1SRDi5+DoV/64VaUS9PGWh8U78yn1UHZF99
	 mLd08F9DOUr0t50Unmk1nXiP6JE00eUncxuEiWD7xX58A+debhlGEB+PVxp12ZASkM
	 7YjV9k+AnuJuh9SmZyZcGToCeZOlzKC6pCMW5tOLP/CJZAZMrtvQ8FZRFPm2QxMZXa
	 3mfL1LwwyQbbttBL19zJj/HlO6sn3RCt8oq8efR/fSgU/tAQQ7errOIwMZ+P25qvIG
	 hIAW33xYQWYgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE576CD4F4A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903903370.28149.14488246538858059795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116bc8740971ad56d2736cb82571f962b0bc6def47cb722ad378a3754318ecb9
Date: Sun, 17 May 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779039033
