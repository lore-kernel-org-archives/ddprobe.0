Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A211D86DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738564554; cv=none; b=K0wBg20awtamieP9oHUsyQG14jmwZb1cdgv1VM+ExGx8ylXKrd6ASu6Scx+lvCXx9hgBRaTV8GUbdUFPpEEmUDIQouUD6UD6v2LZQZSA9r1M7k4nHYyifI3TBJXj35spKh+ZXAyNJU87B0gfAtPMybtj5OvBbIa0KwmiyPYrnkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738564554; c=relaxed/simple;
	bh=PbHjeqhoDdHBhzi2znm0Q0hLbq9zA51gYPGSRfzN+4E=;
	h=To:Subject:From:Message-Id:Date; b=XhUt4KeOW4OXVSmttZB/PWOok8d3dgxfksccI/mwdM/S4kHHjmWrxORqaptNrr12Zg3pYEqmH+j3jh9T5Tj5QGCyXrOrY3vVSF8OO3byzItF0Yw3YwNQxsfjQ3Rx551G2tcj5LH7sFX1CKxAYgw/rvyyg2l75ZNY7kC+e8umPAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSiBbLMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSiBbLMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DDAC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738564553;
	bh=PbHjeqhoDdHBhzi2znm0Q0hLbq9zA51gYPGSRfzN+4E=;
	h=To:Subject:From:Date:From;
	b=qSiBbLMJKrJqq8/gTHvl3xi3semvUk9zPcoRYUS2+CIFSJ/Zao26TcxTuRwm2eNLq
	 j1XJnWPnnda4x0OsCs70zGrfl4lxQc8+yVrpvMf6E8+0IG16VeOLhRXbBAOIGKtUZG
	 kAvBCS4XIginfPldnbbx16uYBf0zsqqRdfGjrA40u/okZnqj/hHB6KGWhgm0iq4hop
	 HqiFm3J30pQYJPqp12l6I6sbpc/d+HsoyifriqOMJn7em3i8f183fJSciGAxeiiCxQ
	 GzjA4Ml5vupdwzZx3JsWOHUKGw7bBuu4R/bH9SMfsLYq1t/+ZQjTFuZ7CAYNW8aYHm
	 yHC+/ve3SVIRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B9BC02193
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173856455365.30676.3001952034257280556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7dfd605fba6ff223da857e1bf285061082b016a4c8fedf9abd58e6da9cb81be
Date: Mon, 03 Feb 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738564553
