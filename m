Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E48C2DCF43
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770823494; cv=none; b=kJGpBUx+ZUjFHcikh0ia4D9uy+s0jUs2bFEeZaO+LNPOCECNe7hJY8l4FvvnjHooUTcgCRc7r51cvxHEZeJK5CHX/NUl6SO2HJZYW9xQyRncI2WDS1Mj4+0Uff+XwXAREsFdoN3Num65r92QFcuyYZyqRdbEKBp/Scu+lAXXUs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770823494; c=relaxed/simple;
	bh=mZ3g/gQ72MzzuE55ybofeVpqduSbTrA5BKkte4y5LBU=;
	h=To:Subject:From:Message-Id:Date; b=Uo8uI6AdUdArNbaRzudSav0v7DAhoW5l6GlNi/wRcNS5CHvKQ7J37A76ZAKOuXhdBmZZA2Hp1rmFfhcF7EUB/LcZ67lV5TqdwBb07E1NSsF0E8fcnIYJbuJ4IRVczJzkH5GXDpPyYTqpLSFDd3761BOVhqScPx/dIXdObQTNSvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbkzUqZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbkzUqZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE100C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770823493;
	bh=mZ3g/gQ72MzzuE55ybofeVpqduSbTrA5BKkte4y5LBU=;
	h=To:Subject:From:Date:From;
	b=NbkzUqZ/MOmGukUgV0oejfkRaK+kYE89kWts1rWoz1euvIaAObQGHRgo+dAkbmyne
	 aA3wi1HWhQCMQSTZS72i2uH0W51/LNH7BQ0h+t0riPjSxvRsntsMaggCTM3yWhWJcd
	 KM2TPkeDNJ/uS7x/okXRj+D8celtcvZNkOB2/c/rTCbqKNfS4ZGp6n1mP7X8H0Ujbe
	 BmyCu8zKuelMRlEFbiK7lzbGT27sP9MAZrcQyOu+DzCYpu8dcsIshhL80G17xhX8lR
	 5awdeHVZFB3t8YAhK/l8MPbQqjDIv2bIQNukmfGuPNK40yertLP4ULqM3PU6VPHBxm
	 JBP31LaChM82w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C97E9E31E
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082349371.26475.5410315992161810774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4480360e124364cbb3d84118cf7d29d33ac665bb4ad91590a04a205d8bb62a38
Date: Wed, 11 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770823493
