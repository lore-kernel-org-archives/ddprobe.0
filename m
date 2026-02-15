Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C652223DE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771158294; cv=none; b=XVrAlDVTIGBZNjfKKIQKgBMJHvrFjBqxH/WWJZILXXOfb+0JtmLZu4DUh5P95YcUYEDab8Uv8h7eep+yflL7cEAxs9EV3uPMeyvwylMNlSNjO3WzVmfYt3YMBGO+ijYhBqoycxmaU3JhN+aLcA9s28unSbLLZwsIMBmvlhLeb8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771158294; c=relaxed/simple;
	bh=dtyzY5bxY1y1RDGtkP0FqmkLZB8oVfitwHgIre6LvIc=;
	h=To:Subject:From:Message-Id:Date; b=u3qR41W/CBTD7K4tMX0W3K9mI9Q8aKIwub/06KZjehhIBWf2Ss53h1ULwk8juz/ipWKZsonSTPi3xy2SxskmvjhgcfIMI6MI8B+OjWhmKxpPyB6wbSIG8cLKn0lu5i5ELGanLybKQWrOWryMXHKUbdph83a+JRXFvcE4LMTgTPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWv80erj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWv80erj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F79C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771158293;
	bh=dtyzY5bxY1y1RDGtkP0FqmkLZB8oVfitwHgIre6LvIc=;
	h=To:Subject:From:Date:From;
	b=dWv80erjd7K/RAF5zAl5t2fxxeFlNATSREwnG0LnFT6KALbUekYi0eGunWpUH90dV
	 MBkb2mR31ajlEe0I/AC2EGm3WSHZa+RN2zHFRS56wpEj1l6Sqr/VA+dWGPxZQnY9Ca
	 fDnZDPGoGU7zNP26ra0EKtbXWt9aWY5Vn4auLaLzbdqOK2NVKVfijD+AhfgtmQwvUY
	 w4ohxU4+FWJzbfmBXy8+udeBnDS6VCHFprjZITfz9AgG+R12FwSpeblcUwbQDm4oux
	 p08bpSO/kIHoFlDErhnsA0owWIAIPNFkaR1ipHOP64XQacyZNHrWF8/6uMHV5Reb6A
	 euPblJfnL+9Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0CBEF5879
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115829359.31574.7096508974408809372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170b95791e7283f1be7c105bc860ed24a1a5d1c86439cc2dd53112c61a2971d6
Date: Sun, 15 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771158293
