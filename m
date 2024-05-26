Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7042412BE9D
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 17:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716746063; cv=none; b=ONTbNuABpGIgfvCgutqxlp/WDQJ+ohf+DQorVEHBB4kz8uO78FaV6ojtyutowOghaCPhXY5AKYdMAro60UM9yLYhojAvnvAqhMtk3P0nmuxOxsktezkQaJP5XHCKY8/89INb1VCgtNpgTQYH3yZbOa+WQisE/SyzL8uror+jPsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716746063; c=relaxed/simple;
	bh=V8DXpL7p8WiD2aSON5XfUAr54A7MkkIbp5ldndjvfpQ=;
	h=To:Subject:From:Message-Id:Date; b=GoKN2sJzuzn5Byn3os4BR3a7GUoQZa2ooylGYbwW+m8+1/9tkNofwPLZPdA2WlZmW+LD8XgL78qzp/3URStyvXvUNY1+l/zEfg7WQ0YqvgHsY1kJIhokicd4mSdt5JeivdpBRdYH2rURb/U/MarvPTPMFrAxIQ8MnQ2HIdz8vLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Khu1ZcjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Khu1ZcjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECE4C32781
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 17:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716746062;
	bh=V8DXpL7p8WiD2aSON5XfUAr54A7MkkIbp5ldndjvfpQ=;
	h=To:Subject:From:Date:From;
	b=Khu1ZcjK2BFG5iSpYjmdTQvvuIl/p2hjWcczYdES7wplC6G3XQjmm03AifiQyn5n4
	 MO0AneBQaJLzKmfjzIkZxo9zQ8emHLfMyeSrqYPN+GJQy9/eRkJOutxnpAVtoTsaDC
	 Nstt9oYoBiWMjYPIwSzSHYAJhq30LhE5v/G5g1HXWkipAAKUftEudbrBJE19jWGHXr
	 CSxqs9yGHtSRJWbbx4ubTu0ZxQujY51IPtA68BjWAytiDBld3p/FMRCL7Q6uxKi4aa
	 IQOYs0v4mYF94aZ7dQ2rUypXJK9YYdRCVTRTnGhF/sTOxIX3KhQuwfwrRFBJ25I7a0
	 aZfQmDo2DuKEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A08C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 17:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171674606277.12840.6097891920076558135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7a6ba21320a545a9b04719ee3cbd782fbeedfcd03a34cb9c2e7e24b0e0be3d
Date: Sun, 26 May 2024 17:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716746062
