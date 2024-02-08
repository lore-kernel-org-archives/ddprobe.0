Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31B2149DF8
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707426497; cv=none; b=j+rYQCfU5DVTM74oaOLGpWpv4Ut85Lbvtsgb32/6ZLODG2NQeu4J7RxMHCRNahvPkzN/t4KjeZ6WQLEUmQ6jaFzyZC1FK6vuPiHabkz++tgIfciAhKI3ingJjHQ0M4w6QUOclsraTwPr1ivcNuQBEvrCdMLI0ad2pP5lcONQTCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707426497; c=relaxed/simple;
	bh=WhTEZoOQgFH24/jyy0QgpbnE7dVY89abW6rZWQBb9Js=;
	h=To:Subject:From:Message-Id:Date; b=ofW2nk/Ib2MRQYqjROR7f3d+TSNKKaUctWGSyOfkb3sM+6guBRYhbuGOqKgQed6rHt8YGgFLZhMgccBhWb1sMKPtgu9xYa2A3jXcoxJm3Kogw3n3lnxIkF3IynfEBaPIqJgkMJIoAQxLcutWzBV20usfhR2lSiCwDbSiEfb58js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MndJngvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MndJngvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D78CC433F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707426496;
	bh=WhTEZoOQgFH24/jyy0QgpbnE7dVY89abW6rZWQBb9Js=;
	h=To:Subject:From:Date:From;
	b=MndJngvhYgelCuJHvASAVwq5YPRO49nr9zBbgDIKjhezB4qs9lKYAqZLKdlq3imWq
	 1WWfuKliE7sEjtKEguGmJGlw60TajxQeX4GKSfEVGjs1ByZ7iMA1gJhW/AbfkDMhCw
	 hJOP4rN1S2nrIhSsS9RuyFe+uK6rQlBep+t5hiBJ0cxbrd6ZMZb44HDYj+/SIISbZ8
	 Lc6qLWtqK1xxuiokc8meGf5I0zFDRdZw27m2xCjQW8VHJIAjjYjc5xklG87al8i9Xn
	 wTxumGABrA2TRtAf8/a7kkEE6gvwPff1imNgKjOpA/875Unzp8x+CnKma8yoSdZy5Y
	 HAyQ/V3ijwuag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C78C4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170742649637.30016.15362114004717816638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aaba0d3f831b44088cd353fc662c819634496243c935aabda538a9e23212910
Date: Thu, 08 Feb 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707426496
