Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6167F3DDB1D
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788275434; cv=none; b=aZdhHigesRrf/RSTeRT2UFqj8j4j84dsDh3xuEU9fBf/FUnjOjGHrs242kncVn02Lz1TBOG6bA+ok8J0O7FtOZrNyg+72zilFXLm5cUfIopYw4LVAeoHUK9i9nypgQzohmx2wFY3cE/5nXbXixIGOS/iS5vmyp2TMSTloBO45ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788275434; c=relaxed/simple;
	bh=oaXzsDPu58w3jqFj11BxEbHfrLCcZlFO1reQTo9/LbQ=;
	h=To:Subject:From:Message-Id:Date; b=eNA7z5hHh4RMKA3gOEvG402t5UZKPBKhLshHrSqCTgud3Dxt7rE1Emsc5zlDu29RilxKER/lP+8ZpS7BxhkK//uu5N7tPgmc2fBNSuT9v8OXwQGf4vWwND7LqRAumLaZmEQS9LxdHrwBywcKeprA9EPSvj6/OvAh5lguI9WTboY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoZVeOA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoZVeOA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6AFC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788275433;
	bh=oaXzsDPu58w3jqFj11BxEbHfrLCcZlFO1reQTo9/LbQ=;
	h=To:Subject:From:Date:From;
	b=OoZVeOA3T+7py3ObYBVCKrui9279UOqmeOoQWGkAuvGGIhTGYAI/VUd8xJlQrB7e5
	 iSJPoQ0PFGrOspR4l6Wder1Cf37tNr3Wn1PGi2zjLGUsg8HVn2FEpQdP5gx+aHfqV6
	 SaA3I65ukTVwAMyV1DmK3lLSFg1ut0kKtyLpY2XFZU17/ryCAo6bafie1MXgqVheCO
	 u//qp8+taDfMFGLslQhNe8XVk56tNf5wC5O9D47I3oldK8krNprBDhTq9Tf9zN6eUS
	 mxJn26emIWYdk0S2mxQMJ/E4ARwyeM3BycmYJ6l2hcvvrxIcJZinnCw5GnIBnWkiW0
	 jjawlCkJQYinw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4FBC624D3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827543369.8829.4551490583568079645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17bad610009c4451c2adaad2e9e822baf2c80eb1c90b5e09de6bd1b1b1346ef5
Date: Tue, 01 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788275433
