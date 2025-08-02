Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3BE8F6F
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754107794; cv=none; b=Db3kb9tnjOfbQuB4asGHPN+IryCWta63PlcsChf65IcloXp6YTy58KScoI8AjrmOzwONm/ynseZTevo0BDjgc5JfPRKemEaNZMrDZ3yEXA/QYEAJJ89JiDhxtzx+N6pTeZjmFsALgiDJslAx428VU21CqmnEVF1wgfgjoecheXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754107794; c=relaxed/simple;
	bh=77drLef7AQKLHr4HNBMykWJWwZnZoqcCt4Kn/YxIxc8=;
	h=To:Subject:From:Message-Id:Date; b=Z2ylSQa2dyjJx2HftJE3BQ/4AgE9+QnNCd8ChVEWvZgB857GfOsgV9TkTZFXhh1EvsdrYzTqdgMbt1fxOMRc6NQsMsHSints+da/d2TPFdutM5sZM/tUSlGB/vvAW9tfmXJdcZMwVKQpv7N07QB9wcmWKA2aj3OivpK6vqrcvgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCFrmSn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCFrmSn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A706BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754107793;
	bh=77drLef7AQKLHr4HNBMykWJWwZnZoqcCt4Kn/YxIxc8=;
	h=To:Subject:From:Date:From;
	b=sCFrmSn/YGSDYM+/ulPBbFp/rtfT2HyWuJwY4EEjw0z88zslWnYD1XMTFUD83nDAs
	 06wrzRi+dWe0zs1uW1K/aDEZ+DRKVaqeER6IjYHqMCv7bLCWj+/pvY97n+dGcYkl3M
	 cKpPEaojB2WghVTmEZBrK0kT/j03MqS+DqT+BFOaPu/nGZvv9uoAKtRU+v+pj/6VvH
	 mnPgLv51zWRGZ63Qr7kHGYVxiCRPxR8mvINh1hnqkPHeHP8UBvjlTnKemBMqjtasxx
	 G9yXyPVYCjjJVfONOGgCvrTmiOWCs+UhT9ynImc/WBL7JKSmQT1Hux6/0sWVnKxHsE
	 NfdTT61Dh6vug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9355FC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410779358.16302.8623495535476635635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7842bd1d3c8454794809ffadc88de43784c9c28fe53c5458dafcdc04f400aeb5
Date: Sat, 02 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754107793
