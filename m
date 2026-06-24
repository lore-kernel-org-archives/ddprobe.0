Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543863815CB
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782281194; cv=none; b=ekj3vQl2s/nj6ma3NfXlkdwzDmkyKWtkbSjw+sZB4TVgSXi1eVRAnTC7Y2SDt5To5erokUOYH0vL+fGdKiFi+5LcE2qityQYb61ugbzJ8u65cWotMHmHiZGbd//VvcwDvh/lxuWLoa5iI42HcozgQb/TxzstklXxOgRxYtiy0ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782281194; c=relaxed/simple;
	bh=2kH9RBy1xfs6g11Z6X2RE3mwT+tT8usYGjhHGBKRrD8=;
	h=To:Subject:From:Message-Id:Date; b=G43BJa9t9AEe7gcIJe8igAdKA++LXb8lZAhfHygyIlsixMSLjYuxhb3d8tY+Eg9EHwk9wVo4o/jQJ61ysmia6CGn6ZGKbP3oB5rMU6lmTKxxNcI6i/PNTnPhvfjRaec+S73IRXMbCzdTfonHdCcSPzSeBoiMlrg1bDV0pbyPj/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNDXboKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNDXboKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5465C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782281193;
	bh=2kH9RBy1xfs6g11Z6X2RE3mwT+tT8usYGjhHGBKRrD8=;
	h=To:Subject:From:Date:From;
	b=oNDXboKRBgmZwJLtlBzuyPWL6n2YxVFgsd8f0yQ9W0WDdkNdiC8nZnokaGbg2+y4T
	 TEcEEt1ZIqkq62xrZ48uEkYcqxfC0214Y8ZgiyO4KQH4iIbEAbTE7qVaQcBiwp4rPZ
	 Taj31vjWO2W+yC3HPymZGyWIi2EVWIj14xumWXyRc0YAyh2t4YIlH43ZgHnikscv8l
	 lPSVrwQxIIM8E7oBS7xE+mrjHqJ35EWSDoko7vjK1eAw5TTzyfi7pCtT2V5gBweKXd
	 pgGgJKvS7Dw63ST+wt+WlkbRV2PeibDOTenggJqPArnFxfPNt5t+LcCmYO1+QPdOH3
	 sEgJFUnWeFnyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45C0CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228119372.23941.14892777706202412705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57cde636fff555d3e98552420a8eee52f1a3c53473385bfd2db7232eefaa73cc
Date: Wed, 24 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782281193
