Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF7540DFDA
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776389254; cv=none; b=bXzCOTK2TwDaMS8hJvAgMKxT8pbi6cYjj+1rG4N83Op1jZmx47jbDBxEp1NPzDctBGS+rHwooAh6G1eaPnZCkP9VbMLIUSaQfgDMZYN7qXK1vvfZsDzCZAkEOXvx5kxMz+mrJ/xIo3G0YjRKZBMAXrXAEu8M0ldJezA/gP5dySs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776389254; c=relaxed/simple;
	bh=o++jOwkgFXGDSvDUUorBr37/RNhrF3nIPLHjfLHqnG8=;
	h=To:Subject:From:Message-Id:Date; b=ZAGBUW1l6pRaV/cD47DZQLgI5nLj4UiMgdgultNul/mpGSuS0cDkmPBKh8/w9fF4A1814arI9c6JVPF99jQf3c+iB8ElhgfkM8f0fZfgJqPFOF/V2AFu79GoXgGdv+dNbeolW55C5KdqaUJGodOrQdYeCWzx4H7lRUC9mPLwmhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhB9gARR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhB9gARR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7356C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776389253;
	bh=o++jOwkgFXGDSvDUUorBr37/RNhrF3nIPLHjfLHqnG8=;
	h=To:Subject:From:Date:From;
	b=qhB9gARRNOnGNm/s0OygTcQQInmNEXf65vWYAd3/7zA+wpLVs+9GLHoeyDBtE74R9
	 PvkYylW+5ce3xxKdB/ttOEF0wD/l2tk+zJiGenKbpbyDVdkg1UqPfUh4nOyuluLgRX
	 BA/TFs5i1FsOSbCtd2nTK8Mcg4HLB3igTvZIXwYP7VjcoUGmchIhySd9nJ/U+TGD2/
	 DywNwQX8lS+m6sM6is4NopxAtzKFPS5nutF1L/JSGKCxVCekdH05kXLfFboReaK4HN
	 Z3ANLWukMDUauvGMZHzlWYmUJjd3EZYF7YWBfv1f2kgArE100HWbl4nJ2YOGxjZ/oa
	 xLGX5gfxyDmDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94BCF8E49B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638925368.8047.12693735708392201705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d7cd596f7e0bdf33faad44663d54cb8187348f1b9a08331616e25619445809
Date: Fri, 17 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776389253
