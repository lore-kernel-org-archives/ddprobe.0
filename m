Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4A61096F
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775156134; cv=none; b=autY5Z5g7LNn+09TLwc0AP/G/DaB6yWdoRcGP6VdYheXNfBwQfCWeI3SJRWDl/Pg3LAAKUWQxpvFldwSWVWJpeH4ZySiRRWKa8botwfV00VkrLng1l8Cs92hIUt7OrUyF7gTyGm6Eeai4NHLg4i9E6WPSwDZOrQg9PMQVvwo4B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775156134; c=relaxed/simple;
	bh=3ZIio2hCYr2ajOXqlJvrh5/TtWT26RpqZ8KhflIk234=;
	h=To:Subject:From:Message-Id:Date; b=Georr/NIqPI3GCL1CF2OPmB6WrzqTo92Fnr1prpyC14epQiGRL/mITsAeHZCEKezxV58UGmaJsxQY3wRH4psyAmGg5PneMAjSH+euhUrleIUMGia13XTlQZrldktEYFBTgYHrA4v0L7xgz005sJ4u8Q9QKSTRHdY1mEmQCyy2vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4saeRaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4saeRaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84B4C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775156133;
	bh=3ZIio2hCYr2ajOXqlJvrh5/TtWT26RpqZ8KhflIk234=;
	h=To:Subject:From:Date:From;
	b=f4saeRaWbI92VsnLEYlp999ny8xuNhUg2Bl8ydilxNUHLNiOnv3kKdvmuohFMah8v
	 8j+8MH8kb1vYKHYabEoiTmLybyn4ALd2wNyWrTMn/fe/nNjLx65SepjzLZWWOYVz/g
	 neqgU6O+hQlDiFfXxnO+OfcjuUnXdCOnYxtfuWc+2KF6Rpt0MM05dlKnIVPE+XtRdQ
	 cP/+JPyxdJc5p2RApeh47rAjpO/3Z9RHMX32J4FCOKcjnK+mzJ6DKJtqH3qthiHfHL
	 IoNC+NOf2U5R8Rq4SgDAa/74/8ud6liM24MnWemUMZBQnRkm8ao4ARzpXj2Z5gDuGq
	 z72PNghcFU6tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB12BD6AAF8
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515613369.13241.15797388551439988692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a073433f7cd842d57d0b8b294eb873c054871aea543d29e85d719a505e084ee4
Date: Thu, 02 Apr 2026 18:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775156133
