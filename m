Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E6020330
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756208993; cv=none; b=mfDTBnH90CEPtf6awv7c4a9M5FU84OMzReRoLBS59i525uJ8ZAF6xViCoI7LYCAmkwQJVb7SMn24teYG6QN623FdVXVbsT9l2wTyssB7V66Hm7IPPqOhBBK88Wa9aRrkhNJA/o36kL0hPI8QPi+AohhcMgiOFC5IRDtDzEdqtQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756208993; c=relaxed/simple;
	bh=k/cz1GQ+IC05pLZgsSlWT3CXmYZoWxLJSOtzMeV3SWo=;
	h=To:Subject:From:Message-Id:Date; b=JSB9MTSGvDE0ptF6kRTIC74ymgVYGHMHrE/nF8+XTezBA0Ta7fhKPtGphWchL3kXArFILR0122+lGUJQ9zJwCNUpP1XWZfXXw3ODefM96mtDLgvuolGLm9I+4R2T1n6YBb5LZoKpwPPSLBQqcOVZqYUZmoAEo6yJXDbYo4yOjec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdEFRlZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdEFRlZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCADC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756208993;
	bh=k/cz1GQ+IC05pLZgsSlWT3CXmYZoWxLJSOtzMeV3SWo=;
	h=To:Subject:From:Date:From;
	b=QdEFRlZJg43Wa8oopxYOxsNQPelkR9Na1nxb/pRTZm5623y34OmN04v2uzFjCbg+E
	 DamPbm7f55JDPZj2sOilvrdT2H2IC+ORTFDGwZu4UllkjNKSaSxiVhgjISvMt4auoj
	 NSGYnB0dEHCrwhjAMC6LZuAw3iXLfs2LyEfVIy2X29duEP/sxbChrUazpXO+9/ACUM
	 rGPlSZ7xC2D6gV8j1uvGMCSVF+uH1kNEcxP92O+VBJ2kkX0S6UyD9bCtozLlz98WaL
	 P/cRV3cn3R5ghxB/lLKDgXQFBH8dUiUwlMzKEX7TySiXrWRJzFgHdfBMXVJCEtmyN/
	 GOecAgjhdf0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90062CA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620899358.14359.528022606938627773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad1bd26337155eeac6d286229541a5b80df7b929d437ecc0380467fe2fd8a120
Date: Tue, 26 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756208993
