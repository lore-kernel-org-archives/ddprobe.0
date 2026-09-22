Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F87A480954
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790100634; cv=none; b=KAXSx07KXkFyBVWmxn/myX3j1NcMt1GSlyKOCgTR9PoLB8ar67ovt60bvsmcwDovcrPhRENecqXkdkr205T5DzGX+d0ndPgHW79VQW+ZSqaI4fgjz4BXC8ESYKNFYnlfILLGduve1P8LCE7dnztYSKh09kTuh0rIr3vHdzL9LFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790100634; c=relaxed/simple;
	bh=yhilad6ZiHnxlClkw+eC+TgQnSWF+wVfY5tYe2RxDEU=;
	h=To:Subject:From:Message-Id:Date; b=YLQuyVxSvh1lhHRszAqXZ1aei3aSEfrVi+WiUeq6uCwrhLhDQHJjRzqwtEipNkUoFHzIpnf57zDe6F07GeTnA/wdgF9IEdFfgbaKqE0cLiTJMtCbIQ8FLVb1slie5xmkYtk1g1ZmQEV5kSy1OArgEgy5IsDpQkjtodcpkmvMrYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiIS4D1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiIS4D1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE8F4C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790100633;
	bh=yhilad6ZiHnxlClkw+eC+TgQnSWF+wVfY5tYe2RxDEU=;
	h=To:Subject:From:Date:From;
	b=ZiIS4D1HZq37ay/bRKthOKwjT4OPsqUwx/JsCPXDiihBH38681WK3adtDEtxvKY+n
	 5slN6VfLDNLfLxH3+gWUhy7rIsxai9pvfhcj7hv++8bXDZk7hcaUk6J1W5TUeBrlvv
	 8wveobCTiEXZ14AOGnyXVyN+GK1ILHVasE3GeKu1WyYJDpZzchtSyijr9quQKYhrdH
	 5HfQ5zD5EMpPsvHe7kRWZlSmLqSxKysnxOV6dj46L6pTGm4XDRYCBbDVjRR9j2kQyw
	 O+RtSlkLTKfoGOMZdbD99Ivnp5nqF4ySC82VQTZT1Rxn2T3FcUDOmS3sxh0+KX3x6z
	 vCP2CLG9Gikcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DC9C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010063370.17943.17649647385697945331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec83660c5b205bd21ddbc03a3e965c1ebf0202bf5ab5909f1a3c5f1bf28a870c
Date: Tue, 22 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790100633
