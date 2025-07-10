Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211F92D879A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752172794; cv=none; b=A+F9OqwBMVeWSYjIaSp7M4kXwnRlUyNNivhlfsKxSkMnzLTj1OangJLBhnglf+V2rt0nAB8nUpWKkNEme6Bvl9sRKFVpdVAwajIqRgN32C9bSarM6TnzOvaIFRdbSc9JQobBqIpa4LD3Q1TxnYL0WFqTtkkl4xZ3+bPW/rH6Wws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752172794; c=relaxed/simple;
	bh=mPTCfDDI+GmEYAUjurI4SccvfQmcqrSTIBcznzf6Ano=;
	h=To:Subject:From:Message-Id:Date; b=HN8sjGfcGBVXZT6xTahnDB9D5DyclCLFMZIyQXn+S9CdIKQufdQgM/QOgLY8qoDJnC8u0+OM7NZa8kmwaDvdb2lRRMGzz6PuYqn1WMvsaIdu1ynfA+JtzAyZtZv4/5PAzU9QI+6KXtf3AvafHvs+PTYcuaGdqtwosZ/o8dcXCxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJC0CSNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJC0CSNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECB2C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752172793;
	bh=mPTCfDDI+GmEYAUjurI4SccvfQmcqrSTIBcznzf6Ano=;
	h=To:Subject:From:Date:From;
	b=EJC0CSNORpxxnSlNXwmnY+onxo7EYsrZMnPfCLqCgQkL7hc9pvI/c6A+ScmGvWwuA
	 on3bjlHWyPVgvxcedWWdOKHmyeFIiFfnmeODmdRnuN/PdqN51VvgItcJcgnnkJCfi+
	 J7wOMIGmj7073SAGJtSxGbx+8nT4BgAEiZ41AC78MoPa3fGI6u7DQLlQhvQNJWsug6
	 UPKbvgMXLjnMwx55084r/ZnI4VNplIaf3TIqPPy6KTzApi3v7tvGz3rXuljXQMXZKa
	 PJq7PCiHvjZRt3VuUdoxu9IRsxs0LRiDLV/XiTeJ+PzqdKngos+kAuj4sQt3qQ/jqh
	 0g55q6m67Y8Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C5C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217279357.31827.16976619134477597528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544137bc49bf00d1aecc36974b51d8c3791a1c30bfe39eb95ca9b5fcd8093d89
Date: Thu, 10 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752172793
