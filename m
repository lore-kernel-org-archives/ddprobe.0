Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE8531E0E0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755596994; cv=none; b=bAkTYO+9PIe7mIqyW3kWEW36Yufhspxxk+kQF2aehkIeyP00y0F1Jq89FCnusATjehAL6DVkdOXZHSY73qd3hxl58t6a6h2W00b0om6seiHBO9yw8vrztvQfuHMv2mWZEC92VSumoZ0V503uBB30utKTtno2s2aqLk6AqAQF+1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755596994; c=relaxed/simple;
	bh=WtG5fkltID7o6O8zQ3jgRWF/8Z68GfN7ct7N9n1g+HQ=;
	h=To:Subject:From:Message-Id:Date; b=KjauVnEOuNyCYjLd9Ug/L/5dE4dQLbHZnr85DqsCBu+heKgUzC0IbNsMOtXB3TLjU/8zVP9fjfbi8rYb/AFL7yUIdkybYE48UE3FXKCqYFKQ95Nni+KHZR9ZqdVzm02hM1MV/mlKFOWb7RAWxcVVu1xVNho/fHJH8hPzVSRf28U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLeGNKf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLeGNKf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F20AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755596993;
	bh=WtG5fkltID7o6O8zQ3jgRWF/8Z68GfN7ct7N9n1g+HQ=;
	h=To:Subject:From:Date:From;
	b=nLeGNKf6bUMdEu4mVPHIDXGvZ4Tf6dKBNhWOsETTpVGqfHITxmi2P37p4Fu3cK/LS
	 ydK4DC4tfjmKXFoRCfcVNtbPF5g4D03n5aHAqhmUX6NcLudkP5fD1i7nf+iH31Tdt2
	 VSSocMFSBDf6fFgAgQb2+uNS1Y85Sv6TrnLn92EhB+dXHWpyDIHuL0xE3FutXiZiOO
	 o8HlGbrzFYauSzRoIzXB+aeREs4Dzk4ODOznCIIRR5avxovOUaWZ4iNPoUQCMo2BfK
	 ZIXs5y7b+e+z+ho2qUwYjnbl0gnXL+iZrNVu7SQoWe+pg9vdfti6BJx/r4Fc4JoVvY
	 RBRonFNoSRH/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94CCA0EED
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559699357.1573.16464915628952044884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc3bc36459d8ec53fe05680d0452b8b3e4c4bbe52bb04ed8c9b70768a50eb1e
Date: Tue, 19 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755596993
