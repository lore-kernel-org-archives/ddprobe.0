Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266432DC76C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779297634; cv=none; b=PHWywfl6hW7Xay+jP3XhqqgkiR4aY0W+xYtVZ/uxdX+G3S4LmCtgpnRuGqlJqjxVNwba44DS7OXL7ODTfknBEGl8Be0jE1SghSOPQcJeLIU8t8JgOjkSELtjkYp7a9B2Qn7aZHHwPlPLpCE1X2uU+GtxRKFAtYtBUkT3qd91Jc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779297634; c=relaxed/simple;
	bh=Fb0YmZCATeLI3CB4wLDNaRtT7Jw0v2mrCIxXFSOKZnE=;
	h=To:Subject:From:Message-Id:Date; b=K+xH9E76nQp5YJ+dnm58zL8YSElwsh4hEmdbc4jDy3IN65k46rlKLReU0H4pNspeGIy+yGsu3RzX8y8eUTk5t1BT8RkEGbNvIeb93UCr3997IAzdal9HppTe5bF/0MKH5Phjj4kd4YGdxEVLCbuf5Sw7d2+uQXfipTsp6pIuybk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3WKdMsn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3WKdMsn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7899C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779297633;
	bh=Fb0YmZCATeLI3CB4wLDNaRtT7Jw0v2mrCIxXFSOKZnE=;
	h=To:Subject:From:Date:From;
	b=i3WKdMsnROrBCoKG9lHhbi/aVUUnU5YpTmJggvYucF3KGebp9T9MmKVl8TmAiOdiF
	 Dy2ZpxnujFXkCR49Cphm6ELQ86ziw3oEYOlqCu+JE8aABcpME5bqEL9AYNIfuqBrwK
	 KSeGcbrsy7mfzyOSwnznOnlhxmtJyHuvS+OBul4JJrjEmlHusilZmce4xp8L1igwIB
	 RE147fFxufm4e3xJxhnkyaDtw+ANw5bF/tjjNLaodyErbq+YjWn/X2wai+Ve32N6tq
	 ZPuW5cyWhYu44UIZbgCthBmUD1e0q+mzYRS2BEDYaoK8asgMTiZShDZkguFzkmHrcn
	 xN1mvlmW0YPVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEEACD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929763369.30933.33886669687307075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6322f0d20891921e9962382e6af59ac37c90d044c7cb65af3e586846dd91227d
Date: Wed, 20 May 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779297633
