Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4899E2E2EE0
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751549394; cv=none; b=PzMJ94+LWb3JSyhwbGulwM+g02nnyPPWi5WGXFYqzCeNFSDys1r8vqRWJIRpgN7qhdaHA+Pf0w/iENIrczauHXPVA1Dct379RvFeZ6ytgtH7DHDJ4tegxpyMS0KSmAkdh+32PCgGhI6KbdFjG24CYO4WuxbvKTkYTyi+dmqe7WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751549394; c=relaxed/simple;
	bh=3Az+oGRG2wrrRwfk98/Q35oJsMHDF2Hg9yQZS8O3SDs=;
	h=To:Subject:From:Message-Id:Date; b=TL13/iVVs1fsQNI1YADmLyRtuYbX2p7Yfuvw7SJxkxTSgVNST3GI/RZJpJBHXTLphVatub9U2+54txNwKH5+YBb9CBI83dgjn8ZNsRgAgg77COZBHMyQEFDqw75LL4bxmCLFAQoE4EbybPyv2AzzxMNv9Mwgsuix54RkyyaX3JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guE/oP5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guE/oP5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D626C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751549393;
	bh=3Az+oGRG2wrrRwfk98/Q35oJsMHDF2Hg9yQZS8O3SDs=;
	h=To:Subject:From:Date:From;
	b=guE/oP5Uj7XSTeeITt6hODmRtcrNDCu1YkW3jS7FYrq76vn41GP7BsXzrsTVdh1WE
	 gNhHJlCqlGCv37uaiyTTM+ak54YmfQsKcXrcDSKJXhj1xGAAmRTnMNmwYaEeX3Pxp3
	 E+4kEEmA+uonw9OWdXvceti2bd0FCYS4NWJ7RquRkhT/wJi8QumPXh3YFMs4roVLY5
	 YVOxu+XHmdmamdiAq6CSqVyz+JhtTGwoW6BBMELCS0+8dsIt9XwFTuU45g2DPDWkVw
	 uE3rk2MRx5T1y4o6Jf9ORrdRzYSauAE5tWcLWsqqJQ0t/+Vh+McReyJbTSRpPvmpZ/
	 UJzSRuWRqLbEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A3C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154939357.12141.17575626290193316780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4bf83ddab56d9ffd3c73dd925b4a1097296c69869cff97fa7ec41b3c71e732
Date: Thu, 03 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751549393
