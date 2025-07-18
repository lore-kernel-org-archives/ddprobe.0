Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B515CA4B
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752842994; cv=none; b=OK1V9WFbffZet60Wf1jAPSO5XG3ZWNJjXcGeNCjUj1UQpyQ5b+i9dKeZgmDiJyKQuzMvfEYg27oQUVEbtAmk8m5QssTIh22yGv0xD9MouBHdv4tuKVTOYX1elb+ytkFzKr8tSilqlLcjcIvCdBidL5b/OSTd2a3jmlb/cO3dzy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752842994; c=relaxed/simple;
	bh=8q4AawoV6dnRzv/2Xn+aOzZeKSdBzEOHSxSPUmv18GA=;
	h=To:Subject:From:Message-Id:Date; b=S/dfT94j/ymKZiVPDAMoCs4+SRRBMJ1GtzwIUQpOvN88wwpWSegHFgMzI7/E96vs/p3P8QUIY2sXi1EUBsOtl6SF0ZmBKvoc3wteIx1rReTMSAXMhZweVec23bp59hhb1djzZyMq2zAmW3BsMf8gLjPlrH9dklXaTWOpDR7jze4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqhroovX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqhroovX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3887C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752842993;
	bh=8q4AawoV6dnRzv/2Xn+aOzZeKSdBzEOHSxSPUmv18GA=;
	h=To:Subject:From:Date:From;
	b=KqhroovXNUcc43GIOewdI9PynE2GXu+9p2l4Wv/hyWwLL3jKe0o919I6aAFLidagH
	 NEQTePZLzKN+/jp2PkBGJLfaBhdqsszUz4cAeKy0vFgzrUKflBB4hb98Ih1AuCLX9D
	 vLT4ZscI+vYmUGVkAOa39qWScYukHld6MwQBwzi4dR/SYAfwO3w19F/yvmOpK3vgiC
	 3wZPwYz40O5vAr0geQNubyQxWfYl9faebk5RCDFpcunAgMLQq3U4C9XJ7Msrj2xm7R
	 OLQ6ZhFGMDOm1uT9goiliFwy2aYyNA+vuLn7iqgfnuV+ejf0R09YNFBvBoaDjSjoPZ
	 tpksj+XbX5sQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DCC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284299357.5835.7285530565486350232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313f653517d79e94b25ce537a042af740fb7b3bf124a353f2c45dadbe2bdaac4
Date: Fri, 18 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752842993
