Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613BE170824
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 17:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718213903; cv=none; b=ritISsP05JF+wni23FcdKZzv3fKRLwHi5D3gUoqPUL2wGHNLP2Eo9eXruicRLqjYl7dHKh0SZbdxmSvV/pU5k3Ob8SnKUTwpa/alKlwjb7kLFHFP8XJjVemxOXMyvk12RXnH8MW9m44St9EFl2tPPD3k9I+2ZqTT7n12GAg0K4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718213903; c=relaxed/simple;
	bh=Cqsylbd3dFOA38W+6Tl6Ff/RGEwLCijXxJTaYx9juEk=;
	h=To:Subject:From:Message-Id:Date; b=hsCb6B1n2arjmm4gS1nVrbb4nOXjmSnrFYapZd8oCjyxjew1ITno4hT+y3bAA5Q3Z6DA3XWyt/UBsyfKKRj5Xtwocs34zR+t6LrunDbhKAIFzDmtfGBaCIObN4ZPY/cvpmjcJ+1EePueU3S9e3Ny1IFIaHURegTzdLdD5bHNaxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHPaYi1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHPaYi1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5F0C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 17:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718213902;
	bh=Cqsylbd3dFOA38W+6Tl6Ff/RGEwLCijXxJTaYx9juEk=;
	h=To:Subject:From:Date:From;
	b=GHPaYi1y7G0woX6STqV1EFPViHaQSrksDvu/aCW03zM6/FeCUp/Dg6+tc1e9JSEK/
	 JUmEY8+/MFk7EKtUNNMNPjz4JgJFT9yw16KOYEntMCxKB21QsEiDIGA+PmPUhfUW0B
	 zACrzSUAGZeC3teUC0BHF+fkukUJpS299kKJT/u7QZoShDH78hgnye9/IJKYA39H6A
	 kv0Li4Ikr/yVoTEJAKU1QKqm3/IDfyMmzu3tG9/DIZEiCCzQcsSDMz0DSC/+xusVMx
	 yWXM85DeRGXp5NEaWUzUpphyXLmc1oGB72RmIYS7wv60WD/mFyLwRU5ZkgI16+87uC
	 Ej06RRBzLb9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E33C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 17:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171821390275.20673.17395189924990002953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4efb26c99dc5f2de6f49907072c13545cbc62a8ac18a03122b770aaf0fbab8
Date: Wed, 12 Jun 2024 17:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718213902
