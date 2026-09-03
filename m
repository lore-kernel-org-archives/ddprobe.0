Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A40433BD4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788452434; cv=none; b=f5mMFuIzwdKa3XQM4OszxgZn76HH6+TDZDTPji3iXOQG4Oe+BOd94XSeVpXWmVA/8SP8vd3x77ICMuZHFYLZl6SdsxikxypPbdA6eApC4CzSEVq4GFMr3GJhDUcjZkazR4qpOWK9PQuEhZztYnOO376CzGtJOl4SwIXb3VeCjDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788452434; c=relaxed/simple;
	bh=CrjCgaGxZ6nPXFs1UvNrgzAeuvTxtOzfbMJadz+9xXA=;
	h=To:Subject:From:Message-Id:Date; b=TPV+aDRXNG/d0P54Qyz57R0WWKnzJeAKxWqbnH/rbuIHyLDuyjdzb5hwe1/KDVRxkx6f+2PPeDkFGgDWBwrO98bkEZ4//rUX8tI3zFrzvQSu+vsn3iHT2Ydg722PNrvHSGE7gaC61hWXT8EjWFHKAZGgFBEFPbtPKVr0LYM6viI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQLEo4XW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQLEo4XW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52C7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788452433;
	bh=CrjCgaGxZ6nPXFs1UvNrgzAeuvTxtOzfbMJadz+9xXA=;
	h=To:Subject:From:Date:From;
	b=eQLEo4XW4hYj3fpXjrwyQGqzTD6uYLOO6XAqljfTv4w33ZaC/iC5D/WGwVL3G7tny
	 VE2JHJPOukejhvsz/Zm7PzbP87p95FjlmnJNKapUbfLiH5eWYBriQx6MSoHxCCB96w
	 Yhd9nRm3Gafevdnq6RL4YYfGOr4rB4uMNhyZZaUUySTX44TE3E/e/X5z9dh7AuhJxp
	 h7U7H4+uwNt5bPw0WQfLI3/A2LGdvu14tNYYQoaGckH6euu9WgL4Ns2B7pFIEFIFgw
	 RgH9nQnbqYr4nIBrC8o0Uiqu0eoL0QuPz8E0ejMFkVRqssH+0tF5BYUndqw9uB/5QG
	 xn4Vk9fmDDq4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBF5C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845243369.17234.18350414820539528879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d699a7709cbeaefa9cfb4f261e702a0b6ac94c8b5a28c0525d695e49821aafa1
Date: Thu, 03 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788452433
