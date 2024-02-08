Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CDF7EF16
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707410297; cv=none; b=Wp6dmGshihfWs5wnhHxIbdHwUXGYABl7fGyK5UzpbyereDi3AgbgTRHwTLZv4BcR6pme0SND/fG7HkabcWxuJ+141EHJtqgo68U3Hz5OtI/7NP/No1xyswumwcT9TEg9f1g5E8Fshw6fvJSPHndJwUhdahjE8y+XenFLwF9+haQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707410297; c=relaxed/simple;
	bh=H9OXcoFz33RIf8n6iBwnqMR67/aasNcY8KghkYPlfDM=;
	h=To:Subject:From:Message-Id:Date; b=QU0vJoyGuZyoNiY6JMgnPmU5X4l4nf6e1l5lyCcUZKIe0lr8xQ4P5WQ9N2zgafTGpQGygcWkiY60ERpi7TROyQNbdUc7iuk85/+FOsC4dRz3ISZpoFZRLk5idNQRMrrKyf0k9bur7LEUbhPMmIzwBg7gr2fxYIrF/2ryjxZ+OQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBK/m6rf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBK/m6rf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F2A2C433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707410296;
	bh=H9OXcoFz33RIf8n6iBwnqMR67/aasNcY8KghkYPlfDM=;
	h=To:Subject:From:Date:From;
	b=pBK/m6rfOgYhok5IWgts7NxEODQuPy+pljSBp15L5D3atWpOguRoTV9sA2skffEf/
	 xOKteuzeEuQxGV0A+ZyqHkiWtCSgEFc9wIOWJMGnK64bA4OvEu+sIGV0Ky9y5q7+H8
	 v5hu5u16/jZz8CQDgH/C0kpkFWUftcm9p9e93tgaXNaxxrQ9K7Npq7Rr6Krpg1VcQp
	 sA0JNOS7g7i4FkyMfoD666SuYdvT3jTvrIB6ODvPRE9riMNbnoorsvlJUk/OQqKY4w
	 oqxWEVMiwqthh9C3EskbQwBBRwQjwKu9xf8ekP617G1DGNViw9djJUiyostrH0yyvc
	 Pu2pfTuEwEHPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76B58C48260
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170741029647.11093.9757182203919246416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4cb576e2928f48a6dce41658da56f94684c5ef766cb3aca7a0e2b4372a2a646
Date: Thu, 08 Feb 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707410296
