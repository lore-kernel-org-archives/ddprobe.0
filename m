Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E77F1F3B85
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788145834; cv=none; b=gGDHYuFAGFRVcI+4TDDmIzGQ6lVUa7i3enjXZaK8HFxBrs8Y1DepKa+mN3GQLxqQTtyc7LffQ+4m39wWSK3IBjxoPaqewfiYG+a2qhJnn/1IGMCe0YTTxjv/641KTgqJh0OvDOmlwePKNPeQx1GGZZBWIubv+OAlTVaQhg7tLBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788145834; c=relaxed/simple;
	bh=OGOrUBukSlv0XT/4ozHeeopUE5B22DYMLc6wTmd8wwU=;
	h=To:Subject:From:Message-Id:Date; b=p2fGICj5P1aME+BE+QWX1YNsT7TdileDJCNaq17LcEk+BJgSOc9p990dNV3AmohYeiZO4KrqVldBxBr3BVGXvj6QVE6YUskanbJUnZi3AypG3AU9BQgeOJQok8yhsJnf+7K8ng2ndO1p9a8B771HcFYZ3f6mQhy9IAths44TRc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbZ1FtTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbZ1FtTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39DEC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788145833;
	bh=OGOrUBukSlv0XT/4ozHeeopUE5B22DYMLc6wTmd8wwU=;
	h=To:Subject:From:Date:From;
	b=PbZ1FtTl9HslIVFT1sTn/96aunFEiE60gYpTbEIh8lGiPfZk3lhrTCkaScFM1cCEq
	 AvFinoNja43AJJ94vcSbWg/SihVRYF3wsLhZ1jJJipbznhQgHdSCDftHx3Xq++oJEO
	 BNxBr/tYCVxtZlnDK67S6fNz0ebb4pdSqp5A79vnRsuU9BwJvgE4mN+k/FvYtOuz/e
	 WRIjwlgbJ4ABKgEsikXCdzYEyEYRq6NrOLVif9KXKs7HtqUXtw8L0kGeh6CnQA9SSk
	 ryFd/9Ozk8ySV3QhITHbv3jckMAazW+qSYvtiC8MpzV969N3Ed25fl7MXEfJuPnjbe
	 GraUXpAEUiGxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA574C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814583368.4917.6972129393143993176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc23830fd1c8b1a7cf913814c4a59097d30fd92fdc8270f6fcf57507e286a1b
Date: Mon, 31 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788145833
