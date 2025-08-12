Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DEE2DE6EE
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754963994; cv=none; b=WTqerPEjJHegX9GU+/7SZKJxE7pPrfVmmjMyTdNX40J1TBSvMG+lJD611Ikmud7Sjzr9+0AycO/bTHbqbYthK5Ki/iymZ9kjIoJpwkFvWSW2aNOYQnmqFaxb9EvgLv/+DGPreLSzy1rC3nKfwkV35z1UmpxPLiQUOkp6V/uQ4GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754963994; c=relaxed/simple;
	bh=xCPFrW6SyZvESFHY2q2FkBxwPII+VFG3m1i87un32CA=;
	h=To:Subject:From:Message-Id:Date; b=cnJj86p62CHYxFRF1/C8P3A/9Y4PW6n0AEXHn8laowOaRT5/k0CUYTcD0f8mWYSwcj5u27ax302jWmdVPPoC0M0PQIc+eaMhdrgCL63WR8iBkJIx2JNzIEt94cp+8xPNN/QzzBBZXsKVGjTK2wyBkUSOQWqVcII+b7X3JW4JW94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAiohqc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAiohqc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B13C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754963993;
	bh=xCPFrW6SyZvESFHY2q2FkBxwPII+VFG3m1i87un32CA=;
	h=To:Subject:From:Date:From;
	b=bAiohqc2MvSmE7gZ2b9mPtjwB34JrFgwprjHmWTryLLKdXuEEz6smMpl/vG1c1Wlc
	 taLoeyS5hYJuX/IeFJ5IzHBtB0tHrJf1EUwdbkyQssynaiHOZBCXoCW3YgabRNS8zw
	 t8d/e4aId8oAgaf8MoOihWXBYAVJaKF87A+03kQQJwosNbFZc1DuT2n/9zR+BK/X6g
	 SEMivMWIpXG+odhpZeJ7KvFVWeLQs9Zdy50Mlwp6WiyW+7ufInoIg5smjBgXQaYmEY
	 jTPU5oiysR+cAPeDQaPVoV7SMMmQBrUuOupPh8VDlh5SANTUIdQCHn59Sq1+zkJwpv
	 9gNu4ewUuUFiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E50BCA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496399357.24616.112954849187059964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d1fbb3fed5f2416995873fa72a88f91327a95992c33c682d37dad792b22bbc
Date: Tue, 12 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754963993
