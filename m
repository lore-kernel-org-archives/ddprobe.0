Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0481DBB0C
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751648394; cv=none; b=kBHHnq1v32k6fOU9j0G8BxZ8YWWJofee/tLYX3TRutHDmNx/mtSt/SZXyan5saL9Uqm84ZUYeS8qAOChAEtSWYOKO1z1i+Gj9jY5MKjAYJOhLQq9q2Fnqh8OQoTyixpbZz5xveq5XiIb1esoRrTD1bF05h4EzUfTJnOmL/h21FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751648394; c=relaxed/simple;
	bh=2WDAdvw8rzNWc4nYIX3vXvPUdb1F+TvRHS6p5xHQPhg=;
	h=To:Subject:From:Message-Id:Date; b=hzCMaCtGn5anzOecmo4XsJYbf/nwixI0YBoSt5tUIgzjPajwa05w94a1nKITSgZLgEfwUBzZNldf9prziQn7wz83twtvAMAwUhWpd6n86qGmRO6eharpXs7hk2gaEuv26kb5tqmQwO7Xa7AXXN5upUr/gTIIV8SB0AbqI0OH2G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBuzBMtR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBuzBMtR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D895C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751648393;
	bh=2WDAdvw8rzNWc4nYIX3vXvPUdb1F+TvRHS6p5xHQPhg=;
	h=To:Subject:From:Date:From;
	b=JBuzBMtRGADkF7/ntl2OwI+PbWR/7pkLiXjkfOoJ5XdU7iPrnR43iaVbHv6gEAV+1
	 4q/dM4kLO2ttP82BWxna2XhGRcAPStlrdtCky77clKrocYxan/82i2+7sGEJlB72p8
	 KsrTEkfiDpB3H0+cywfA1tCIGnypJrOZlId8P5aUYtUr+gjveDcJkEWTHhPbLR04P/
	 DjbqLf1eT9hTEy2TcEMI2ggzYgTvUATdd5Q+MKvF0ITh6vZY5xaJ2E2TZfj0YGgPMq
	 U/1l6hNGco4UHGhzJLqk2Hc1p1XWp9BGVTFLkz5yOavaRtQzn+0USbZ8u/QchPbti4
	 q/QGIIZoHFJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA14C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164839357.24258.9324986411989223782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aca916bf5757284813640420200844f3678e5c1acae7a652ca5c4e63238c7fe
Date: Fri, 04 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751648393
