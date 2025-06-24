Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDEDB2E1757
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750783793; cv=none; b=RjgqSL8lh/dw8quXtSKPSSfKQ2emXz2pZ/z92m11rs4ny1n75N5k7/BWUtwTwAeLRYmtL+ZzTejRV/t8w1GZ+mCsUPOuzCbC8U2nkY33NZNjDoprztNbDerbHec+JKdOaEl++GXzGoCrsyDTQNPWj1yXPM+7V9dW6mNBb9AjIhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750783793; c=relaxed/simple;
	bh=wOFW951TggV4apLN5rhyZMnS0+8uoMTeJxouASIFvKk=;
	h=To:Subject:From:Message-Id:Date; b=AbnE3Kc4Km4V2YZkxUMBmrTfuUI5bctpzup6I4Ul7yPCl8f3lzQmpXESR5ARlre2qVd/S6dKnbV1CWiUYOtOEW2dI9+NJvsdsntR26mXpAH6id2hTEAr0eLU17paJyS4RADsPlGxLQjHVTTrT0ivVn5PfyKiBtW1SYvsR070/5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rC9hZL5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rC9hZL5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA81C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750783793;
	bh=wOFW951TggV4apLN5rhyZMnS0+8uoMTeJxouASIFvKk=;
	h=To:Subject:From:Date:From;
	b=rC9hZL5tR1dFUotUFRX9rAK3WzG1DRl84k9A63yt4dWDIXUyC3I30qdpSuZtyefcG
	 OmNDnaP2NoD0niUS1fj+tXxVR9VlkvqTbKFaqE6z5BOTAcH3fWdwMJUYtLrAd6iHCe
	 A4P4h9tTOORPCpMpBLB420bz6zY82mR9cwL7rvOcZ+xHBRMiVaAxCO6NVyFPrnpUB7
	 wK/D5DfB0sFC1AjS0D0J57+RDRZSD013vjSupSEYOIXzp0u4IgWc+SoJFhL4GXHiBS
	 Ocbt2xOUOxAvClg56AFlvmg0bnj/4K5ULuDA3UEzZ5Wu7WPURRCwFAyqAUqD3MzpHw
	 hU7KUv1Et5Qdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDACC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078379357.20868.8689322301841378954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c199c13107b6c5eb530a38fb0020734e172fd68eb6517ca20d22f3d3c21e1c53
Date: Tue, 24 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750783793
