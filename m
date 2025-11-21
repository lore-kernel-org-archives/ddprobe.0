Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC632F1FE9
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763705514; cv=none; b=XEHtd6ygmKOyvrMUEgDVE6BsjKMjsMnEQN3pWHZ7uRhrlB68+NwLWjEXz8Lxh+s322I0kg5/KoWpmFoV0AOVH5a2Efrs0uS9C8BwZTZ9OjlXS+WseqyYKYCIOaqY08d7MkCv77Yq6eyr9gpDqOCvjLCDAw+nEtmtmQXj20k6p4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763705514; c=relaxed/simple;
	bh=oGR60HNzfDP5XLgdWuUq4roQURdmiXe+7Y7OONl8zdU=;
	h=To:Subject:From:Message-Id:Date; b=r315pBLDZOHY8/mPzZ8TwbL+fU2y4dbE4CqWa5WFVyrHP64HVF/S11VI0/SFWOPP7kBfp5MtnpPc66Jeav6ZtlHkmFgRKJYf2M7CYq2kNuNmc4qZGEZyZPmAsv7A4eysuUaaLGu21gbbX/bpe1p5S7O0r0g6ok5zifu5Qp+u9Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUFSrYdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUFSrYdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A591AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763705513;
	bh=oGR60HNzfDP5XLgdWuUq4roQURdmiXe+7Y7OONl8zdU=;
	h=To:Subject:From:Date:From;
	b=QUFSrYdXBPFdHYkIbqlpU/M60K6CA3mmif9aQ/yNhKW9W19tNcV7wp63eb3+4/IwF
	 Fw6v2mrJeu7hKW1idHsWKQF9Ew/FBTInpk7tsNIuhi9gtAKFtFpwyYwUMdsD4SUDsB
	 LRbLLypTz/NgqfygFfbOUK/gr4KMjczJ8lMvxIcB3x3sRNhU6y8cE/Ikj2HlPhbEnl
	 bEv1XoQfNaMFxiU4uu7EZThrzL0pzrEDQs+wxq4y6KuhykdTQ0+aodlVZYsE+nNE3b
	 0oNOXBYyZrba0MDk/2szJ6nTgJysflEhoEt3+7/KQ5BUQp8ToSd0fEan8NMdmYuX4y
	 S1wp3xpt8IK/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940A9CFA474
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370551359.22662.1941701819501980691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1efc46b3614015f34b9eb40e3b286febc666a27d2999448cbbec026a42b1b20
Date: Fri, 21 Nov 2025 06:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763705513
