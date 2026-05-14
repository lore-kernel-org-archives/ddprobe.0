Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BF23DFC9F
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778764834; cv=none; b=Y9Z5ctLGJbUNoyOxBXMLcxZHuhHFprJ7nGSjRpJiesV5MIYLjzkf0tqCeuEflAHKdRjr1sfONUur8A8+omwTSPjXqAMc9sbo4A22j+/F0TswP07hUw2m4fWnX4UkVBGJWmwj69gvus8OM5Wo2HCSwwxV10SUwrIInpGdkIvXJa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778764834; c=relaxed/simple;
	bh=I7j89yvNYH9H6A45GzcSERMxBythJneQThSyXCfCvfU=;
	h=To:Subject:From:Message-Id:Date; b=PzAl6EEz02f2Z9YO5Evwn+za02U/BFR3igef9nITRQ1vVMyhGglR/UEVOPma4gy8K4I+NiMPKKDGkkiJrJ+/c9N74gKCHT5TGc/6JKsxdHI58ypBPdvpHWKMS4kPzfmh5Bym8qYHDPvMbgE854/IEgn0LRj/VBhe001M+9+MBGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udi3qRMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udi3qRMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA82C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778764833;
	bh=I7j89yvNYH9H6A45GzcSERMxBythJneQThSyXCfCvfU=;
	h=To:Subject:From:Date:From;
	b=udi3qRMqPi77d2erFAvGAF5+WbFTQnuU+R90zhB0VJc0FmXJbnYVD8cGJJBGoLKLO
	 BvDFgLiOYcGKunG0V22JmbNu84MwQbv8B2cbuSuKAzhX04aLg7D5o17mJ/7dZe3dwJ
	 VnNligizv2D5wliRUTqC/3DEcqohj+lh3c/hME5XU2Vi84t9HWt4vbRL2PrsqOGCWV
	 kym/IWJR3VTw9elX5z14YcNcwiOumCGprECOXEE818O+w7LMw4X43H3aKjkBBXYATE
	 688nH5A5O2+qfg+WAQDToqLJrywQ7++eNHsR3EqnZIwf7BOGfFpdKLkrg2dzH966kq
	 edsLE09/O4Z3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE56FCD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876483370.30884.29528040774168211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3b83d40891592ee74a122d358dd16efec830eac808711066fce8e1f59f4b61
Date: Thu, 14 May 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778764833
