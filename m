Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632053CB54E
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789230034; cv=none; b=GoR/0pCCqbPGbD7GE73H1XRdfXwBX1vXojgupURbTcPPGPzeXmitOqBGdi6++opOfL/0R+lkC4v+epgco7oO74CDBHyqHKp+nKE5WspYKb9b3h9iEWDr9LFsMy9ZCrmmh4H1/nrOmNdJCicPIfKG6el/eFzl9o249G6e4VfAXSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789230034; c=relaxed/simple;
	bh=d27toJtNnwQDuN2tSG4Ng7PBSU0Fh3xbSUMaiW3HRIM=;
	h=To:Subject:From:Message-Id:Date; b=T3p3U4LY7/U3oxiHh2a2P84oQfFL9sjqNZzb0mXvA4b/cZrfn+j9hFIN73SFcddXJ9V79ZW0HgVWUeO9u4mjy/xmgKRapHLYDH03GeI8ucfrX75VAR14hC6im31Cj77vkVTxKfzqJthwiSJxesrjZbD6F5jZn7pY7aox8/jEB7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4xfwRUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4xfwRUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEECC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789230033;
	bh=d27toJtNnwQDuN2tSG4Ng7PBSU0Fh3xbSUMaiW3HRIM=;
	h=To:Subject:From:Date:From;
	b=I4xfwRUjArCpJCjtMoIGC1Iz7uCIn+L80g5a4OXFQ9Xq48aP6SrHhBlsJVl2NhRIT
	 zlLqkHWvhPa8+4Xyum9Do+gplB/2rwEmBGyHCTnlV5qDCMaGeTywy1UdmJLCVjzy5Z
	 UqETc+5sSXXoU5WJdqXCa4ZI3b+U1dQHOhnCBhM6pEV9r+NlMDXQvG3e6yvv/0TtqB
	 xSBfovk9gzP0Pl5mvy+mCv9FUrlMwaNgcpFxyW+uJwkR62CDfJFQMFoMzJzxo8jwE7
	 e253PAMpQVaqpp5zcXgFIH8OBM4B4WTpjfHsOPU+Kgr5CfKyW8mFXFNnE0uCAI9+u8
	 +N3K/awQxNZkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9370C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923003368.7076.8617516083317105643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b2a2bf99e0a1420b9eb8ab29af190b7a725017f312e28c1b8dc32224e926f1
Date: Sat, 12 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789230033
