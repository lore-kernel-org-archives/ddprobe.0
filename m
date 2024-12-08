Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4E514A09E
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733663154; cv=none; b=KrvFEQq0hAcEqsRw6J7ph8WWbZ5qdsLHcopU8f7EjH9WaV4d8SG1RUii316lSioIL1Nqo36q1D7/CwAN8TnSrW8J65OAbVfDuCtiqo8aGVVj2jqYFhoWv/b3VQXl2uiBUx1zUp2NEv5LeVagKQtMrRbr58IP1MQHNF863KyVEm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733663154; c=relaxed/simple;
	bh=3QwpiewR5jWKvtMfF78fZ4wXNKNdKYkvg9CwJpiw7QY=;
	h=To:Subject:From:Message-Id:Date; b=ra+UavMZlm0+gT1tXa93QqG+AeDuuLLXgVOZZG+js7gZYHqQSKKlQRwdHMRKaoJn3HTeAopNJj4g0jB+ZhePonT60iQi/y9BKiJHy0SwRUv9hq6e9MaUtVrA5/3M+1aYB1rh2mqa6LoPzZjTh+VRgTEvjSNVbQym4eGsAtSI0mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByOTuHwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByOTuHwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD32FC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733663153;
	bh=3QwpiewR5jWKvtMfF78fZ4wXNKNdKYkvg9CwJpiw7QY=;
	h=To:Subject:From:Date:From;
	b=ByOTuHwcGJtXW97ifLcCsGY9QRZtNDAlfqXT81aSojTxqz2EE30PR7wf4l4Uc7IvC
	 jwY5Vz8DzMbcsGtD0b9VvBgzG6mI1/5riwZiEJnInlY1buSD4tog8PVqM7kvlZWNzW
	 Ka+5JPiW6KSM+wtioAypS0bS4l3aPzWfCgpLP2GfNJ2d6+BxVd9mfjOwOwNVanCOfr
	 oUnccOMopp8vkFnKrSOyiZ2xmYOyoJd/8g2XrPwFfbBecvhbhy7wL6ySs00cbupU88
	 gIr2Fv0XNR23q6KQMgGoINXIoRTfx+Nkr2eEvUjaV4lmpq9BjFdaRulXQ1oIsdFyrp
	 E47ADs89P3u6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C8CE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173366315360.15705.1993276111007172531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d1a487223747de0f49c478e159cc31ffe717893c34afbd478bed784f2d18aa
Date: Sun, 08 Dec 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733663153
