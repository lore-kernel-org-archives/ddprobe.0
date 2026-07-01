Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE334BC00F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782928714; cv=none; b=TJmkMUlSN3hc+YBFIxNPPtkUsmpTB22Q8tUYFmY/IVgPcmjuNS3hvc7RwEGNajI/cDRTMPvAN6v62KgytLT+8LVwifvhq8fmkmJ7WqKHXKGM9ijeP4SrzekA8/+lRNciQpFn1d8LD7P2zrwBtjKYRzW72hHcqd+FJChd12csdgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782928714; c=relaxed/simple;
	bh=wMJSQBMDAXvvnOh+ZAvdd2tiFwG0BrwP/JTVEwtIg5U=;
	h=To:Subject:From:Message-Id:Date; b=abe+0f8f2Jf8on7sJEucoT8xsen/fpbGJ3GhvZz33SC66njP1vHOvC38EV7pucNilwqxf25z3njB8ApB6jC2fpMzvrlBkzbMU3eav4s4bhlu4mBBPgv+kLc6mgOt4xdJgCwzEPPpRIZp7TCOsSrJz188s6hzps6GykV6UfJNBIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFy/MxVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFy/MxVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37E0C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782928713;
	bh=wMJSQBMDAXvvnOh+ZAvdd2tiFwG0BrwP/JTVEwtIg5U=;
	h=To:Subject:From:Date:From;
	b=lFy/MxVN6oK7jmYwDROQq+LW6FeJz1EhfctW2c4dvnpWUBqyt3npouVqj0JbDhwVA
	 kkHu0U3z4V13sS1bzjJZF26O8qzG+8C9LYahrMUWMbKcjAh3sTmnw7FnWOBphfBlsr
	 yRBaIsq/wd/47iC82+jhlmroeFXA31y5EikiK32hVcEoAkBFMkGqkE4/d4bISCIE8D
	 kAH5wmUc4aj3ihWuWhYNE3Nq+sTZs7gIIeppn9EL3+ftdzyMKAEvmJXX+GoHiv5hYd
	 +uBLY/eKL5fcWxJhmzZCv96nJN1Rw0K5ta7Sng0tkQz3u3OvrlI31Ie2s9ofMvzBnt
	 kJrJViM9zyGFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A5C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292871368.12068.12285505540354097786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115bf15f81a3610b568448453dd7c48f5450660403271e4a470adf2587f718bf
Date: Wed, 01 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782928713
