Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C981E78F5E
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744849793; cv=none; b=kH/aGbg6qDi6T/FoDD6Jc8bPocikKcfrRftbFQycYcpKZKQDO5L/LHyFpfwUx2VnOmtL2q48JGC+29nTuTo2toug+MkCf4Oq8X5B8JE1yRozihG9NYWVHshqiwK9Y2RIXrs2CB40jgu3YFnjep7ywDDE5Q7vGP8xkbCqekiaUuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744849793; c=relaxed/simple;
	bh=Z/SBWOI4YAvjvP+6Du7zr+zGZMSLcNibZrYAEwb0lIE=;
	h=To:Subject:From:Message-Id:Date; b=KAF84invRiZImtIM8EwTf7hId47NrB773mTrK8CI5qWEiWk/tHiNX2kHTUDHR6JDdbjIf1bggDI8qDkKhx30E614EWQYQCbnbjGOSRkjf3gqOhqtownJkl3TClRHU5+ggH3ZgPcYc1VWCL+KiBedpacrvGhwPrGP14PON1mHfRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHosupyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHosupyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA05FC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744849793;
	bh=Z/SBWOI4YAvjvP+6Du7zr+zGZMSLcNibZrYAEwb0lIE=;
	h=To:Subject:From:Date:From;
	b=aHosupyquRZenA/DOPloK3g/Qge1ksoaqDnH/p+atAkhC7Ukqo0JXjzJNH56UhfUt
	 tgySNl+UKbQ0mA8AkQYt4iz0+ugIryF+zz/dzpEO4lSdr4mimRZTkLemB0D8luipxt
	 LL6tklz82Py66KcWOb5q4gBIIVrBq9OB6DmirIij9tSVuhXJu6JYog6bH5yEi8S2pJ
	 2NvmQIsUFyrNT8WjWp08F3eJyHaPq288t+8v/JiERmjwlXHJd/MyC+t9o/278/KSfM
	 fiHbDYCjlgxpc8MISQoCQ4uguSHzru4ukpM4B14LWFg81wtxodZWt62i0FvD5CoAsr
	 wSPyi4VYQ5GNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9337AC369BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484979359.30390.14904448396829103361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6e84b8a3f1545659738448f98b349a708e3e2104885565cff5796b8c6f828e
Date: Thu, 17 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744849793
