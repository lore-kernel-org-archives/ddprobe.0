Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D200F35B657
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787740835; cv=none; b=aCywpEkGeWCK4CTkhV07ypythXvGQEsWYI7zbJ8KVQp0cDaPSu9qSTXgh0J/4gaU0K6HVXL9b7QGnboV7RdXLQQn9cwW/zz2RjcOqxspgU+s1h0y0uyyBvCdInhNYbnM/Kkbsj/iMruIs70YDpIbmSRmyiRc1vhRx/zMhMhU/GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787740835; c=relaxed/simple;
	bh=kKTfndL+kkslZDw0kc7nk5/6Pou5HLnsvomMKEoqj2M=;
	h=To:Subject:From:Message-Id:Date; b=ZHKOG+PTV2+kf0AKVThOiApprpisnjWTGq5QRyiU2TVWgLDLpMmaaEPx3Yx4Ap808+UPAx/pCNpBetrjh330SogXJasc3Zhokk0KAsTJ8RovLmXfObVbGjxNZ2LADz7oxU1f3ytkQ9pbyNrZDQJMxmcNyvEyNwhRLd8IPLNfjls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvpcbhLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvpcbhLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA69EC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787740833;
	bh=kKTfndL+kkslZDw0kc7nk5/6Pou5HLnsvomMKEoqj2M=;
	h=To:Subject:From:Date:From;
	b=gvpcbhLyM6QEJWvvmOubrz8k2XR9PjxF5ntItfpZWUmncXuw6wP1ykTtVPrWR0nW2
	 lJXaXqSM5bXR95dKyBYgUDqiHNoqR5t0fV8Tf7Dth4AykdwZ42h8LOKobYzrF2EvFx
	 GSRyWDjtN7kweOO0om5wcroo451pQqt6U0azOoGN4pivcFmucxB9Ovnyyd6HCB2/Se
	 mFwUDIVKS2O/KChRqOwnUueA6jSPfGlR247oezTrcAWfGuxMHVihk5R1uUV0ME6jVr
	 L+SW0rwnLpQEgBBw3PhGKrK/T6tQFskeHtTSHm0Y03zfzWLj+Na5ll8C1p5kC6eMTl
	 1sf8LWFR3211Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BBDC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774083370.19098.14581177682747142359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b9fa37f618fdcc4d9fcf8af7d4d906d59fd81794c605523779d8e4080bacb4
Date: Wed, 26 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787740833
