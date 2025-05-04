Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41980376
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746388195; cv=none; b=KBWIJGZKz1arpNJz51UJnPx1tov6uHI/mGdlwsqddIBwR4oJe1gYHa4ivX+c/RFNf8aQahShuqmYwZrNglr7pnjVVxs6k9gv1XLQrxk++VpQ4fHDApHU/C5WuMaEiX3v8bd3laKSz3jP/fjhBCBW3FBgW7zUcF2E3fcDQ2BN9N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746388195; c=relaxed/simple;
	bh=/UE2whotW2hvuB9nT/9MgWc9B8b+8nbOws9MZdNtHwo=;
	h=To:Subject:From:Message-Id:Date; b=UmixPZ4lq1/YQSYCQUg4hFh1SpPe3WoNq4HCmUFCQ6xXgfgxdBpYbmAJbRWpKbqDLEXxs27eUaFbHHGCk1tFgcACTZIYhZpaOO8mZzu7sIlep5g/XrOF3dhE2VSrp+a053UBerbXc59bexN4+ntHGkpUCklHHAMLP2mpLCSiKQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srUwDw89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srUwDw89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58E4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746388193;
	bh=/UE2whotW2hvuB9nT/9MgWc9B8b+8nbOws9MZdNtHwo=;
	h=To:Subject:From:Date:From;
	b=srUwDw89E7Oc2pCkXMQELrhwoBzhPM/NTC+1z8J+igVkAD4g4WJ1NvqvAtWN5Lc+A
	 lSED+tyfx/Lr0VYq9D9mARY3HCu9nwjoEX2vq3f69kUbDZ5z9fyKTr5Gu6mh5562oR
	 jrbQZWSBmSy8Y6h6HLmNp+MYNjNrpnxO67uX+N9mKHPE5iVMpRZ3Bx1PTtvQxeahs4
	 iLdvY6ZLnL5yRZWMyERUji3AIOkPGuT8gYDxO0RQXbXsFdzTRFbaa4Z3C2RCxDcEdo
	 7p3CE1B3iLwZl5CG7nN1r49LSpNfP1wvXh641kfI00S007c0fK5fskQmwbnIsyToKe
	 S1tUi7s+vNNmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A7C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638819357.27207.6775392851425884948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9069bbe8cdd4b1d15a340162f9ad785b4fbff383effc8e2e6c679e97d10ba70e
Date: Sun, 04 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746388193
