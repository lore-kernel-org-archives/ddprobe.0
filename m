Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC0524633A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736838954; cv=none; b=UmY8gsg1LIQi56YpMmU3ykroMJTrEMfj+1UfWqGzR6szjkNjRqkL9TjZpMDgKOtick+34d0RS1FetV9t9ynrRQODTJ0UlCViUmvPD6Fy6mzNu2QjYrKDASwopvvT8IBeBUtAI/dlHeN0P80b8FjRKPEBFDpVybMSTB/PXatx3Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736838954; c=relaxed/simple;
	bh=+6BZ1Gw4hlWxrLb/oEBYsc3HBjUglKJOIznv8RGGLao=;
	h=To:Subject:From:Message-Id:Date; b=eVIi48NQuZQuo6iHlf5llbmza7Ncl6NSqFdmL+u8yjOcIp301aTntIKAc31H/A9HsR2p9sCENB2z4m3EoYjAikCmiFrkLOWngbFaVeGbvb6107ZHByKp9g3LAc/PGS0bB4LZt7pKk1M7H4O60SgFD8X3HuSLF/U9VVRvL+OcT24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCUQYXga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCUQYXga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40C4C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736838953;
	bh=+6BZ1Gw4hlWxrLb/oEBYsc3HBjUglKJOIznv8RGGLao=;
	h=To:Subject:From:Date:From;
	b=MCUQYXgaoAvnWz8qS+cZIwJnipo4pB7X3PotwEEctg36Xmb8B5DF0ssAsXlJQZM7q
	 EJzXvlbO7GwX3PWQzmYPOBjQuVP+VzS21GHGL7FrocK7wNzAwe/FpBcih/q84c/Pcc
	 gsXO+nJBZ3B/jiaCPMy0Q8/OsJ/wn9e53qHn0AFp1lyhCLByMhp7CYb6+wO7e3BnSd
	 mq8CmL/j6tjy29jin10enZpCRlatMed3aO4yfgcfrAIVgVGdiIh3JwX69UOhNHrhwi
	 xQA6Xqf3/zyhobI+rGNDjvc/1UrLVwVBJ4I1m9dNF8s2yDDJITpuf0/m5gTsxbSzQA
	 1Brwkx+oj31Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D797E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173683895363.2034.17242984813994939120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a5b437296f6c9c01d9df6d526a9e68a6feeaac5ce00f6c080023c115347799
Date: Tue, 14 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736838953
