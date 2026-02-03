Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2091A4A35
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770095034; cv=none; b=A5aTep+CrQtPIAjwBlclHmnqRWBFIM2Jo7b99f6TzNb5OV/cMYSBvWembJLL9RIBgP87JsC51voO+V032Q1CapN4UDUjAHwkhwNIZF8+DHNJLxrDQ1o7d6dHFgc95HwXZfJh7IejrYWL2Nlu9AkMryNVg1D6aPEXTIqHCbQyjwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770095034; c=relaxed/simple;
	bh=VNaKT9vm7r820vls5/9Wj1ZcqTQO4wISp1XT1HjNzFQ=;
	h=To:Subject:From:Message-Id:Date; b=OmBX+9MiH0miLIfLB0Xrkhy+YARWFesNK5n4QshG8AZHaFes1rRJTogudn9KU8T52EytRU7bgEm5UUStMdDftHw1W2jbXH8R87/ykkQgAxG67H59R1EyZQ5dVg8yRVLJYiTjsuxRxDP/mAMts7fJo/lzG5RlQE5BnkcvevMTkps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rw0MHdbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rw0MHdbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE05C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770095033;
	bh=VNaKT9vm7r820vls5/9Wj1ZcqTQO4wISp1XT1HjNzFQ=;
	h=To:Subject:From:Date:From;
	b=rw0MHdbAxhvb/Qo5X9QIHE1pEvg4qsLa5jgWrIA6KnKBsSxEFrDfToOgsXv2RTg9s
	 xm91hBloQOuZDhWqVijlTSxn66QVVOrgxP5lX+dz4V8Pt9UtQZOBwZuinJzPT29Nv6
	 MFFK8VPrVYi9Uc3rHfZx0wiOzWvcmi0WIgvo4qbxespsYxVuhLyawyr5eOd2tbzwrW
	 pERXmf4eVOGTyG/c1d9lhavoxLyeR4PqpycjRrZWtewmZyipXJfDwFSQOIPYhtsLQ2
	 MsSvFaX2jTAiC8OO7ZKH58BwmL7D/1/oWy3VrFBL16LVbijbfhp0BvTNLCkpU+3RD9
	 gnIt54w+tvovw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962BCE83051
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009503360.963.6104399497034832684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34797f101621b5fb7c17e94beab6780b3b69e33d5224e9e9bc49c32ebeb903a
Date: Tue, 03 Feb 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770095033
