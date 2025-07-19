Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6A22557A
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752905994; cv=none; b=A00uf23LNoiV91iZv+BfqEt564v4m3uRoV/5TDwANnw3iD034aoYqyFSWhcBaf+S5Nc5mVG1iw0WQdFybP7INgjnglN5GiYkYlWoougxng1OhXTJQoS3smihYqlvWEw7fGkDbDRx452080h6Fey9GAdrfFrBefDGkg5w2bxPFwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752905994; c=relaxed/simple;
	bh=P32wMsZeABMQfDZa5Q1xzCytAGuLoPL/fw6WYRp/6co=;
	h=To:Subject:From:Message-Id:Date; b=C34Q+JI146HB+n2K86NrtkwU5eZHFCxBUpXPLQIKD0ChgC3WTy9NX27Ba7LKd27z+utV55R1hBZ1l1wdydqD1t1HxBkvp6Za+j6miK8jksfXB+qIvhgVzIXWLTmoHaFuTeJXoyNWkxwTlVy2PFupUDlQVNRW/I2Ijh1zFnB6mmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0XcYkzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0XcYkzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF59CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752905993;
	bh=P32wMsZeABMQfDZa5Q1xzCytAGuLoPL/fw6WYRp/6co=;
	h=To:Subject:From:Date:From;
	b=k0XcYkzERR/8o21MsRT4lUtgqd4m0rOQvw3/2e6Pmny7tIvmAncIgibts+Ejs/8gt
	 NqwGVJ4Acw2GWlzqbbd9GaSp7lgzkRDy1XsvlHwvIaaM7uiVxm/BAqbFBlseFfyDnh
	 BL0ITIEBEu8YH9O29EuKyDQ6vLYhMFVdpxjUxxv1m/HL849+HLEOBXXMGiPL8NIiLs
	 +a3z2JEi3FlioIh/3lQGN9R0+kRFWdjkH0lTBhyPXSZzFwvb7+/nV7iegPg7AegBkK
	 9MqlAicR+pGSn2tYNkqi5uZ0IrzbWuToCsy7ic59e7btyoha9xj+JMwLN0f/0ysH8B
	 G0gloO4Ncb1bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7B6C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290599360.25210.8094838903521128344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d031d9e5bc9eef69ddbda442fe9d048fbcefca8fb8b58b42c5bff3f4735c170
Date: Sat, 19 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752905993
