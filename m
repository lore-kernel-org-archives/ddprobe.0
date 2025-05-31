Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD7722B5AC
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748676595; cv=none; b=e73v2WU5+O7VI/kk7i0TH4fQvu9c8WV85l/tqYLWlrmf+qSleUChf0yoOmK0MOr/l92sVZB7xG+1suTmPzjRSrU38GdVLtFDz8stm8AHH8/smesVCyVsmIZJchE6ILps/Syb2b5iIkVQgCJRRJrta3HBQy7WVU1lkAVgP6+KBr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748676595; c=relaxed/simple;
	bh=SY+BwksU2ILJeYlLcxq3DRfRPc8EMcHRiRSKCHZqzYY=;
	h=To:Subject:From:Message-Id:Date; b=qocH/Wzxvk+JZYz/bOADNVBWXUSKMxO+bVUDOmCs1XGkt9QP4qxLe8G1cho6plNZFbSN5DkC6QeNNOJhSZUliDgSeHovfwyysleZlx8i9S5RHLUPY1EXs+j/sJ6/PxnFE95z50autE4n1S3ACHwb0AA0I2xQHeXIYmG3D4l71KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btxesDXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btxesDXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9270C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748676593;
	bh=SY+BwksU2ILJeYlLcxq3DRfRPc8EMcHRiRSKCHZqzYY=;
	h=To:Subject:From:Date:From;
	b=btxesDXyZqcAL5aehENgN1YHWgSx2UH5rkhNmv2jRg8tEK/Ou6zVRjmZLFR41W+QS
	 /Osxez88w1IkxYD5JhY8kJ5ugPFUJztgnv3QIwJvZdlefwaDKSxf9/LhJXHZZg+XId
	 WCCRlv0COSfBYafRpgkC5zQvoee8tksf/0CUQNRfggzeQPmYOB3hDHpCS/40qWskVB
	 ZwqZDgPXXmkU4QpMpxKLWZvnnn0tgQtCvNXZ73+0S2GCnbMbqLKsHjRguYnYVePMQM
	 2HSv5SoLIPjZOc7P3nFzaHanUGKTTvqYu5gymHK3efoSH0rR3SNYSVlCHekDsymjIv
	 o476pjHrFVfbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D60C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867659357.15498.15756336018398124432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d025cfbc86d2cc6d0df77f35447b0cc3f3e277b83e464f0ee60d507d427441
Date: Sat, 31 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748676593
