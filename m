Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA891A08D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719530663; cv=none; b=eL1UCazqJja0Z3o38BTKth2yy4K67rpL/XqsvputpxjeAxg8BbafZRqHvBECV5DGK5CTiqyWK7q/06YuGGcAXWxeVwAOTWBd9AoKUE6VNBgFQcWN4AOX+ma2JaiouwPDdknB2SOgL1M33uu0VxWCdrtRZ+xG5EhiPZ0uxn9Co+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719530663; c=relaxed/simple;
	bh=s5AmCmg2y/JYcqpilW3jr+WwNmqF2LMMULcu8kCELf0=;
	h=To:Subject:From:Message-Id:Date; b=YSXt2aRbrAiUmUIocRBmk0CCPF9UxwF7qh4lEhWweU7UUa0HM4czAb/+Y8wa55YyGPnauUFdPiVyMjDCMZnBe0IZkSqj0SvlcJlTsvyEZdMOfHog93vkMK4S+wkceZW+ZZWxD+ZFHdFFFfQg1mwQbfk0AbEWnElV/bdJ02LuwZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H70J6FQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H70J6FQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C42C32786
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719530662;
	bh=s5AmCmg2y/JYcqpilW3jr+WwNmqF2LMMULcu8kCELf0=;
	h=To:Subject:From:Date:From;
	b=H70J6FQDJvJMiH/HPQieOYHLuoyKzQ7hyOfiMkI/r7PANlSyyAU/FfAER+t6D6R4w
	 dIyyUu0YGJrqFbvtNy+hkV2fnMcUCXHUorN7uguYPrR5GVT0+znyRGNUjQroA4Tpxc
	 iJ4dnjh6I15kyIl88Zk57zeagUxuhqp/4X4e04L6VnnnMqzqmjY2DUuOOpesj2wTPu
	 B+b+gAVzqc/xkctFenAN1M62nLJQvIZmnVDNrGsgf+6oUVCGkwVS9dfQGlSS2bpAi7
	 n736sTKm5XIEq81gIcHrhtfI0p+YszfJOx7gTnG5K5oh7KsW3aoP4q/jfDp6RmnW7M
	 sthdnOW3Top+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F49C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953066278.19918.15870935190796143439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1738d69b56a73a52d5dde8dc75dba06e4ee323a53e919920a1d08d587678f9
Date: Thu, 27 Jun 2024 23:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719530662
