Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E24A281532
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759334394; cv=none; b=dhiNXqlkon8Krh60biPS8Rec/a6eIv+7JM82rKl+5iSu9bOTRaAzBTe9ETDr0K/ERJnwRMMp2Wbd0JclBqabi1CXsL9pntI3JGyS5r7zHZbonx3kTf4WylYFRW6xpCUJukjj/fCiVcDs1vMZnyPMtR+Zhw8zWuCae1RdCZJ9qjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759334394; c=relaxed/simple;
	bh=n8O6dVvh6Ijq94PeqtGGmp0QJ5QuFaY1sOJgSOMnfaE=;
	h=To:Subject:From:Message-Id:Date; b=YdwZZSOHzPUx3D9gG/eSQAdgtBAVlHeCsU7rlYtjgzcMMfSF57fd+H2MeiqCqIflnZVCFElRi2dDBTHbMfAto7EX5Ci5Hh9HmBLKkyt1tSUzsIdog/aFI6rD/ETxCCDKWx7XuGyKZHHCbe1rEW+UDCX+SZtUFBlpeG1L40Wwz8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb1LTLdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gb1LTLdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2509C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759334393;
	bh=n8O6dVvh6Ijq94PeqtGGmp0QJ5QuFaY1sOJgSOMnfaE=;
	h=To:Subject:From:Date:From;
	b=Gb1LTLdkkBxKFsLu2Y2s5mIol0rBDzdgdn2S7rG+PQLvAsSxIPZEumppNrgE8KYnj
	 wIiSpsGD99BVNVrxEGXiFOeCcmWgiI2ykN6+nQ456m7RgwmvZgi7Pix2WclKCD5Qy4
	 ohsfN79x6g6ZkOyq/RW10mD7spkmv6oSoANN6bwCikQ6y4pfg3T7dqzwMfi9dnglzI
	 zE3OCdagWc31MBHIi6PKQ3Ct/qnpit7Z7lj/LuHwCI7KSDxWsvkPXN8fyeHwIFVrLk
	 xZUEc5OWJoAeYGgoZUdePeXJywdf2mv2jr7gQvppGISTqFtli1fX6wQg/Kl5KDttA7
	 0y2L8w349NJcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9068CCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933439358.23896.14347361790856036032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 972762fd21db8f6664a91e528e7da02914fd7c2f1722b42803a05ffc6fe4c8eb
Date: Wed, 01 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759334393
