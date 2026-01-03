Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF5810FD
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767478434; cv=none; b=mR4FVz3QtOiZFe+M7Q1X90wtw0ZNkhR6aJGzsxSxrxtu6RHjrLg8pd8OmXE/MYbzxr5kSaQSayglAtW4yNljfwpWtNjNzAahjfX5bsEmcaHNmH0X1j1DBqZSk6tKtEiQ01Ip2GTHvbu+NiAB3w6EunDbB5/5VjMMadxTA4j9RJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767478434; c=relaxed/simple;
	bh=J/iP8+rYiXmwadz2WyMJgxL05TLTpkajsJYsGA0VatY=;
	h=To:Subject:From:Message-Id:Date; b=ABVtHHrCnh+LRGH8jbYXgsaPzyyfbIUV/7bLermTJAzi/h7Npb3ZZCffrqO6o2eLj/lvH7/Z27LjM1t3jpI3zdO6KyhCObdF6VaMsCNonoP5/gwpXZafQ6ZUPt8P48wopswDGfj7bU/imwDIoIO2FHxaRJzFXDKZJO7VMckcNhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBHbCewb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBHbCewb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86F8C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767478433;
	bh=J/iP8+rYiXmwadz2WyMJgxL05TLTpkajsJYsGA0VatY=;
	h=To:Subject:From:Date:From;
	b=KBHbCewbPnm/52J+RdDXzlJw1KduLEUbo3Y3pavxFhH8mQ2m4jEScY9Big7E8q+y6
	 0lfS6jZ7vj/U1hA9on1/xPbs9H81RmpbeTCJbVhOQNrKb8WUlN/mZpTVqOIJM4ivCM
	 7QQw4d8joH7WkcFPYle9+24d6rYkYHOcCkzFGFu0GIXB+NlAnPzEkyFrsYiurOBXqO
	 edF7EoQHwL36DAGJ+LNsY3/mudarOaSPKcofMFfowPvAJ1R5hNVSZtlTRULLEcbgNy
	 V8itjDiNG1m6PK66QPZmao+UtTR09ZdxUfYcxJPTY1zHGTIkOeJ+B0R87avlQPYBh2
	 WBELUDIzOlT3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A4FFC619C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747843358.6100.4996467267664161343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3712f7ad8a36293b0621216f6803695025c19c516ee76444d90e380fd8b04c5e
Date: Sat, 03 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767478433
