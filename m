Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13ADB2E0417
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768228434; cv=none; b=KJWaRn5t0R90Ta5kd/rhPh1nCbxRRbvxPkPvOzw5KEFqQk1iHG7Vih3KHqeJ0RiNx11tgENTqt7oupHHu+3gkm1asx0uEoGskrfpaB2X3RlHmQ6TBwy3Uct2ZcQZlqQ9tN6XHelcgUElD5rDz8aVdqWLPt8IeOgby4HAm/A4/6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768228434; c=relaxed/simple;
	bh=K7Y9BAES7fWtHpppJ20/rN1QZMXgWk6dL3Xf1ntNTCg=;
	h=To:Subject:From:Message-Id:Date; b=QtZvEF5xlw4H5N0yJT7dQs1T4dLbjsN1rUzETgy6ji+ijgmfxBCst2WDlJ3bpbbRp6VNcD3bgypO4LVOQKGoBwDWtp0i6BA8Uaal0aQNr8/Oda2uhyAbfSaTSu7dUMYLphDQGlIMd7XdfefT1Afpe+OKEQfY1/cudMSuuYxhUW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzYSy7iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzYSy7iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FB0C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768228433;
	bh=K7Y9BAES7fWtHpppJ20/rN1QZMXgWk6dL3Xf1ntNTCg=;
	h=To:Subject:From:Date:From;
	b=hzYSy7iwzun4yy4U+Eh7KlA8C/4nPdHANFXZrrjxk8kxCIca9WWDkX+D3qwnd+2Tw
	 Y1EQGx4ZWfTIYt1GF1wrinFUsrG6zBMYGoGVEHy15gO9WkFfK1FCdxU5ODm4PUca70
	 CnRjU3tMCa7fzs4RSM7JVAFVg9OKDMrWnoT6rzBsHvixE34EnLPpNW2CXWwP3YuRAc
	 OEqwEqDAnKj9izivVq4fgAfXcIva7C8Bfll6Yi60GP8GOrQjjxEr5gyIcXAzG7xSjm
	 b39VVD3TsfJeiS4eh3jq7Bagx077vMRbaaza9KcO89VgSJMwEXytj9rHDai0ebHShw
	 BGDR4VlFmpGZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DF6C9EC95
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822843359.6771.10710504428829127337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e557469e9ce81fc6e92414fed7a9ec59a81b5c6b9f935e65424162c81d1c71
Date: Mon, 12 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768228433
