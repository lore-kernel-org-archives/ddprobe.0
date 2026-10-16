Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C79048DB37
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792182634; cv=none; b=SrTxrbHKbLjKhm6qqBQzctGNB2Ka9BAXe8y43dbf3oKwfJrdXnkSZU9+Ivev1GfUm4f9mHAuYQDCxjP3eUE8Zw/NVzM016rbOa6iRnTHKI0CjmUz6dtMWKH8D+iWkmcq2ZIRjZ+sdY3vxoPJvy2ZKSQ/HjvF3yosYktsnyrHcQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792182634; c=relaxed/simple;
	bh=S9iS70xL9fzQ0sKnL8GigX/PO1mEQoEz4eUi2k9oAPc=;
	h=To:Subject:From:Message-Id:Date; b=hPrKSNzcPmE+nvKZ6xAvC4u70EFtbPgeHfzsO9mlAh4Krx6wO8q2QgI/+XLBMxmFul/OYC6YIpfdgEEhOY6T+5FnEUIsXbb6jUZx+Rmw0/tnfyrbN9F/3e4mjdx/6c4eP/WS1xx2kw2wz+NzEPfaW3YTj0Wvv7tFFoZ+tOKCpCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJJMSwti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJJMSwti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F48C2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792182633;
	bh=S9iS70xL9fzQ0sKnL8GigX/PO1mEQoEz4eUi2k9oAPc=;
	h=To:Subject:From:Date:From;
	b=RJJMSwtiAdvo94W5kziBsO1X/IAAfwaNYsiktujt0wgOqblnfH0noZssjuiCxPbZr
	 hc0Y3px8CtYTV6DZ0M3osNt8gjHar1P877y/iQT16aDCk5dzmaOVL5ghfSGRLVZ5/4
	 Qpc6IPb/MdIn2LclSBskybX3vfE3jCmqT4YvtlPAp2M64kmsPZiXF0ZYsYlheIuWT2
	 utTKfomXRgvFW6ibkYXqPUMKAODO8685NfcgKmWCyGZMQbhPQhqWCrxOscfhqHUfpq
	 xzrAgdY+IkzHipGH1nxOjB23XYKEd4GQ9lmUaZjRCuUE9pzEv6pUfclRDpYgk2Vbgq
	 z9xI1Erjwh0iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F2CCCF2C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218263372.13861.6971820180831999404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9445ad68040d8fb49e3ab37cd47cbd8ef35d64577b08d6afdffb9bb65c5a672a
Date: Fri, 16 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792182633
