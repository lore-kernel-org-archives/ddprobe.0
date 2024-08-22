Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB281CBE9B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724337354; cv=none; b=SJ4XhAQExtdawculqc84kA5j7qiu2IY6sCeCAU7z5DtaEnx34AlWFKqHh+tQeaFOal4E8UIXXW2M+wqvD8m2ZJi4FqG13/fn7moSN6m6EfD9roSbdv+Qa2J+tZIVvFe6m7duw/aDZNScLplijTufO5q3r7Cj0IbRQArg8I/h6ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724337354; c=relaxed/simple;
	bh=BOZsdCk7c9+SjL6YQmnvYgVGthAmbCaWWmh6wJlKgtQ=;
	h=To:Subject:From:Message-Id:Date; b=DLia5Yvs9DHK3OqmQ4joVuq7BLjeH2roOENV3GdmPeuHyFR+dh7+4RHSINrQ3M52TDn8zRmu7JOdF9BEHdqvZjXo0HG5KwECKlixi9gOX9F2r6LkkKoszNCPgUv1FzWhLFXhOYn+gN7tdj+6nxtxhGJ6EwmFcynwiJ/b0Yxbksw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTSkeykU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTSkeykU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D36C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724337353;
	bh=BOZsdCk7c9+SjL6YQmnvYgVGthAmbCaWWmh6wJlKgtQ=;
	h=To:Subject:From:Date:From;
	b=BTSkeykU1VVv5PNznbII2f9fInvPS+kFKuXDWINkV3EsO6sk/3Oz3HfUlmsY70O8Z
	 QBBjnuWHk6mOIZiqDwPOLg+Wx4Y9yrte9R4Sw4EVakbAps6WwsmgNZYq3wbaoB0Iy7
	 RHAX4e8j19GDMJSWqYO4gEJcD97F37Y+5qEEbeMHOYttp14wc0kM98H3WcqRV3/51a
	 urpHUQVjnB6Un7EuDKj2BOMlnIHyeOT9f2NlZ+jsyUjmAjKhzcmhx3ZQJkCa9Ro5to
	 T/iBJ8GCJiuUKE5gV/N4n9CKdmM/6NGR3X7YYR109nKh4VvFyiEhK0YlioQwjcyzGW
	 OYR80UANqG/9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FC0C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172433735365.12905.3152522874929654589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63329c5fc16e3cc69116b1890a3b8bd8ccb4168b50df4300b2e5cea0e5bd0a27
Date: Thu, 22 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724337353
