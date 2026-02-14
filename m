Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA4227707
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771063494; cv=none; b=QMS4bQAjx2REap8BHibR6m0LEkYGVMna/0ENXWG2MtEw/qG2zlqT12+xtw/mcKR0LiFG4M+7LzUah8thrF+FH2b7neAdLwo+ymeqdwVS00PS7NQnCHsElFP7KkuAb3+Jt8A2IqWLkyIB3rib9W93/4D3+8OGiT+oLhVQG6jGJkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771063494; c=relaxed/simple;
	bh=TeawRQH/xS5V1iW1QM8lVasx9yt88rQKjd+WFuFgijk=;
	h=To:Subject:From:Message-Id:Date; b=ihJ9/TBMpyRX4fQ77cM/txVdor6unC3qWarmQU8A+eJYkgCY2U3/OOBseQ7wOsvPgwzQsu6IyjqPzH/MAdUUiOfARmKYmopnEnAgQ7vrf40ZQ70LNpZeIK+kXakF1GkRYo3IDB0XNwJ5Pz7j1B5Gz7cbJp9QL58uiLYwj+XZvy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AB1JfzrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AB1JfzrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05B2C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771063493;
	bh=TeawRQH/xS5V1iW1QM8lVasx9yt88rQKjd+WFuFgijk=;
	h=To:Subject:From:Date:From;
	b=AB1JfzrYozj51ZrrJwnHnVVo+j3WnDJcQtcG2Wy3ya/67uo/d+S1GWsJExcOkWPM4
	 Wnhw3I48R9oHPTs/uokqnUPK95XAwlY1Zp0j3btJq7drDcY4+87N0x4DVOqxRuqgSb
	 4gEZuAZouZ5esz7EItuIfsr0GRAp6Kf4QSd+JTJvLj/lcye+5IUwsFVcbBeOmEUMcW
	 Wkq9qIWlDDZwc1MM1rm2hwkwxpptN2BKuM1IXLbcLFGbUw16mtTpI2EA4QmQlzmWko
	 l6DPppMSgahUsj4zf3Mitbbq4l+1O95Jl5XRQxyzI5ZX/ViptRrhVpIAJZXbaC1jwQ
	 B+obvkFbL9NOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FFDEF48C5
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106349364.2479.18074483578967652685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11c3b5094dcda12b5c54eeafd542385478879c5c713189416c30245fd233221f
Date: Sat, 14 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771063493
