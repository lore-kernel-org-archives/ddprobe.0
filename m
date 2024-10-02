Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E0A1C36
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727831754; cv=none; b=AM6bsETFqWCSaoXG9mVRNxTFrHbq+oqpPiO+q2OaFv9n6eWhJkZ411xfl5SyoDxAbqGdWNC0a4ULl+FGVFGCpeGO+bamdoyXPgLAr2HDQXkLTmtCAAe1OaVvaw84CfjPD+vpOQvtd5W3ga2ndPnyWUMj8dNMqDWxpzOT6Hvai1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727831754; c=relaxed/simple;
	bh=Uihzw29q2EUg49xabLVgf/NiQcMk8QGy/i3Ff7sxwFk=;
	h=To:Subject:From:Message-Id:Date; b=LgKlzEL8mr3LcXaIPUA5spiwxmsClzbWQLHoXU+rAzu/EFgJ5lB3v9niZi9d4LBgaTA4CTq4ajZ+OfrwGLebfqmW7GKq7ZEtpvJAfa5EviRLPpn4sU/B2By2He9gXrG2AhMhU2STtMnpd50pvLE06aZ9BRKdZWfnoL04YRuEh7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luiBimYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luiBimYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B86C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727831753;
	bh=Uihzw29q2EUg49xabLVgf/NiQcMk8QGy/i3Ff7sxwFk=;
	h=To:Subject:From:Date:From;
	b=luiBimYRgc2Qs5j8wH4LNkqVYqOfcstljrJX/O3sCl5+XMoS9PKXjQegAP1vbMLz0
	 Bf5qh0Mpg0ohCHKXnV9oiAjrFlWo2q9soSvZZRJUzm4DX3mTtpViDBUIJ+vObXi145
	 v2RdI2yR8XRD5C6BAs3vvaCJCaSbqmbYU0yXsBNyND1f9496kqNHbThWA4a6LxBZx7
	 kDsVCjK/AFVMiGZFvK/4IT7Dw3N1ojzqBCx+pBeudtES43/PhL4xoeaWnrzwHt8DzU
	 i5TctSU2FkHlhpjXomTQEajyndz5NQ/ITsPdcDD9zvC/HvKDfloB4ZTqpm0gA8cxCb
	 ajwHkxzV06W5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA26CF318C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783175363.9893.12015612288836552949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89e59c644021fbb3452145341694b5abb5076f8c8d6c889741934b08c8f0700
Date: Wed, 02 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727831753
