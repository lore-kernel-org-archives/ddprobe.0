Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464E11E7C03
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761377394; cv=none; b=S/rFIphS4Fm6MUYIi5mDnR7irDkgDri9lLvyb+enS3YixUqESBmeO/5dnPpk04AXDwqK//+cIb0Z1vUSViKy++2QG+gdybh34vznFegFajinyiUREvpjlDdet7a1cI3lNqbLTIValcqXZhAjvKpTiuknmfXUcS9cdRDHC7FXUzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761377394; c=relaxed/simple;
	bh=VjcHsN/Mhk4MX2dKomAPVyPmuUHwkRWobrkwbs0+BJM=;
	h=To:Subject:From:Message-Id:Date; b=e3Yx5Cjnfehcgbl/24N3x7lAjgtiQeX5j1HVcxaRYHeaGB2s7uhkCoTjsd5+QY5HZq4Md+t9jagYjS6mKvpftwYkcSCOdJ/0vsXPu1m5/yPYyF3oQI62bFNJkblWPmjEHdPUZFOP4oo5kTpo2fUDj5KCeqJPOL6M/SjICuwVe74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DI7y+6q7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DI7y+6q7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE710C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761377393;
	bh=VjcHsN/Mhk4MX2dKomAPVyPmuUHwkRWobrkwbs0+BJM=;
	h=To:Subject:From:Date:From;
	b=DI7y+6q77tvNKepX+JFClDXCP4w/K6FSRigDMjy3VB8JeH9lQh05MwWjB6n9Iji+U
	 Y6glhIqNxMux4/I7bEbmVZhH8gP4aHto9Ig790DPitNwpshjdAUKNDKIwZpZF3leeQ
	 to4n9ZsdmcLYX48TvR8WepLNHdQ2qa65Ep7m+ZrNrAFANHv92EkTvwQoU7cYg2aIGE
	 5BO7LG2EMBFnH17eJtnwjHNjeoJElR0z6Q0h/+tbJfNJP5dp1iZt7EcCIDlv8U/iFX
	 t3iDWyEmz8HTByh28htgOExo5RQ6wXghJqIBYvhtr8eJ6GmtI9UYIQYDiQi+2kHqe0
	 JYdn1dJgmUzEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96759CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137739358.5144.12717547230808576233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88463b564d7de939e4957035c3f09773ac0ba131c10456f0f54885750faae40c
Date: Sat, 25 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761377393
