Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303872C0291
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765436574; cv=none; b=VNN/8mO1McdDdx8GfkztbINA6cxYaTTgzJ7yPG7cB4khlknltDwWEX8g5IbXTcpSeF8tZxGXvfHrMpxIQWMwLD6g3npIfV3osZyYlORVNEfOGGIXWR8JhSOwWe3mX6eiw+xOWul1svUCGEqBfZ28u/7Btv3vcJOjgj1lVNPsL3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765436574; c=relaxed/simple;
	bh=wi9FyM3CTe6ZWoiu3QGEZigGgx4Dl9DBGUCMaZ/Hgos=;
	h=To:Subject:From:Message-Id:Date; b=pppc4Pl2l5AHkk1UcQ3yd7heS6wU0vrkDu6JAJzYlVK2Rk3uapEQ8CnlyHBm1jfzIcRSkYUFBVcQ7THdVkGBQZF7zDl++HEwVPb4WMwcpbHx3pLHCcfJAKTPJGzjCIWFOgLIPr1Nve2g5pRQZSXEBcFKxMjcc9DWfVrFGYvy/vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYttDEUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYttDEUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DA9C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765436573;
	bh=wi9FyM3CTe6ZWoiu3QGEZigGgx4Dl9DBGUCMaZ/Hgos=;
	h=To:Subject:From:Date:From;
	b=PYttDEUda9PZCMpV5qAoe7zT2zGnGyBATjDILIcykPyAOhcMxfEv3aIBd1kg4ij/Y
	 I10vWYHNh709H4KssW0PdhbhFRUNOKlGQqRT2d56Upp7KdBGS8JEYbZ5NLwKDzl615
	 GzQJqGawBPER8EgOk82ODGQR8H5TU3YrKZllsFKYVI4DH4D56+5R9oeXFXbtjvgjK9
	 q0LtDY/R0ltwJUXKQvdi9+EZJtRtpUB1hyc1SGsZvhBtcQcfCipOcixgcxF7Uvulrg
	 sZ9mflFAq6I6BpTv95zMYARFMo4b9rsETyaE2NES65i7maS175sqWZMnNFaK+9uJc/
	 fUN4exuU3v/ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDA0D3E79C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543657363.32241.13590144132911826865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa07caf00c80e52f60a27d89a191911320372de634c28d5e38804e752b348c1
Date: Thu, 11 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765436573
