Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234A7191F91
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766239434; cv=none; b=hCiE6OInjRpgqLQHSNAmRiDLoHzaKsdaypADtycQkdUN+HerksPMrVp0h2OlMpEU+mygbQsB3FK9aFdwn7WZKyuI72jcKjo9Is74dTXOfBDs9e4N2SM7UHlX6CGOpScXbDw+UOh01Xm8X3t2QaDu/z1bv4aKXS0PqbNEhsl49Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766239434; c=relaxed/simple;
	bh=1KZ5MTlVqT7hDDoLx7e0qV11T0utVuuJf7P59JdjHeM=;
	h=To:Subject:From:Message-Id:Date; b=kM7P9IR3UWMhfNlAVnQNZHmeJ0mH0aL3vHrk4758D4Q2OyV0wlNbG1bO7sC7OIsYrO9ENmEh100DuOF3xPeVXVdIsuhsB7ErG+T3RhZeMSTFbWC57VxWNKAP20X/cyzbWcG3CPfuyl2ApC1ar4qoWpU30dEzJr9i+12JydShA40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyJXlWm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyJXlWm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F346C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766239433;
	bh=1KZ5MTlVqT7hDDoLx7e0qV11T0utVuuJf7P59JdjHeM=;
	h=To:Subject:From:Date:From;
	b=KyJXlWm4RBqhqVF3srY7bL9CQESijSvTt4Tg6WVvEDf9SxrLCPOUPuG7j/+STKiBR
	 mHSO3FZzhbysQZvcJVZnRZ4brzDFnMh+CBTB9VHSfZMfU2ztDWzbiAD0K3CE+kYjvw
	 vWpj1r4uxe4T/Zj4VH113zaf6CGzvbK+6/zdWRgV/M9ZgFSB1cHyzRIvQfzlFS6OIV
	 jfqJTdofSmB24svJrKl4Bxh3CVKImP+rYekUyrBYi/ojoratjgcjBAp18ARuN9VfIa
	 D0doNSeFT6NWw2p/zhQf8HQ6yIfY/9qvAWi7CdWNMogLEX1JwdhKq/pvsgp6W+SAvQ
	 q3H5Z1SEw0i6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C4AE668B4
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623943358.14795.4362889235256917952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec731f9b1995f292d46e77a9d1324fdf622ee161bf4336890d05382958dd3d8
Date: Sat, 20 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766239433
