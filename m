Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A116266B64
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753711194; cv=none; b=HpnrcD/n3LeufcB80nJj1pSO1MQARTcPwjhxyAypJv6T2efAHEk9NpsGyh+5iwY8FC6D7mC/jLbJh1B4Q7X1DB9eKUI1lKpsV0/Jx8aGIfW5JskD8BmaIc32ueOAtWO8sKDsBu4dabGSSP2g5I1fXjqg0oHvx20dXsZpFbUQSc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753711194; c=relaxed/simple;
	bh=sKXXu7G3mej3GDbWAbcGvpZ4Bjv/6i2auIa3Qt2t04E=;
	h=To:Subject:From:Message-Id:Date; b=I45syKaJNqy12YJpUH7mJgG7s6rZk3apIWTq5fLckKe0Mj6cEsXQZ1iItw9ZMZW0exD9k+NXEwdJL2iDnLYKOz4ZvTE43PySF+Eka16hyDToyCge61bIJNOSjJHxsNXvYHtGizG3iFmwP1ZVHc52ohXta4lG/wMoDPRURtC0Ze0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sC5VHCot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sC5VHCot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B65C4AF4D
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753711193;
	bh=sKXXu7G3mej3GDbWAbcGvpZ4Bjv/6i2auIa3Qt2t04E=;
	h=To:Subject:From:Date:From;
	b=sC5VHCothQTzzitlFn75xv8+KAKmIYpGBMHdCarwmYa6c0/nIQVQkxLL03YNP/wht
	 Z2J2Oiad6rSVFUOT8OnYqc+PkyM2YRTtYswY8X1R/dS8PhoEJ5kdulL9xUKdbx8741
	 RM04+EffhgigK8KoHDhmAs8vceCngMf1i3fpSe9NB1ySL6wK1UaOUgV86/FirjhIrP
	 eu8qbqZOpuQSXIBmueugaPZVDcqwoLKbmZh/SjkLAakJ/pl+CqGbtAAKYiSO7L/Z93
	 dhw0BUiDGMkqaDGp9Ur182ZuMJIZSo27mKzH5YXNTF8G44XlDD/Za8sPr1lnYPlF7s
	 lcR+qO3Eq+P7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9388CC87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371119358.20575.15031389068543090556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9e9f359d973c42988049abc08e5f6ff616a88b1ddba9f09b88be5020f973d6
Date: Mon, 28 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753711193
