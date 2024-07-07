Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FD46F2E5
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720394183; cv=none; b=qIywKRsHDKdmFTljbkGkhyvA8oVu8IRS4ygsT5Cy4sGVBP3TCwjjWs1BzaeIIEbMQQhWCIQSQorwCFwC3i3ERnenS1s6R8qI3iEFf5seiFXZUWuoIvlORFnFlkuSXTl8+Qvah2HWcSsZ8IeQHYZSZ/cvI9nx5rHFPi0FpJCHcG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720394183; c=relaxed/simple;
	bh=gWtQPMWc5GzeT2ieYXOqqSUAXPk36azIvynDwNNFtTY=;
	h=To:Subject:From:Message-Id:Date; b=QE+tDhf6LZboa9TtsgXj8ZowdE/8gbWV440R3T3N4UwexPRkVkbNjaw0PLqu0yoMHYEv0B+y+IlV2AeYjYnwintYxDMfmK8VJ2jMe/PdrpaKdrRirgVZ8XkcdOFq0RkL95sCGjgSH3RI3FTv0xxtlXYyaijFq2tWGhBf2KMajW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqF63qVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqF63qVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D593DC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720394182;
	bh=gWtQPMWc5GzeT2ieYXOqqSUAXPk36azIvynDwNNFtTY=;
	h=To:Subject:From:Date:From;
	b=pqF63qVcpajsuf7Mt/Nmlg+qpOwzE8RDjyOU6kSyvnewVzt0QhG3O6uULooyPIHO+
	 HU5kHWw+SIfjeh0nLRX1i19Hu9grLs6pRs7iZf2BDke7e6dfpI1EBNoFHmeZ1jK5Wu
	 84mOFN6IrDjf8R393hiLW1FAB9gLaScGULhZRdB66CNX6dcYcfMP/P6FddeSj0y1wy
	 pj1RK+Bg+mQGJ1I4EQkrYiqbFbufZDUJvdyOEWYLW6THxfybJ02WzljYVLzkpxAKbk
	 PecEKnA6PuhkU0nPg3ukXELTbNE8GTKcVSm00xY+UGnsytuNDV7mk1V/s6LS1DLt1f
	 pHgdJo0UDUlNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5A6C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039418276.17948.13660470093698328654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df206dbe07bcca9101d295adb993305def7432f292ed6b35a4e769f7be061d8
Date: Sun, 07 Jul 2024 23:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720394182
