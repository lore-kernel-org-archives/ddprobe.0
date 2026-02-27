Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1FE1FE45D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772183694; cv=none; b=UhLU2HpiQFy26tcR2XJz4lqhWpdpxolifoV1NgCuMPKXsyZ7Z7lYwgcEQZ6eu1tiZzeVlAKbOypIV96mAKBiphum/UcJqRd7bObdb62C2VTLAC7bQZ17uoAPmwptME+Sq+N8pe6bmZ+6V/jJ4Hi+jXhnpqwg6Z6h/aRz2SbJDak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772183694; c=relaxed/simple;
	bh=yU5QiBMTp8G52rSHO0HYaqrXPJl6hLdA7nJOXGB8LQE=;
	h=To:Subject:From:Message-Id:Date; b=lWf5fvl3FouNLnv7JM44sD1INcIWCIVE/bVLp2UdJoX7DiYDPsdAHtwpLey514mnaMtsmiqhM70PYqAnvZZIYvbzJ3Kn/yVo4S8KxIwtigIO/AdRXzi02eJxqcDWTY9OEcKgM31kSzCdY9Dz+5ga0gMVY2XSP6XlH4lxIFjqN00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWnmPYM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWnmPYM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBEAC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772183693;
	bh=yU5QiBMTp8G52rSHO0HYaqrXPJl6hLdA7nJOXGB8LQE=;
	h=To:Subject:From:Date:From;
	b=WWnmPYM5ih3qr0dwoKN+4kDH07gJJfPL5jtvXmNfSUJJ79w4g2vyCPX58CLGrpGwA
	 eix1zo+BXk9sEs9YZvvEyyIqH/nYJLzc3PYKDHleIK1DTMH/fUu10KfiXE0cS1HxIy
	 bUhDHQhL1e83QXrqMyBLZzD1VtvoRI4WY3USi1/L53pWOoFQJ4Xaog2nGA0dF8f7k5
	 uwN432qWwP/6oUJdie02LjlQdb+J96zkGdojf0+aWFuLJCMVttWEWFTzKZwx+LNEM4
	 avmtrQtHnpw/2oIiwJsDV1J+TsvgR8tFyPKiSkyefN/K2etDnY83B/r0iB81w2Slax
	 uW4h0NjCgVm+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BF7FD5319
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218369360.2645.5566315347611977167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53095f0d4a83c654b9bdb6dd7625003230690978a440e1e7daf4b316186388cd
Date: Fri, 27 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772183693
