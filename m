Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10539354AEE
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760896794; cv=none; b=i4ICZeVl2Vcney40+Hl074T5DaH/MSKztkAAIPwUPYA3hqITdhzfOO+egrxbXAIXGvoOyRYMBkzmZYER64uyv9IGIhG4lmsL/b6thlSUWOtp5Floyv/zEDRLm2Wq8cw03Z65xLXm4siMk36Y5qMYFMVGDm/XsqmwMJaQWaNFOOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760896794; c=relaxed/simple;
	bh=18OSyiEc8qnZTTVaXmHjC9xwrSwehdzX7yzDcKe0nUo=;
	h=To:Subject:From:Message-Id:Date; b=h6IE3NUxnyrdUMqNk/9un9nWgoikZ+Ks3gwWdgtcJvNC1u437R4F5WBLyAS8V3HcaVTeY5w6hJttWC9i+IJnIiam1uc4eISProedif1W6vrYEqGXtlmpdgYIAPC/42DfEFqFGN3J+cy/sQH6RC7DX14gZxPms/p8cB5nJJGMX30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eujlK0bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eujlK0bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6909C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760896793;
	bh=18OSyiEc8qnZTTVaXmHjC9xwrSwehdzX7yzDcKe0nUo=;
	h=To:Subject:From:Date:From;
	b=eujlK0bvfvIFkUnO5zohVRxmVfhUGyboG/SnvTpM1Hl+IO/+5K2RyNz3bj5fceJQ0
	 Tl48wJHm1z+iWEYVyE+tDkaxcsrZBsTaf2lgIrJv5xXWL+/psRf2N3eC6thVJ8acWW
	 lPO1UxezQo9TWykqjD096YUo/7eJ5y/7JC/SVrXXSx5CqvwaZMuybquPIWT6Hd1d2k
	 7vi6IuwlRa8Wm/mNTAUMtPHkMc9f+hHlAuRwOObpUCaB1yynhpqW3QG5XIK3YLmOIx
	 offMVOHopnimzNCByAe2rAzLjz1ShbIqN3rqsgVUVKnRAKWUaflh9ifY3bIJy4UB1v
	 wE0zf4bB/g3NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97628CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089679358.17590.6492560534124475874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b913536fcc78427d0bd9a06150141c423e5e3e9a62a662470ed9c876812f5540
Date: Sun, 19 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760896793
