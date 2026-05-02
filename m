Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD043594A
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777700254; cv=none; b=WqZuCXzngsUc4MPW32len4ljpKzlbmLGoO80nSf92l8WjOuv3VASaIg7Wx5UvMvHwIplzjxoYbE7gh7IZjJhpQHH+b6kn1/am6LccpjJizRqMVRfKqiUPb1yYHdggNjpSdIIlOHJFsGVRlBQZJSh5Tm5Q1sd7jDg6LWCkzf+KVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777700254; c=relaxed/simple;
	bh=wI/7yvDclKM1N9te+SCvPtRgjId+mjS7yxHTpcQcwGM=;
	h=To:Subject:From:Message-Id:Date; b=RG0Xsni7hl1cB086KCMi7Vzzym24U/tKwglwc0u/kw/+FEfRUw3gXMuYY3aaoy+8EgnKe/yD1s665A5KQ+VXyolzGY9FwXsRwrh45H8lPBa4z/R+l0JR9oXm+X+tLTSjPFH1cVCFFrEgjvVZH/aNJcJEr+dadIMKdMnEGW0QfEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMgL/Imx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMgL/Imx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4D4C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777700253;
	bh=wI/7yvDclKM1N9te+SCvPtRgjId+mjS7yxHTpcQcwGM=;
	h=To:Subject:From:Date:From;
	b=jMgL/ImxaqC65S4TxxEhDajfEqCtgUq0S4UX7RrNDqpkmFzJ6GS1va9ZkSHZnYXuj
	 sOKJGD0DOPJpK09aqa49rGpsnH7MQb8Hr57DA0ye8Bn0zOqqrK/mGPustwVntO7b7d
	 LyFQWx3I5qbChBm6CgJr3goH1YaZHrIWAwTtqyEFlXZ+//HRkfYZ6zdqZtcKvlnvK9
	 z8nhsQtBnPckeb5AVeUKHbpRiHaztH/aKl0xyF3gVEJSCPpu+j2lowaZQDpmUOtfO6
	 EP1g/0/Q8c3qnHsEVMwN3kymmL6fj9/5g/YV25FWykEF2buk35RMoi6/9N5b4LJucs
	 bSgOwfs0Aq1PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6A5CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770025368.5562.9884127730323032182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf75d7067ac83f760acb9e393fd1a80ca39db1cbefee9c55638a1513c3768752
Date: Sat, 02 May 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777700253
