Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1B21CAA98
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747305596; cv=none; b=NGnCf5OvmX1Ha6amH1A2OioRrhdMX7t0SklqLepLVro7D5gTEPMr+XbPM3xO5HPtLzCKLn67gsC0iAfpHlA8zxq47lUb2YSLxlunlNt7EdPZcLmVnfuRiNrXDf/awWtlqKtqwF839sgCQCrWDjEpL9HWJNPAFr8xeuc6aW7WT0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747305596; c=relaxed/simple;
	bh=x+Hb1MfP9tqdkaLTajNSpxqO0vP2Zm39dkc4ABGjRQw=;
	h=To:Subject:From:Message-Id:Date; b=J3UqRIXYRBhVqiSsr91mohGw0tpQ5SIwI6l/LN4ZUNmNxbtHD5csB0g6gTgsHXmGtX1YNMBN6b43AjNcOh3+NKRnqyKNcFYGK73ATU6aMRHW9FAHSYzcONhtZrSkN/RleyD52WkOfHedsVkA2aVSXp9RlYcuDxe3Nb0j5Glxivk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jB93mRcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jB93mRcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F906C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747305593;
	bh=x+Hb1MfP9tqdkaLTajNSpxqO0vP2Zm39dkc4ABGjRQw=;
	h=To:Subject:From:Date:From;
	b=jB93mRcPShNK0xyMszDHij2glveGsqwPilGZJjkn/BEN87sHNd9lyEzS+DuoZgE8M
	 NYxJgJmLRlgEJbZ+/UokfZrk0h4H7SXSl3ibtQQq+LkpTaklfJwB60kRRU62dhjAWC
	 z0LjyVE8/v1Brsb+i3kLGrwXDSten2QdUQTmuuD5ORSIsJSoymwpBQ1uDjR5zidbbm
	 zMzS2iL0Rlhy8J/48S8HrBtVMDIGVFgMGUfCzJI3/EbwH28cikZOqSGe8D5S2Z80Uz
	 gyoZ50XvEgFU5e2XDipn3fdYyYrO7WymsjQQ9oR3hMCLKU6gHK0NyDtN1AlFvBSTyO
	 iLZE0gPpiO/nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F436C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730559357.29394.1918508641780608061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebd2dfcb003e53827c04016d80741b2e760796e018b00a9022ff1e48c5b2a26
Date: Thu, 15 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747305593
