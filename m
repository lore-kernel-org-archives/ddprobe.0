Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEFE2248A4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752489595; cv=none; b=b8iHV6SsEHZ1Yvn6xTI3g82eX8BA8yM0Iz2+brw7ZAExlek14T4+VRuX17CpfTLLWINLIvCRhUWQX7RqlEydBLFtfOtrE/4qJq0WS08pnlzEkC7j3QDtRjXr/iz9RXt+yxqV0ikc2g21BSTBCER/pUMtQj6HEJbmQzMnX/znDZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752489595; c=relaxed/simple;
	bh=Y1wSXgThThKkiZ0LPznAYVV8PiE/Go/OUCZEux4cnh4=;
	h=To:Subject:From:Message-Id:Date; b=urbuDnRxKwFYbP0Ctp9TjCkpDY3nYn3Sj7Pb/JLW0o+aox9LU9HR+n3Y/zMtmlZb8D4Cu9ZqMnJje72lPbdMSgGi1eVdSEXiTJ6LKKxJLjlsebBGXSjsKmyFeqbwPjmUtpMTc+qt8TCGR0fVKyEC7933v3bj+S/1VKWFQ57ekls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8JdXSkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8JdXSkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A9CC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752489593;
	bh=Y1wSXgThThKkiZ0LPznAYVV8PiE/Go/OUCZEux4cnh4=;
	h=To:Subject:From:Date:From;
	b=X8JdXSkVOgkQCehpTjf2Gt6cSwD0aoAyoi8DuPfacrVKmKHba2Z7qwGmm+hyvl6wm
	 rMk+02OErkhyBD4FFYnNHCOaAzFOq3/nM42PiHsdDXGm4yAjXzfMACXySTsh4rLUY2
	 HrO9MolpFS0XhVAjWIAofFSetd15KVSGnAmQpLr/Z+yLKhHQHlSTYYC5kLUwx8FECV
	 iBDzxANmFYL8qUCz+eZjtXuUShtWD2KffUv94ogYNmtqjjLoThDOk8aMgZym2QLe8I
	 iwre/9E2wG9QJF2Rq1atnOXfx9V6ViU/pUAKv1oMRqROfvCXDLd9bc4lrOt/DCwZYv
	 hd3Db2JGGyvEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91004C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248959357.26656.9498664705063757953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a32b59de3367487bade6bb9a1fb48a09adb0cbf6ff21193a352b13e2ac621f8
Date: Mon, 14 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752489593
