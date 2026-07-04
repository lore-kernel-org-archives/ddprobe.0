Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D3E395ADE
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783151314; cv=none; b=qovLKiUVvAmhEtYUFJqA2dD31DKqdrioxnbnBqtR3FreBXMIPP+y6ncV9wLOlUT125AiWRl65doDzexKDb2BfOQMy0H0P/iwXByb6mnoETxDoqnXHp4fiWgFfGO+ZQmZJbkbCHJwTvMfDO8zpKOvJc6kaj+vBC2CXeS5Vvgtzjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783151314; c=relaxed/simple;
	bh=GDzXUAoRuI6gh8HzlDIAAvzIKj4fL4Tk8gcWVV3ozWc=;
	h=To:Subject:From:Message-Id:Date; b=Ho/HQUbH6/JmHFgNpfSJhwdEFwpegzPE3wra2qr/KI/2zvWGilc9zElZcarRVUFls/WqCaBnDny1ddkixoyb++meXpkt8Ux+OVZuS+vp/B1J2o+qcAaz55h1vGeiVWjBMId//VSKGe1hYz7LZCaOTmH+/fpXS8WSRPnqF+s2bLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5csGsu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5csGsu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB7BC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783151313;
	bh=GDzXUAoRuI6gh8HzlDIAAvzIKj4fL4Tk8gcWVV3ozWc=;
	h=To:Subject:From:Date:From;
	b=g5csGsu3HS7sNK/rZeRrAEizV9YpatoU0F9wuvDcOX4ctiiJ73S/uiKKMLAWxVzT3
	 P5/qOd9sYaP80b+2YaGDWPQq5hk8RQl2fnX5R2Pi+hkBQxFBlX+6Z9vQKMekPmFEd5
	 DrPgbIZEvwnbpjXAD6KGdHSqp2dBXLTlv9uO6fbxSz9i2rZ0CtFjdN+8Xi4cgTZSWl
	 Zxe0HuJp8E83ng6i2FMs8lGAvMl664+rjNRKWQf/GFUJymjoRIPcQxcmp64kgJBNwz
	 6G1FMS7OIn8RS9KKSZCPtOOsUZGUdN4zX8gewK1XP2fBcUWGQ0UHNmlqSgF8+c2L7O
	 uwXaHDt853gxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89C0C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315131368.12970.8701493950745639926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3738e94a27288a91edb07e42fa4eb89309151f9908ff5cf1be1741df525aa679
Date: Sat, 04 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783151313
