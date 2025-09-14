Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158492D062F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757878794; cv=none; b=kFv4QMHOqjYxbbEn5LVjsRv66OPOFwWRK+BKbshmeNx8zdKZSg3sv6RV/hpdRW3oag+4bv6cG00Ql5mzjFxQsAY19keo9ZeJOpRTCcu/TiO7OIAJeJDgES/cq+TiaJVW+LU329YQL2rI+qvvTUDTTVMfR0cU8GaFfjTjkTMEm6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757878794; c=relaxed/simple;
	bh=g3la/Qg3OR1Og2onDFhP7fdoOqnDEIljREzudhYYnSI=;
	h=To:Subject:From:Message-Id:Date; b=HMWE7X3bcXWq9jynt3zgaqM3ceeZqzizPehwNnep7hX/oOSM6mM37TcB4X8vebTDPF6zqEtvIChhdI5TCcS8cZtO4X19dhjGKNroUOQBUpHGvYfyZB/BL0r3hiopdrHyo/ReD5Agz16Uyxp8iivgY0JK93MBp58Z/ZU4CR3ENdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYJvlYY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYJvlYY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF17C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757878793;
	bh=g3la/Qg3OR1Og2onDFhP7fdoOqnDEIljREzudhYYnSI=;
	h=To:Subject:From:Date:From;
	b=lYJvlYY4stdRSXCJv7F+8OzrAQXUzPxlzdrQ14UyX8Xk8bH1NZ72EBFOZjru2zyUf
	 tv5RXGaXm8bM+Z5EE6VE0kkZpUsBmPlSek5iGTdK2DTtZCkYfAzDY8uPjWqklKXHXk
	 90Ezq8mQ7pthTvlgdfEstjUM5Bp0243RQv8GLs0qAbkEnErHgPZr8DeJg6SzuUqrU6
	 KOxCacLjikRpAc7cn028u468betPSuyw0A+kQzU0sX6IpgIjgWsnVQNosLwfmTdLBi
	 N99BwyrJ6RCw7rAE6IW27CgdydXKGbW32J6OvDGNlmmyF4ldNGtNZ4s9EAyvlF3/6j
	 8yQUWCTczqtmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E31DCAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787879357.10169.9300285629587475608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c320b34f26f7e526b4d6799bb98871a933ccdca1e5b40dbc5745c9ce808fafcb
Date: Sun, 14 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757878793
