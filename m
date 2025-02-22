Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7AABA53
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 04:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740198535; cv=none; b=ea5UiIeK+fLG1Tvc9/Bnx7NGrK2EKUU5+P1RZbfrCpmNAQREhI/jCHJsNy9InpKDuV6p9lJlcCUSAvYyX7zq0pjyx6bPmHGrBAxwCB31mqDMTVc2VHod6zoSLRr0Z5CBWcIQ6xrfKt5REajFLqgH9KXwWH+cCZMMpWjAhAwdiok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740198535; c=relaxed/simple;
	bh=vlgAa2GhbMdp1DfUte7cGTKSq/OBbOGmUNE71tmKK4A=;
	h=To:Subject:From:Message-Id:Date; b=raBCK/iut11K33drZmzTDoU6k/BUPkwMDgZwU2EF+DqEbF0td3VqC89zDjooZvwCd5+OyZxd+aGglQI2qa/19DKENK4rCyoJk6rNRT649TLVAv11aZNKRJN0Ws5LhgqF4Rpvr0Io38UsyhkxB4xDJu/HTk+OLOT/hmUUJNRqtc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yv89gcH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yv89gcH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1016C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 04:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740198533;
	bh=vlgAa2GhbMdp1DfUte7cGTKSq/OBbOGmUNE71tmKK4A=;
	h=To:Subject:From:Date:From;
	b=Yv89gcH0CqqMn5PQ52BNfQIr3KFripjZqbBexP6posDRcGw7+1FF/lxf4idIArlAC
	 aZzYCggCsswONabFI0pm3IsXu/Jd4F4Oty2sL4gGOnup3D7C4EKYJPwuL7Ky0RdTzL
	 Qz2B5l+/7plQsrFqyHjkHnM5ERsy1Q3SpaKrclURss7u8lr3mEOkegruPyrr3xUHCw
	 9epZwesKTqErnUZ/+I3VToV61DI0fnYEw+m00WUDEPDIoyvIP026mhduuJouh+valC
	 WplIMzLoqs/kAO1XzdodR8pHgEfsVpm69MiaBJH9zSaPMUzuhn3rlncapU4YHyNAlc
	 fSpHA/znYCF9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A57C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 04:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174019853358.19753.6454028713378889782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccaf3358475a01b5e9a4c0028ee2b0833695aef9938a64d8f394276740d9f748
Date: Sat, 22 Feb 2025 04:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740198533
