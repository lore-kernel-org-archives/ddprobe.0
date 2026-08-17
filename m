Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D0A3E009D
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786959035; cv=none; b=cUmApnecFSlGlgg/si3Z+kZNW3736aZPBMB3iq/Mb315fh2Ky9rC3F7l5yP0ppkEJaunxtRfsJ8MjxVZEA+O+vcoHCGZT+lqc74xeYeK8kJfpMPjmab4v4ExffJChNdJ8WO/tH3xILu7M90EzRFo3/rpFAIV46PcniN3DpFDMlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786959035; c=relaxed/simple;
	bh=rjw3XDRZbRm6nwhJXiejG7p9943OmHNRLKoNL8dFilg=;
	h=To:Subject:From:Message-Id:Date; b=QzfBfV/N77c7r4OwB7HjuZvRG+GqCK+VugH2UvAEmUD9eQcdXDaUcC89W9xASjQSty8J8/dxBdkB6sEHQ7EF7I/TSvneLhblFtRa0MbyKsPcWnuAqzfNgyi/TiMLZdocXsGCZBZLM73flcw7UsMK6SlefK6oZ2p73rXxwny2LUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJk92mEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJk92mEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53B6C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786959033;
	bh=rjw3XDRZbRm6nwhJXiejG7p9943OmHNRLKoNL8dFilg=;
	h=To:Subject:From:Date:From;
	b=nJk92mEeodAlEmx+ulkMkVryvy+ms3HEmi+RlykRyKKFAZR6j/SunENAEcBfbsUqz
	 Cu7HyU6zXwwMI85Qss/EMTFHyj3+IbyKcXGNsbB2JwWGB4Hm5AYj3M0MbcQIYe+gmL
	 R+ZYqXSk4OkQRwfTRXZG0+c+Z/y4E3q8ziVCoAtVQ+r6NhIj2s8PZzXlpOiMFzshwf
	 vsqT0A1TJtg+wZKLQyMRCe8H8z+bBrQ4T8wkGwAn9TrLZL3h834DRWHYv34bNiN0yb
	 cX4hOFIKiIbQbDoLhTS/4zOy+dIyWBNjViSK1+h6HCeCcru2+/ilBAMzR24TeC4M0c
	 V0twEN1YC/f4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE13CC5DF70
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695903370.19616.17365145268757331725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4bf88a5c9473b65a85c45d50ca7946007d01b9ec45eaf5c910b07c58d910db
Date: Mon, 17 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786959033
