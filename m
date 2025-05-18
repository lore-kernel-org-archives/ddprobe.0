Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325433B2A0
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747604994; cv=none; b=Z0DT/WF+JJvL2jovR0dBLg52p009bVkKXwqf8tz3boFkHEhfZPs1grES8gLMEuqt3yURWjDUf+aoou5WxCMvTHzeRRE0sBoDxOsYI27xib/sBWxpMI8bhlRy8Pi7ZoXM+8kLuE+IqDgfnsX1QMJ4MkqW658FxGO4eFGNt7PLcnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747604994; c=relaxed/simple;
	bh=iPbCGHzS+rjcLvEqVVmakvMvvjVXFafEaOQQMB2yO3M=;
	h=To:Subject:From:Message-Id:Date; b=WMjWi6SkoXIRfGJKd/2xlrsuNBDWlAM1nDYFN27xqQJiWZ8+0Zm/M7C7mLzA3vsNRLU/E8jzbEfjIAbcjcIDa9AuZprjUll0b2EVxQvfEBqn1KiDdDJsRh5Mvk4ZHkVCezpIHKG76FS2kQMnCxPlNVOA3BOb2x7KzrfY0teViNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbodNcP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbodNcP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E25C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747604993;
	bh=iPbCGHzS+rjcLvEqVVmakvMvvjVXFafEaOQQMB2yO3M=;
	h=To:Subject:From:Date:From;
	b=kbodNcP+3TJdfP/8vxnrMJXvdiHG1sJIiN7kmse+hqPcVk9K+urTO35iZ0Gi3ujgl
	 x6BQ7oTVSG8/W2jro9/k0kTp5QtMjnSqF5kaaqzUU9/NsmQ3+dO64mqLKN5qsb9S5b
	 Aiia7bbNLwuLR6d4JOhdyRurwl+NKUTTs8vIjItcgMf6Otffb+LQESj2ppmaPp3ZTt
	 IPfl/utAvrOSDidRpHtvDfCPXfIcKaIKNwSG0f0PYXODbYkXEbEfDflgtwUPe4/mPh
	 roK4+Wk7Tecdulxa9adt+opqiOqhllKiNlXorUWAwha3Y5q779wg516rxrwHhPNDOd
	 C68trW1XpKp1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91612C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760499357.8052.4080758865696104393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e330f9f8d62d1d1626888244ff31cf5e9e829785429ff9c07c6a9a3faf0b510
Date: Sun, 18 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747604993
