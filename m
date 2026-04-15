Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57073859D7
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776285453; cv=none; b=KCKhFC3Kt+A04F2XXOoXH+EL1hkPZackJP87KP5uiJC06OPujazerFqmyFI9gRpHleax11ieKpBLpVVeNbY8DrtfFAGhR7b7SSJivUyFwhOcNqB6pFIk3f2ir2SaldroHgAoePeB4kGnT38z8Ks7sR+omgVTHagRklOMYvu+xlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776285453; c=relaxed/simple;
	bh=qDdUjLo/dY5eBt7gVJKNEBvoPfR+EHl1MhJxtjmeHZs=;
	h=To:Subject:From:Message-Id:Date; b=k4++ZTbR+osWIYWSPF9uO19bOHTsa5H3wXFFvQY4AAj2P+fEl/k2YMmDU7sdGwj7TyrAmGuXHxQqUVHsW4yGmAblISe1hR06XCMpl8yN1z8ruVX3GQQ9XXo3N9iWdXk7+59xl1qWM/QUxeOHEPAZG6sgNl5ez9QhXx52LD5iFmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDGGEiNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDGGEiNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88BDC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776285453;
	bh=qDdUjLo/dY5eBt7gVJKNEBvoPfR+EHl1MhJxtjmeHZs=;
	h=To:Subject:From:Date:From;
	b=BDGGEiNTzen7AZSWGyZpcng8+x4kTIC0mCgdY+njwX/Oo8Fd7zVWrB3/Jajl/4240
	 92kFnh4/bWYDr9WwLR4BE48WoYW/ffigGh5LTLwpb4ce1sPHmT/KceUzgWnehE9HQF
	 V06t2iIjAWg7qiZqlLmr1UdhPqQUy+tV80taIu26KyzHio648UnyAQgMolviQZ4fmP
	 JuAhBEPHQeQ2oi+7C+Cd/srDBnudHlTMCgyr6nJOACxv7zIRHk52s9ANJpOJ3sjIv+
	 BxT2gnG1JYkOpI6PLbD3YT7GqlqwrHkB6iZg/prFgcGOCJnzxwFf32UINAwBjHgOIm
	 8nFuZIHHDBKYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B46F428E0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628545368.5826.13793063281824235873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acbfbca2d900bfe2fba5dd9db7de5783b12afee8bbb58b38f86ef2508c21e3b3
Date: Wed, 15 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776285453
