Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1083D19EED3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768304034; cv=none; b=D4gE1FLi0UNwWnzK7R1X9JyU5k5Yt5TwTgi5k6bFsbnhHRoYaKzjlLYfy32cKfBg0p2I7q/IN8H45XDOoVQ5AcUNPq+59xUSKSFGWcy32iKnNrrFy7XG95Y/sX54y3KMw14uRwPF+FEEwgofY+KYpWxbSCan6XBmQl25/1i506c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768304034; c=relaxed/simple;
	bh=wAFoxgywcK7i9fAOaLT3/6X9SvmLt0472ToFeStyFUw=;
	h=To:Subject:From:Message-Id:Date; b=ayqjPrtoKlqROMKc21/L9qYmShNoGUCcbtek6OIIUgwoEt1IPvahh1+jBXNQMjf4lcHRqPC0Uh5veHqDq7m0lN50I6WSxkYn+q7xcyt80sNbe1ffNuM8o4VZ+uzW+AllBtif6OfjkMcBnj6Mv6RMCsCRndFk/8EYVTZNd3Ve0tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ttmx4oeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ttmx4oeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE2DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768304033;
	bh=wAFoxgywcK7i9fAOaLT3/6X9SvmLt0472ToFeStyFUw=;
	h=To:Subject:From:Date:From;
	b=Ttmx4oeEMvvVFNOUoEsYNhKVfhJzVUXPyvCqQOI8GPmiB00qVK20fk/HXMffrwDGE
	 T2Fe4Wcy0k2UD4lWRvbeADXU3adTDM31Ft/aAk0A49wg1gNPGoixQcYQBrvupz4val
	 fAjhuGQdTzcD14zkUpxQyLSQrt/VzQktuWKziT3bJ5ZFSDe2Q9Z2ztdnjriFXxiLX6
	 w5MM7xOVN9B/qligKSHNZkhxeYfFUpwbuBq2YKczfzdUycipqGGo0S2HT71Y6dfoJm
	 fAn+OI7J4zGGIWfm7dbm+kVFKNVbmppWzqKPbl3GtJHDGrG7D6bBsgbm/IzFTz3JnX
	 oPxJ5n+wsdOMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F823D0C85A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830403358.11602.16550913393387656494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c542e3459992274d4dbf886526e9c8dda7fbe60ef6d1bdc794143249f4fec28f
Date: Tue, 13 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768304033
