Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF1D41A93A
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784808634; cv=none; b=sMKyhe6scPEWTBp1mLZpna++DJ7jqG74L3378yRE9dm88bPUrcUDWX66ohjJmc3+i6DSh86SprWiUj19kO4NB/gqCPwwTKQGIfNbpCQI7GH3D0sEaAaMwqGQU9fh/N/PppvysrbkvqQHIZnps2mZUfWD+3LHuTqYRG/2Oz7YA5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784808634; c=relaxed/simple;
	bh=YCYypqQnmoDvDZhYgZr2mj3tdndFsTrxKvoHNMUWuH8=;
	h=To:Subject:From:Message-Id:Date; b=ALRNQh2/PKlzjL1VFEhys4+aelap7PdXvOIg05T/euWIM/XBishgdkEZVcAhmJKWsML13PTveucrpbb3uLpJESC9P0lU8b/ON1/kmgM98MsUcNOVi4yEzHnmQjv4aea2Th6XUBK+ta0LZ/iMImjxgdeIfHNLUfw8Hjvu0Zed8/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtTZZ2iN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtTZZ2iN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F34B8C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784808634;
	bh=YCYypqQnmoDvDZhYgZr2mj3tdndFsTrxKvoHNMUWuH8=;
	h=To:Subject:From:Date:From;
	b=GtTZZ2iNeme9Nyw1f8DpWxB/+nkaQMMpkr0XVePmwbsTaGRFcPX0vvc7lSx5bGIi1
	 3zQOrMVXuCWPa67MYr18olP/ZhIPsu+35eG6WJWwtMWyRzuB3iGXWUTVyLX8S2RqZe
	 gxay4r5ZTHJi9NNDnG7ZcYjGG+Pc5XN2v/rWxVlzUZNOc8n75CTseIiyecz/njBbzN
	 znrcYZ2bFffObINCDhc5ioB/ss1g0WzkzHVQ7A2L/ZEq1zei7vrbA4AeN5kWNGRYP6
	 0x+6J1345z4hSYeXjh8Lc2KiPpZdmblAnHtZyQbwv2fgfhof4II4Rd6WsVSMAhTMOF
	 xMYDW0PEdmorQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A9EC531CA
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480863379.30417.12650222175990399904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f801e85f38c9315e887d4f8b724f7275db1bf3506ae029fee42654af05902b4
Date: Thu, 23 Jul 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784808633
