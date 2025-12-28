Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B19F78F26
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766939034; cv=none; b=rHE6NRB7AkZKoBh4hsh6SOToPORfvAagK51TIWsRhXMiz3tMIBoRsZ3fqAMHD40uBEo4aabB4xSj9LAaeMjRGISK8Wz0nDrozhgmYsyHWwMfSXbz9x/SUVj8Ze5nx9ZbqVFMHahi9fScbBiRa63jHIr10KBBycOPwcCI4eyeLKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766939034; c=relaxed/simple;
	bh=WthZZnRDocMwh8GIs3Tup6XVpiTVOkmUHLWckz3AH5M=;
	h=To:Subject:From:Message-Id:Date; b=VwplK06CwU8Aix+Sq0o/uQyFl/q1lq/FZeURGoMqDa+hqa7SGkxkfT8dLTzLWQPIcjypZoh151FoN70+7pK4zilPszsDzc7zd6rbUHSFzATCKfCcyRo5PL6Jp6eKKyVUmWvrhhQ35dcEBW2OaSlSr+p+wxb+N0BdepBERHZ0tOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVnnZyV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVnnZyV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A22C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766939033;
	bh=WthZZnRDocMwh8GIs3Tup6XVpiTVOkmUHLWckz3AH5M=;
	h=To:Subject:From:Date:From;
	b=JVnnZyV2omiuLcHzEOiErQxnPOYGdmuxpSbFSkkE7d3jLTOVR+7ogz/P51AqaIowt
	 Xp9lyvjbZpJNXpSWCjHiKbNrXMed/Us7O2xLRMXSy9P/6254UQo2DBS8Z9iQNMf653
	 PAJE6AkH9h5NZmEZNTDmTGljdkz6NGudKP8h8HnmnycUy1Wk2pzF4VSMKnMZtvbwk1
	 Z9gd+V/IpsZgMyHxZUgiUu80+FN0YS4W4Y70vhFd6wvt2tMIOPZ0ewexKDCLK5A7bF
	 DHOesB1m4M7d/sOu0zlXj2Ad/NNPEvq3hKrmT/En1bLpjkxTqf7ZYQjg/m/JEVOxEl
	 1tBi38OAmECkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EA8D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693903359.32649.11441847166520891630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4790213bf9426fcb3abe67937f23e0b42dca2b8a75700c9a98c332f9301c2447
Date: Sun, 28 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766939033
