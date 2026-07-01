Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8642B3F5BED
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782943714; cv=none; b=FOQiVEEU4lDVg94Y6ac/V71xPlr3lPdR7M3KZjd1EAcusz0mnV1YQgGL9wagymAFE0okTnKOVqIh4IwMhj0C6Zy6pKCjDN8I+mNTLBtft9lT7wDXo8MO91WWP3UzFOsIB0lTzYpX+UdmDyxYAGm8toz81dNFS/BeBLHRqY0ks38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782943714; c=relaxed/simple;
	bh=I2x6azpXRwzMq04ULjgKSeF91/rA+UUlsUl2W9b4NvA=;
	h=To:Subject:From:Message-Id:Date; b=JzzLK5LKhxrQVNwSVlhEgjvu02VnfMzyya0LYYVDS4kK4aJtrDm7nSt7HnkxUIVz3wZy+q8fGAUsvSA8c66M4DSuYm7GBqWiN+vfnyEDy336CQ93c+dxY1UklbApSCQq3E8VvfL1Wc/GHJhaKJssAcmXTp50QAUoW9dSN0logew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5fXqexc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5fXqexc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F69C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782943713;
	bh=I2x6azpXRwzMq04ULjgKSeF91/rA+UUlsUl2W9b4NvA=;
	h=To:Subject:From:Date:From;
	b=p5fXqexcEBvLy+zZBQ8Mr8zCy01zefYWJ+2yeQIrFh59gaX7w7NJXdqVxWRe7YNJi
	 rd8QHQzY26sL4KSwYtVTPmmeRb5+Zr6pXVplZSEzbY2Vqb4tKD0jRfh/T9dQQv0x1x
	 pXSceR0+Ebno4Q5HeSSNeZhXvm9LgiFd2VK36LUF23c7n0zieA3u6bTDe/oFBTSTbW
	 OePwSPHIjfowwaGRmeV8uJInD8AnDgjcpMu4btvUcF7BPUlrvodbUuXzeXnRhBCFid
	 UiWRFhRmRDcsOdI/9qee6hEmqBrjm1b/InrcGVQq+X/qhmlhtL4WdF0a5h42pXH7WF
	 AFIfIUeoMRA0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF75AC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294371368.2476.3806058069833711504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a05d56db4bf1b4bd3bd8b95e25e9d0b76feb38844eedfef829a4c72526e0b188
Date: Wed, 01 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782943713
