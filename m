Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1103E311C1D
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767662034; cv=none; b=tDNV1VxDwNfvXp63eVFr528eR3IqCFi45VOboh8whXktgeJ5yTU9sT40gTqu+dPQXU53QyMKviz6C2fw20V1YVAutW5P5MEZ6c/R/qDNqJbCjX8LZlJVMLHWL0UcHRtj906mg4mP9/7zlVoNXHdfmx+6weMoh2xt0VGXKRvC53Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767662034; c=relaxed/simple;
	bh=pmstX4kOE1HeL7U8eXUqBZVsdJBOCWNBqfqVDKG0L0Q=;
	h=To:Subject:From:Message-Id:Date; b=hrF1uIgs3pBXCn9P0SEq43bxnlFuMthq3DYp3gZ7YQIrO0CKSffANFfh6aNuLKpardN78sdsZ9SqtfaXnBEeI06RRqR2UlYi2/uMjzzohCQAjlbE7JDg/SDFnuoCZIqV90WbEhQB9KcFizLoVpO96XgdRVtLZO+VgIi9dqkK/fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyuE9j4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyuE9j4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFFAC19421
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767662033;
	bh=pmstX4kOE1HeL7U8eXUqBZVsdJBOCWNBqfqVDKG0L0Q=;
	h=To:Subject:From:Date:From;
	b=nyuE9j4lCm25gGRKSHbj786WovBQwCvoZOUjon/KWi9B8+XzEeFoK2pBzux+oCPIq
	 Y0lkKbIc5SOOEIse1zREG8eJewbcYx4tWk8u1+rXih7j5ayR/wKzUntDuySqQMVPSn
	 aAdOVpAFpmrHQYGSHs+hhhal1+kIXtJG+UFFyr05mW2dLdIKln9EBm69Kom9/CRipz
	 BpQaPv/DgZcUQZWuXzdZCK/q67fzszrDDZ9rGEaWbDIiUil0s196Cg2DaoVJQ6tK70
	 5vRhsYT3plr0Cr/afY9YKl/BHc64zHMqoN+8frmbExj4D+piKcJW7qjC48rLJKEDPM
	 8RqgnAONz4ZuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F464CD0427
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766203357.16835.12871269944232059048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348905a6febbbf7a7a8cfe159b1eff2a961ed687a5b6fa72663b62616a33b9c6
Date: Tue, 06 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767662033
