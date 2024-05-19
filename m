Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5757C7492
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 03:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716089543; cv=none; b=HLZDP9NS5vzF646M0z/gVCxX3Hjc7hjrc2cVwdeo9hXrpPS4xumQ8mBfY9rPtzrWKbsKdofmy0HQL4W3jV0/2VY+eY1HqPnkVNN4VbdnKajUH/ffduTH6QU6kEMbdp2jVIgvj6cb8cfSHMpKI106xOlv1oF7G22VDXIcflyZGQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716089543; c=relaxed/simple;
	bh=aFPQyGoQuYMsdpTy+SxzMFiQUc2ATd0a6ZptOBKetQc=;
	h=To:Subject:From:Message-Id:Date; b=poot8Mzbkd3IZllhUlFUxa5SY9SMBpgxDCRghN2v1LhGJgpoJULGPC/0fspXa/OovbP311NZDsuxbx4VlWzSZxWZcy7MwW7RAHA11dMBwcSrn98tmPR5v2GlhdteJAXcjDsnAXttpKIulA1hYDChBYcbjv4iiyW5W6kz2pFCfbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjnIe7hh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjnIe7hh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4040C2BD11
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716089542;
	bh=aFPQyGoQuYMsdpTy+SxzMFiQUc2ATd0a6ZptOBKetQc=;
	h=To:Subject:From:Date:From;
	b=cjnIe7hhsjf/eGIbr4QvCY57IJgHv5hJHosN9bvj6Di/Sq30uxp8qVQdWC3rjU9zO
	 W+V294UiBoi0u9cDpdvEX+pDJ8YvWwHt9IZtRWUtL5RT4G0+K37XpzOwAqCJ2UaNdT
	 XsHKrCA1Dex2fG5DvRWahGerjvQGZAH9fgN/wDzsBiuPvzOkqiIszk+oJMNoag6p09
	 MdaMtVQUemFQT2YOZteGx6V7g4JyqcofJjzYTbjGshEoBawWMrTOLHNP0zKTOJDXXk
	 4IiGaWRqqKT1gc8pMNVs5LAOhxi1w2yzsydbHFGicUI5jq/uTD/fmoz+z0G6YBWdNc
	 QLA6kCHxof2VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D014EC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171608954281.13558.4271822525753634957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7881afcaa45c122a317e8e0b2a9326fd57c67f26da189496ce8b067ff17393cb
Date: Sun, 19 May 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716089542
