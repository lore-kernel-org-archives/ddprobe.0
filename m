Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545091474C9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736066154; cv=none; b=n10kXya11L6y1fu2DjDGpsFukhcwCbirQWH3xIWaglbHp+jq/OCDBSK3lh5kg/tZ8N0kt+MGIOGOqqzL0zjQc8K26rYweGwqtyINrRmpiDZy4DCbmIFMCKpYqPpjOJxm5yeBNp2rA6EAG0AKdW5KR+B4/uDRvtcEPlzL/0ZAVM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736066154; c=relaxed/simple;
	bh=pLx+dBD2MEorVQNScH2CAhhR8RfdiK774iEBEu7A4nY=;
	h=To:Subject:From:Message-Id:Date; b=Pq4lQxGtDuNhdiR7qyqfgO6r87Cq9V38Jt9Lh5ZAbX8dmF7QWrRy0t7c4cP1ylt6maVSZYA5V61yRFJrOgKXeuT+5yv6NHPp2Ce6fJJ+k1eDc5sbYNqjej0QPOLHp33dTJs2CdzlrXel+wmnK4OreZTmTNISOrWoyTRcn56tvl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvXSr4Tz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvXSr4Tz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD71FC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736066153;
	bh=pLx+dBD2MEorVQNScH2CAhhR8RfdiK774iEBEu7A4nY=;
	h=To:Subject:From:Date:From;
	b=WvXSr4TzJ1EBTbMSSOLMHEL78POxRVumhFFiwhFxtWphdln6rkcWLVHPAsQS5icL3
	 bR5bWWA17AdT3q4CYsfAmTrn86wOmg0LeYPFSB97eXHUSizZ3/G3YHdrLMzo0lnqsB
	 1PRaH3elGvCPBtlc2+tKgI+71EnERY1PcFhNB8ip8jWYB7JdwzYo42BccSp6HqYNrC
	 /w6b53POZ+Af6FtjdYUfX1Q/sPqKJFXydpyVKu9Q+kFdQHtD8suRrxbrDHcpVw2Uli
	 BHKcBAlFzUAaem02pWF6voq6jZXvFWx/iITajShKwhk9+13IIDEP6uGAS0BFxz2yQb
	 38eNBQ/xd4KVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95D3E77198
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606615366.27879.12362277515910926971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5597194c4299614778b0e52e6fa670177b7ab07b254eaeebecc3cd26dcfb00
Date: Sun, 05 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736066153
