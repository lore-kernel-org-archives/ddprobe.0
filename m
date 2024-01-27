Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DEE1844
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706314697; cv=none; b=lDtgqEaZbvfCskurQLh6Jtabc3dej9ji2/EdVGVLOU6jkVQPQMvnqQ7fpJUUgztGXUSD0As4mrKbDfWbGAqsNJcje4NucOCgpmNgBDXwoz8zSjtYaTzV4jzPxJeMGSA8X/JgrmhN7qhlceki755kcJ/fz3OM5zuA+0tCJOTDICk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706314697; c=relaxed/simple;
	bh=zfgQG9xidl4qLG7P0O+YTuOiFOtVUAWxNJhC+pjWF3c=;
	h=To:Subject:From:Message-Id:Date; b=AkaVOSo5MNLLlP9OLG6rXP0nBVfEbuu1BRugJLcqf+iZ6pdvNmGlDUVsdtpc4YwcbFLzMLWrdOepCL/aEuWbDyYyAkmvV+O88IMnMObm93OQTb0U2f/sDYiZ64xaCbAIiNP33MRRkPDLcXIIqp87iaB3KOzut6lONtn5N8cf0H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNWAWYMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNWAWYMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E2CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706314696;
	bh=zfgQG9xidl4qLG7P0O+YTuOiFOtVUAWxNJhC+pjWF3c=;
	h=To:Subject:From:Date:From;
	b=GNWAWYMazjK+lCb6EwvVf0RgOm4EyXEpBpu6VSOhtqLxetb+1/JQUwMTfdsNrCQay
	 M4swRTHS3GAWVJ4/JObko3qw4N98wxJEX/XnrZ5VDZHuxmLsC4TKunOMzGM8klWcG/
	 ZraANpf+VO2TsLiWMKzYRyYkpwAGKvhYuiPZvJlWEpuZxXbyKS+tUkgl2MjcgiCU7u
	 BL5Xq6rOK9LwgGnu0Ir8HsgtcC3ubV9OEV15un9EDy6DrL245MZz64oQFIHrnUvd0x
	 A2FV9SIA/f+wt5ksPacx3EYTRf6A2G/Rz6vQJiRp2/DfeFTMnpWMxnSuuTxfYPJglx
	 LpmDWivdJA9AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC85C47422
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170631469636.17026.12711182608635867162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3d92abd9ab8696cf8028402f61c42dff4b08549f04d13ade482324b36f5574
Date: Sat, 27 Jan 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706314696
