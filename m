Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448DB44999E
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783634914; cv=none; b=H6o6LwXbOy5sdpw3lvGyl5gZpyD7hK8Rv0oQhLky941JEAqQwWtOs2O9kXMwbNJDAzOkhufnNgIZv5w4pVkIcLy+lT/CdVRbViMTCAcrRQ7hj5VioR+MkrOE37JMdS3IDLFmV0PlhbBC6Gdupt3Vl6fCnZulIY4mK5aHGZsZTLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783634914; c=relaxed/simple;
	bh=3Sh6nhGtWJm7uGTWQJb6JF/daxQLhng5UmnWppTprf0=;
	h=To:Subject:From:Message-Id:Date; b=ukpPsWLuCv5gVPajyEoQSV6KaG/8O3yp2165bCRHFTz5ARH3PeFJ7oaWh7a7Nh4zkFNoK8fSEBgwp2gfdbgvFft6/cedP9hC+lh0vYxPeCby/58k/u+xpEJB9pKduJ7Jyh4HKTW39UBk7fdTMt/Y0q8fV+CgHWoNADSFi2LfrF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIRypMx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIRypMx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC413C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783634913;
	bh=3Sh6nhGtWJm7uGTWQJb6JF/daxQLhng5UmnWppTprf0=;
	h=To:Subject:From:Date:From;
	b=WIRypMx+74mkZc7T+t3g5wHJHESLLcUA4QDuRPS4GIdD3Eoib4y4di3n+aEItgoIs
	 olJiNRwBLGw8YwepT6ffvcGO4cK08bcWJ5SAeoydtM/xUtbLPxdn+b932wZPwttXbQ
	 +lC3ZpvntujBA3+60IqPa+Gg1I+oLotEyOI6FC5kaDq1njn8i0jlR7DzB/NBoqCyIg
	 VxrBVx+mn21JnE1eQ8ZyUkjfiqwnFTdNWYyXUT2yBjUCWJiWxe7SVgNtSdv5T9QP6Y
	 7+Tn6tkW1M0lBU26Y0Kxpm3qAvI7eTsovGr1I3s6gOWDjUsArpLw5+4a9EzfiNozrI
	 Dk/znMflNMFqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9516C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363491368.13631.529057835537869510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0660d10f70041a963dfa7db5d34f6f9dc21da908da0070e2dab2c2d96a279d51
Date: Thu, 09 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783634913
