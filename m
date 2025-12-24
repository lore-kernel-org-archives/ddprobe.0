Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC73278753
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766613234; cv=none; b=VQIZ8It1oCv62mShvGjOIJ8VgvvmQmCW9hf3T9lSd3YG5SY6ICzXvEYjbB4nRe9fP49d/Y+zPtPecp7a7p9GF8LsBY5qHOfgZHxCaRVBYAtA+74fAfGlF83hViV5qhzvxa+St2iDsmMet+nKeaATMnY/m4NZQPux1bEe71AQ/+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766613234; c=relaxed/simple;
	bh=prS/SPajandwqqSzrYivzuf3p+BFABw2ZGOjKnzAjmo=;
	h=To:Subject:From:Message-Id:Date; b=EP/s1KfKqOYBQKoJe23CfgqtmoS87vhg9J0pA4cxTpXZ1i+ZwuJV8mYBfgd8jNntpEXZXLbU2lVAruhABs5UU0NaENfwRrsi8upH8IZAl61pGzQ1xp9i7qdNj9cHle+NLg7yFm6ur0dJTdBvlnT2i+Z3VDg/0a4IE1P2Rd9dqNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6Od0pAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6Od0pAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F15BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766613233;
	bh=prS/SPajandwqqSzrYivzuf3p+BFABw2ZGOjKnzAjmo=;
	h=To:Subject:From:Date:From;
	b=Z6Od0pAHwGRXzURJmQyvS+F9RirrzTSJoMqjeN+VMWllTvKMQ+uRfB8SdVN4C7Xfp
	 O69RrsHir3Kp61Ks2KfBfREmgZqnfgIQ3IGxIWUJ9mS1INqTeZflSc97yUiKSJeB4v
	 RHpNrpPfK81pm8JTprUMO3rfL3UG8v17TYEuvAVIWJcgGgUCE7LaUwg4vo4H+MilPN
	 /DBMVeEOTeI1ElUiP6jAp8BX+cYkotA4OOcfFILPGnz/rumHhE9WBmqpUhjQp4Kxer
	 lKeKglPmDRHTPBJN09DmKtubCe+9Gkznx5qGtuwKrD7ScR89slR3I8gaVJSDPHIKrg
	 Cnz4n+ntu28WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91090E78497
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661323358.13606.4848742524051800253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71cb22a4b8425231154ad114eb342c6abb328feaf22321ad05f90e68261982da
Date: Wed, 24 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766613233
