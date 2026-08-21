Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5ECE353A65
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787282434; cv=none; b=Vzqn31bC31dEVVT/4LsB2mFTmmFnvDlRDNEQ8ZdqbRK5/Lr1G/fZ283xIpFAytDqkSqWt6WYjaUcOAjkQqEhj1EhMyDwRI8nAF1Dvtm2siKNYmi1aRaH7O9+NYNBSeo3ATFrA6CQhUUvGpLGoNVk2PvcpEIta/MxZNVPiBYvdaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787282434; c=relaxed/simple;
	bh=2CXwKjJrn08y9LQvIZ6+vqsz6FliF2dxuObZQtVmEMw=;
	h=To:Subject:From:Message-Id:Date; b=AdfW/UE/HFT5U1cFCtCzksu0v6fKS6oeaV2FJFACPlgZfXrsgJtGLGqnykQhDHVjQx8PopJADe/hgTSeuWo3Y9aOEzPDmqaPJvSAAl0wXnMeu+T1HZHlt/G7FqxxPxnC4tB2IZklIvCv5yjL0k6/rA5QzFBVjgLFn9iur4FTk1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxOV8WpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxOV8WpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F67C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787282433;
	bh=2CXwKjJrn08y9LQvIZ6+vqsz6FliF2dxuObZQtVmEMw=;
	h=To:Subject:From:Date:From;
	b=AxOV8WpXJTNRRiHdddpCnwLsXOHn3zEzSX7Bv2XPDGvzDc7O01Z4G4QOV8wvL+9Zb
	 Vqe5+FM1C4Z5vfhcFZ2ldufFqcpjgYZe3eVSzEN2/ErqxUIcbUU6uuQGPv2Tdsw2gc
	 z7DjcK++82J4oDLisZoKdzEk5OX/dxV2wO1A9gwWRNps+g8NqlJrrBUXjV32OhyFLA
	 WJ/dXQPWXxBEQUr0x8Lw0XTsvOma81FTOXH0jVdjBXVzmDbXDq3ZHzrhXnwjXpzC7X
	 xFzIWiQsQWt8DXswI8+XclyFuvfnyKYSyK3x1bihx3QMcdnDscuIYa6CPu2JnKEDPy
	 eOiVi+bDd78BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9FCC5DF81
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728243375.1799.7868364666262912541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23730873ebacffbeb17c2c4a06e88188c515bc2dd1d2f93ba999cf17e5044287
Date: Fri, 21 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787282433
