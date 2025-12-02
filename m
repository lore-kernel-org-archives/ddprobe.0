Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235703101B8
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764719574; cv=none; b=HnEMgD0pvajdDfRhyae83bDWWIMc0KmhFmI6J7xori4whEw8WH5+b1Zt8gZNT70F6dFpbdjjW8B+H3lGIJF5cvsvxQeNFd1Ksg5TM+vBoP6PGMiQ9NuTt5prMSfUK4IKn/CKqCxm7zFjQgPYdUxPBtiZ/1WiGJxAxt3NEz2sZng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764719574; c=relaxed/simple;
	bh=1S7c5hgTMXzVK2ltiM0REIIdE5q/1iiCn9Qo6P9d8os=;
	h=To:Subject:From:Message-Id:Date; b=c2FIlAGrPRLj1+bYcZOAsmJSoFS8MziubGakxkuypxAMLxat1qvTi7Qqg+PaAxlmxoGVC6NQ1wznT8C0lbK2KiTuuIouhaOrcWVOAzfgbYG8ZIuHg8HuDtcV3BhfhCxWe8btD0x4acafqTyzOnfn9itvKYYG6XVJNeJLiM7h0mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqSfPRAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqSfPRAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE02C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764719573;
	bh=1S7c5hgTMXzVK2ltiM0REIIdE5q/1iiCn9Qo6P9d8os=;
	h=To:Subject:From:Date:From;
	b=mqSfPRAdDbXC54IGE4mZYYWo562Z6V6I3uopx5CIgWwWHpSxmhqKp2d4XzU5w6l4g
	 z1Fv2OPopFuaLFJsvD9w7eKQs8MFY3U2iZqou+X9hHVjDL+V9m3iLsbbsoOy9HO31w
	 nONO28RD6CMOUzolCvvI0IiThXx7LmCSaFZAaiGO9O2py556rAey7oPfAWYcp1pKXN
	 s50f/AjPuVfyVj/UhdbGGw2MVQ/CqMJe/MIKQHw/E1rllsm4aasO6x5681r4jOPwU0
	 Kxf8TYhMV4hLzOqe205V3KpgoYDc8hoCvKk8wkFIhOQ3SofFk6f+jiv1VW1rq7nkGJ
	 /mKNvefIyM+nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0B0D12689
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471957359.7610.5216548544854902906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b951b8cc646727b3f6efdd3f58c9fde88a708f0a80d02589ee748ccc09e87d7
Date: Tue, 02 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764719573
