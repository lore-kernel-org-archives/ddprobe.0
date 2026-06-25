Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D23A3093DB
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782355054; cv=none; b=eHvz2hGcUqHUtFqNdZF8oihixsniikF3fivOL5GGNHFIeYcSFfphoLVYSfkiHJD+gRRsvZgipaMtHVYD1qzg+nDOxMQXwanlxMWH8ejbfICiRTOGoUVDtoHZisO7UFTbIdx7VvkzNqmJhWkI1oTlAqO60Jjant31UUGegfe3hPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782355054; c=relaxed/simple;
	bh=qA9a3H0OaoMec5kn87Rv5Oh8P5gT+wq0CRuKdjnTuQA=;
	h=To:Subject:From:Message-Id:Date; b=KqbfkJGwz95sVgU/yX6ExOLXLNr+Lt0PYvLZlOet6HXX13JDMn8lmrzOLArZ0KHJJlXjXzHnE+dHghLc+YDuwTAkEquUKOewPnQ+jrIDvW0ykNw+W5b4Zg6oGV6WRBMj0Q5cNTWr548ZHGtV15jLuNg4UXb+VYEMRfCWQ85brM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXmQq5TC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXmQq5TC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E95C19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782355053;
	bh=qA9a3H0OaoMec5kn87Rv5Oh8P5gT+wq0CRuKdjnTuQA=;
	h=To:Subject:From:Date:From;
	b=dXmQq5TCvaoLQJpifq/BypzIpXU+XjPRjwen9TmycpRhkBzl1ois1iX4GRnIgwrxa
	 lvmQLKsuUJXJkhzN00JQ3UfycrTBV4LlNtLpwMPcdGrlGryUcks3Svg4Cku02022UQ
	 pu+/PtKXHakrhw7dU6qOhlCXcYLQSFPy8NBGwCLUGc6B5YNQ0St02VFvZFN3CTEVrn
	 TYKOjLYKsGLTmwEPmJeSMw4RMr/Apl4c3mxyVfNwzEsIWTMCnIe2t/wtSAq6gV4tMh
	 RxMd1QFPNjkTH6SPSp6iugq1kR6UMQoTpEwnPBxs1+bz1GKfwER72gLUgmGlWrjjnz
	 67phhJpNlDL/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABDCCDB47C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235505368.1626.12451803039236529229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19e669b07a3aba0de47f99d90c85312792a1adbd72f253f085eb748394d0d03
Date: Thu, 25 Jun 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782355053
