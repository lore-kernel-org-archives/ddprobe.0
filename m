Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD9A1C8605
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757275194; cv=none; b=rbqnOaOxG4Mq9Hp/1l0ts247GjjEpGm/RsA7/QoukFjSBKyEJCCB4BwwsqhQSOa5ymKqYA8WorvuFn/rumYfdrgbKxcOA9300+4wdQNfIcSU0dQnSkXMZsYVKIp2wEaXgMz+qHuLBfprJx0aa11ME29Ok/uJq9oxkomx1rVcxT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757275194; c=relaxed/simple;
	bh=XuEER4yrxTmEdXHDSeovxE6cLnadyaFHzvxoptBd/Z8=;
	h=To:Subject:From:Message-Id:Date; b=CRLxmajUTz2wQa5a5gQlZQgmQhJTkojoUtDwt6FBs+tUSDI2+yOSo4L55ijYw2ghWfXE12cZRlAS11K7cIJv8iyp5uO3Rix0/3+y1PABVMKEIvkeRJE9tOqS/aqgAF8LGr7ToMvjogem4JFMx8QRYSs9GQi4DuNh/AIq6Gb/Bwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hd96YV1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hd96YV1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FF6C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757275193;
	bh=XuEER4yrxTmEdXHDSeovxE6cLnadyaFHzvxoptBd/Z8=;
	h=To:Subject:From:Date:From;
	b=hd96YV1G89l5IDoh8z07p3RrgR0vjCLUZaqcMWu0zai3HHzzexhQ3w4mFN+QfacIN
	 nssPDpV9ChZUKcw93CEX2Y2j9V9YIekNG8NBN0ZTYSyRrvOyqSTBZHuHtNWIgYFlop
	 fCtNzNR3vDJevUFF9LlXoNxYJ4EFKhDZPXZgFCVhC3EnoHJevU/ouIuTCWciRv9Cwd
	 z1C7iul8a4TirfhPZUxSg8ywWC7tyY/6ua6O+LocP6TlpPPQ2OFOWhQgE8bhgepp5m
	 Jc/JKKmM6Ssz0IHM4dDrqyCMfOz6ghJhyHUaOLNxUjBzMtkc6UBQ4KlDukj/AItKyx
	 fVJySJha5MkGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BDBCA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727519357.576.6177934060066579468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30354b7ef61fdc28794c0fc3de9ee4ac396380fef8318f0ed7982898b386ba56
Date: Sun, 07 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757275193
