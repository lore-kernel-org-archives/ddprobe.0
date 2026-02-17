Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1110C3370E4
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771329894; cv=none; b=ZB9M2x991WpwUIXvIUKi3+/57lZcF0BQwNmkv4k2hu/ggjBd7lroaW1QQp5Cr4QI0AZA3v7kTZyBPqiUuTEJH0XGFGSrrh/wpWj7lekfGhB39sdYvgw4sBRXMXdHwg1JNxLNrO+GaaXIYcNYQf68auuCxj/x7Eg0P4eb/vHIPg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771329894; c=relaxed/simple;
	bh=ZF4ShBIKT8NCvNHhfEBS7brH79sa7lhKWR9eY4sR1ow=;
	h=To:Subject:From:Message-Id:Date; b=lYp2nDhzuvmFblb4TK6qY4fRVF+jmoTDs/nK2q5rfepEhM27y+PabmNQvk6JAUhj2hrvoxFdB9qEJCw17sJTONFw7KuFuz/uVQzJvg25DFUilmIItZ1Y7NrLjYh8M+BybwqO7vHyCrLmrfTxaeddrW7KsVS4MZ8s2HnpH89ftcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpHAkvdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpHAkvdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C261BC19423
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771329893;
	bh=ZF4ShBIKT8NCvNHhfEBS7brH79sa7lhKWR9eY4sR1ow=;
	h=To:Subject:From:Date:From;
	b=TpHAkvdMqhoOf2lKzZ4IKhlZYwnBUvT0uwOza64gWm9byk3Uy4+RTr3oKe5ZIdN4O
	 eMTJYUsX3ZM5dCRy/hOV6zl4ycXk4kNPzwPRDzjgAUFnRFfYkcVbA7bSq7D741it2g
	 xDghxFVvPYAFNd9cJ8225cFqXvhRKWrzjXcTPSBIb9kMSL3fyv5owRxVzlPWWQ+Bd6
	 ZrOC0lYmA5cEZ+ZnrGdtRWrK6xW5BY3NEjHGkHGxxXtziH57QbUAYV3amTq6YoB0J0
	 g7Ah37qoXIzhkkMc2BctctaMPfQQKn4vVgqUJVMgtyaf4TMddbNzk0hDrbWuG5dOPo
	 pO9vtoBeeEgwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC83BE68172
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132989369.5504.7764608983884378321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33f24631b5ec4839a5463f7535dc6274dc750c8c421dbcdcfc60e10e93c09cb
Date: Tue, 17 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771329893
