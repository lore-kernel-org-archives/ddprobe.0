Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF9F2D3220
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769668434; cv=none; b=d+B+n6GkJKwwRKXwqgu9gFW9jE85Adk1QgKYArNi/CiD3q/SCG1luTSYjwWkjAesWzC2KCr/N4R2zsu8KCrFt3ZABjHIvjZzaHZ1iIUk7nEsNgOQlXp22v2lFQjw7pPbcyW7jLO2hGvL8hZMcktoaephuBIXI+xf0Xzu55pzXQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769668434; c=relaxed/simple;
	bh=snU2lOlN0QL9yTD9rWUFwx3iEPqxWT2HVPLu/g+9V4g=;
	h=To:Subject:From:Message-Id:Date; b=TZha6WV8qG2Nx4cqr0eLxIBPv1cgxHVpSblIvuePCnhfr58liyRKy2KUKFgF1C+d2s4fdI5aNDac/u3tzDo+cNR7QRfT6Wj8XZ9keDkwY6EB8y2N6LoXqePdwuewHlF3OHwaesQ2mzgpTgqIcxyECALqG6TCc23zPfRR4n2v0zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Px4O2f+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Px4O2f+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A367EC116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769668433;
	bh=snU2lOlN0QL9yTD9rWUFwx3iEPqxWT2HVPLu/g+9V4g=;
	h=To:Subject:From:Date:From;
	b=Px4O2f+nKgkEE5liliVEzR81eJUQxFuQEznWggDJfbGjBlJxdlXWi/LKhNiVb5zjf
	 ygYehFN4epXFy3FH7MUtMd85Kgxewm8vDR+wZ4gG5I76y5I7y0AePoh+GCKiERGWS3
	 q3EVoBkcNkMQ4piVJ8vNHqRr+nEaNVSo0nmpcr4OoIpar/ym8OaVGp7zEpb7MM4AXI
	 vkQJWsFK5DAwdl9YZKYSUn1s8BOYlyUq27+gcNeGl8fsMSisBJiWXvi4VMLJV0oj9j
	 ZrKBi798h8PYH4GxNRXWjCsmrk8DSSvxVzJO8FBIqfsYWjP4cESI9C5vO/RRUl/Dgt
	 rq3C/sZvmzkfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A1ED358C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966843358.7102.2543533762518824891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29bc0263475767725bf5dfe851de548abb8f95a15c31a00e9cde42e706d347b3
Date: Thu, 29 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769668433
