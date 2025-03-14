Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FAA10A3E
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741915734; cv=none; b=sOuS11x4LlcNr6UrvPzmeCiPqWD7gaYTApm3CvRaZP61XzpgxpLKWdhiC+CoK068HsknWtbhOJotPEsnBV1gWr+MOS6CEL1Gohczf8aubX3x/t8R3En9wKcA03tUB/u/PtTkM2kzJaCJdse1+BofAorz6OfQxDiSLLf0U2OaW4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741915734; c=relaxed/simple;
	bh=aC+NsOakau3ZcE6RFfgktcDs501m4aFLnULbczCgiR8=;
	h=To:Subject:From:Message-Id:Date; b=mD5VAtr6cdV9b2syTkbmfwQYkfb5JB1uVAmSr4pppZhqeGbuCyCFnokdfBy2hL6HTM46UhFd5aMGmvewECMqkFifUflM4lv3Qw4NpP3nyPsvFfjfO6x+GkMXTfxaAnQfTVoAYgHyIETQznrTNxhNQSQciPvWwRW2Rkag/TURjlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiG9Ky8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiG9Ky8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCCAC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741915733;
	bh=aC+NsOakau3ZcE6RFfgktcDs501m4aFLnULbczCgiR8=;
	h=To:Subject:From:Date:From;
	b=LiG9Ky8hiX2VuCR/ACq91HUqusyrpkOjL7812IaMWdrjcCAtXeG+rUXptxitObhaP
	 9bkkDDGZZAt/1sxpAuPC5zzwtKIYE4CqugQ82SVHZWe8SCncg7PX84E1K+0OGLrMaA
	 uxxIYI5EM+vjy0R4YxLeDTXjRMcYkXn7xvHggdQcET5isBo3VJ5K8XokggYIGqs5Px
	 0rn6GDsznYJPb50m2WFCorIT2GdRfmve8UXvpKl4vFf6471Fbk1Y9W2cWjlp1PoI26
	 RIOiL3F0a/tDiM97lRo3wv8NGM+AmyLq6Sw9nC1uQ3bOzLK4g9rCUZ8NtCR17sKyBx
	 VYUPQr8uOgcrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D15C282DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174191573370.18890.603151575422876390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ee256f3918b1c572becb4d986f9d0ea802147c2384b50b0d66e44753290f05
Date: Fri, 14 Mar 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741915733
