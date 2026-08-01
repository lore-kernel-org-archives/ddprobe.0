Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A87380FE0
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785628234; cv=none; b=p/6G+vsjx/TlqSRRwAuqWHaw5b9VeVF8eau6LLUWkCo8DVOlJOsHpc7vbEL6S8wkc4h+KcD5o0bbJjVp0Cozgjtw1R8oeW5cDEm3cnRtZs0PQdq5nGwWQq4vC0RnCC5d8KIzIQyJ9ilM3go0bgyA9SiigIHPpiZg8HjYPuo7sgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785628234; c=relaxed/simple;
	bh=P9KGOAD20dgGv1WHOfOWIY3KYrHuYux0w4fmpTs3KJY=;
	h=To:Subject:From:Message-Id:Date; b=KCs8lohhXzymSQ1Lp1fTTcFkYz+aIdCTHar2ti0mXmr4wu9qL7QYZHpMVDtVHLEC8vmlm/OqKjS+usQNKo4H6XdBiFiRnQPkaOvDMFHLu9o0jWZ9u7G8FN6NW0MVqCsXFe3WdnH5ZF9IUPNDIdbq3VUGez5WuYahLgu9GfXxtWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arJnubk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arJnubk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC001C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785628233;
	bh=P9KGOAD20dgGv1WHOfOWIY3KYrHuYux0w4fmpTs3KJY=;
	h=To:Subject:From:Date:From;
	b=arJnubk2o5Co7rphBG2e3Vhl63f58NDBlfvn9KJlGA7n/TgGaYxdveuA6p3UoNunn
	 FbsHtK2sQ4UUs2+9+bcKgWQwh87FYBFHjy8FrzTegpURUbWwo43ebF+igt2IDJ53HR
	 wNlV+CtCHukt4FMRXnBp532oPkGcg3vQhyM5wCM5wSFgQj5fc+2hxysGLAxfqvHNlh
	 6K2bmgLWISJ+yqqy3vrXAMPWUyDJeH8U6i7Ezk1kdF/4/pIl0qldXlvhsx2jOZpfsR
	 gnuN1Ly8/pxesr7AY6vcCpWtd5IjyIxIa0l9l/rmIZEzK8K0kgbrIjnJqILo4kuU4K
	 LdF1gO8P3vnng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9073C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562823368.9658.6756029751988807590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c461112fefbf1b79522841782c92deb1447f7b2e699211ab12da77a4455b2cbb
Date: Sat, 01 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785628233
