Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A15013B7A3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745624394; cv=none; b=Xqy/1NBV0tJqtGE97DKWdHE+J5wJ2niOb2C1EzJgUPS4qGnVXAwf7SYxokkJaLmVJaGHNdO+pG/Ct7dqM+exAAlM9W+eBq0V6uFPonsXv7vqqiOOqHIdkodg5lhiedwZUmAuGoB7X0Xh5n77ILCdFjJ0P8hpo1dymbmG0DA4BYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745624394; c=relaxed/simple;
	bh=pjXNzxDPoGohzqy+IwxJfgbKob9yIm8fgvl9b5xWyVY=;
	h=To:Subject:From:Message-Id:Date; b=oq2OlXp1XHa/5tUH+lc9GO6kidQh9rqIPQQvtDM1wnH1s1CKF/42QWI03jeGJC17Mvikb4MxRcMtDgLyKoH8ZNhiNXo1gtiCeTjIeHuQZkbdtbuM4MBQ3Lk9kMksqOQ6NqvgHJlOxmTyU/dR9cWwKq8q1S3c7LkZ+F1YtN99yzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YptaC7Aq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YptaC7Aq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBF9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745624393;
	bh=pjXNzxDPoGohzqy+IwxJfgbKob9yIm8fgvl9b5xWyVY=;
	h=To:Subject:From:Date:From;
	b=YptaC7AqF7i4cy4DbrkLC+MPD/7RCVgBQDKOfJU7h2xzQ4JQIKjvzWE+VzaT0kxx1
	 KullpDt13VRWc7pUaX+QTNaD4JoWHSWGhwUzXuUkAn67J1FRktcDBDLRO2X9q77ujR
	 8Jef7gQe3duhZiboIiZX2IGIBxlIoyoef5N2bMKlJZBsiz70fM6azgYKfvo1jTlWN3
	 ESsXa83P9vz4E7EU734HiKsoPkVNh1HnFh6QBuXGK7UxtldU6IfYJ4ODFd9phIPXwR
	 UhsRONGzqPqSPWXoC4sRbPUS9fq9hrkPXnJmSc7Kr35rJwqj4dFPuQtb+evGTlq69W
	 pk0nwLctqJjZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E65BC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562439357.5287.167868204594935704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365ad541266fe671bcbcd7471828858f1880767ce184004cf48e286549968e21
Date: Fri, 25 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745624393
