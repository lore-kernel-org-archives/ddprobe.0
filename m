Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BB42820C4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745859594; cv=none; b=c7699idXNpECdFaofo8iVutRTbY3Ds9frYp+yXQHgTO2TKWtlwf1Cst+88MSVFt8QLDGJdMvcrSqfiLAbNF8uk/G/Co308dxcmKGEGULxWWgrdwVJphjehTe8dHUbfjuqS2MY+b+SQXUbHUsBL9unZwSoJaj2Cjdg4Uj/gtg2zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745859594; c=relaxed/simple;
	bh=TvT7AMCeC+sVBvJ9xcEBETNzyGVF00IgqGRDy6i9i/Q=;
	h=To:Subject:From:Message-Id:Date; b=PdBWONjpww+HmCvclYpszbOLQwnnN8jNWXNF2kXwGNquY1cOHGYxKguiUREYZDyf+EqW2LUnWfRFG1YZdYp9ga0UnvCq2mlrF776Huw7qaAHEFmfto6ZIUIcVOKX6sniVGgNgz67dZqVaM27kQg2wCjLXW0vvQMAIGEINDh7U78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpiQw9cD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpiQw9cD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE8CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745859593;
	bh=TvT7AMCeC+sVBvJ9xcEBETNzyGVF00IgqGRDy6i9i/Q=;
	h=To:Subject:From:Date:From;
	b=SpiQw9cDH/EH+ZZFrYmHTw6S9quKAXP1ph4c/plU3cGtcsq/R/UWdBB3ty5vRniWo
	 Cpi3UL52dO8jMnJiBJCYIrqWaoKWtN+JPW4WYDpFgbGPdbCqiskuS6ew0f9yatI6Nl
	 uagcqtS4Ou78kMz3iaCrWz+VbETamjBAZQmgumesENmVcb0DIxJ2eAr/+qun+k8iIT
	 TPs+gr4GpGgSvzNP0hN5UVGz4UPjJFvP2B6+f7QJ95wvt06JhW5Qi8bGyPOuneGw3h
	 BaOaSQLz+Ylk5o33Qu4TsfpO1PhZ55EBm5yraSpTCCPjCI3JJi42Zi0mFCguhPg1/2
	 l5DYckSP//i/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B9C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585959358.31275.14533166648913951772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a242d839868f2127dcc56a0a7a23814660c581072511eb4fa9aab4b2e820f571
Date: Mon, 28 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745859593
