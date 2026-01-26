Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157732EB87F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769463834; cv=none; b=sbdgik76A0D9KQz5aBR9wqMZVQbitRiEASq+JUDKFEwi2ENUAkiU9d3GtJMjSVw/E+ZKWCK9y1+h41ZLwhb2PIkACRwTcY1VPdizPCdYvKMjc4K7DOEct+E9R921Y5MlbVIv7Cn7Mq0bdX7K0qzHdJLqbI+Pry7gyFRo8ytzhDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769463834; c=relaxed/simple;
	bh=x4cQdLfJWlojtYiwMywT/d0JIHL0mi/ZeOna1nn1pIM=;
	h=To:Subject:From:Message-Id:Date; b=P2kSN0XHuJUU6WwwrWXdn3Kt2craBQGRuIExjDi9KDQGxg97l3xK86zt01/WBl9PMBfYhwqgBMHMc+btA3yktdH72eOUV7h3kGnfcuchd5WpYYSY32PW81IDPHBKLN91GZzWViPSeBGcFYyx21IbUlgSY6lKf0sUSQ8o3d87J1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HM5+eE/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HM5+eE/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4F8C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769463833;
	bh=x4cQdLfJWlojtYiwMywT/d0JIHL0mi/ZeOna1nn1pIM=;
	h=To:Subject:From:Date:From;
	b=HM5+eE/SGfD5ZG5hkdGzUd222LOXXbR2xv3KI6t/K3GDH8dKsI0Ozi4Q2RtyoEWpu
	 i+Gs3vDAQnVA2josCsOV5TuKlEUgIsAoUekgfoRaU/+/YsTqSWBngOUZZBF9ZS7cWN
	 wyjNmvH/pkPfIJSK/ssHfb6l9LW5CF/24iVN1CezdBWFaAbz1WO8SGnb599cDCPID1
	 hSWxiWgdrFg6iwHSd2fduL/+kZD1C+1N7htUJU8K+2brvkjFqq2ZvGrQCBlelOP3xr
	 cZEZYADfHdKbRWt7SvcOS1w//mrRJSeI67+EKShcxJkNDnq09aU6cR1ZiLHNaH/APj
	 JHk2OJu2p3EDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9BD1951F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946383358.1566.8346708007253881305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a04e5f22c675a5b08abfbedf7e78e38e9134ee6048bad275dc895d0876a6daf
Date: Mon, 26 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769463833
