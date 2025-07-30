Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525048BEE
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753896594; cv=none; b=ZYPOs7XYITIXdWnAle6a5HNPvrG0633WT0Fqv8EB3YIz+ZXovgwhKG+11V/flQ3OYf6KsvTouZpsjF4TJE4uyE2a92F4PSuv50oo9fuRBdJqAyIlqeVvCaihDxJvrBFA0M9Eg3udGQBgL9P37+zDttedMSSSmRyzRtDpr+kCQWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753896594; c=relaxed/simple;
	bh=RDg7F0eDijo+ypJSbIuAYslp871jvGywgtoSowmjn4o=;
	h=To:Subject:From:Message-Id:Date; b=pVaKufy2EFY9GM6voBb2zsyABiLqhfeZw7zBaZec1ky7PuOUxppE3ZiSDbtb0qnc5cTPVVypEBAmKo9jKYCDcYG0JUSu1tc2s0Mg+kLHVHWJ+G2tnRva2K7nlmXaNEPcHXEKrbOuypqDAYKhmIi9m7wfdX6BwOAw1xRMZEJ/TOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJB3ucIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJB3ucIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F2BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753896593;
	bh=RDg7F0eDijo+ypJSbIuAYslp871jvGywgtoSowmjn4o=;
	h=To:Subject:From:Date:From;
	b=hJB3ucIwgYVj14xtW6uZ67yrqQZeFNW+oMlUepnGF3JpeUJtJfmwZhouvmnDOsGP6
	 UCHwt0sq2hXI+pty1mn3oTOdp1D57vopYK0l/SkwBrWi+blslV1/rmDTSJFxv3IvU0
	 c9V8Tw9+OW5vpZGvwBathV/1aZsUR4S1zej1HkYc4Qxg2bTAlZugmmD1ybxBllWCHD
	 4cAF3Cv1ZSTAmPSJTiwA7anzHJzg6TbxEka01R55FNe+l4T3AQm73drcZzB0oLe6RP
	 q+yZ8aoN2ZT5wxYXZtEmn8A3uj6pY1LccFfgzWwUVDidSAfpUoYwDUi5MdaO6yAD2v
	 7bbixUHFT0cbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90436C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389659358.25672.4397781784137908667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb223def4ce7fb7da219a2ba30c5e1d62a5c724245fa80c10821e50d26c96c2
Date: Wed, 30 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753896593
