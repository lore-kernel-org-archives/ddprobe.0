Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEBC347B4
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731215754; cv=none; b=L5UqqKzMFfcHKm/X6hKJ2tgeKM2neQClGslS82Fj+seXCCZRBuQKQbzEA80uH3sWeuhxPibKO+mkQ6tQhzG2zt8fJjYn1ry5rdwUK9gJswcZuMJ5UHCYlE5auLEP/KXld03jF54mgjbflaKJR8DKZArxnd+gFzsjgRnluQKA/zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731215754; c=relaxed/simple;
	bh=UWotZzsyTbmOPwim4vA3YRjC5U5ksHHziia06N9hA4g=;
	h=To:Subject:From:Message-Id:Date; b=nzLn0gTRwflhZ8JRqhYVh2PIUqlnWOe7o0mC5SDfR/3EJ/67wguf9Vy+ZXBX54ntShELdmTbct7AEZxa1O9GOkuDsA1gylgTcHYPc+NRM7YNhHbLjjS636ULKokMbrjjqp3uIWmvIY3jl0gtxoZSYcNbiIrePLxYZh9Nh/ejmdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXNg3H5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXNg3H5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84D8C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731215753;
	bh=UWotZzsyTbmOPwim4vA3YRjC5U5ksHHziia06N9hA4g=;
	h=To:Subject:From:Date:From;
	b=cXNg3H5dijRAIm0Iol/61GNMtJFmCD8JXXsto2dlRm7YjrUnJjJof++lVYn3i47xH
	 kyn4xOg+iYQwfKfsNr47qSv6bLwBp16InUaA7LTmSTChcLbNS/9TqAuNXDA47cS/mI
	 8eitq4N6HWduUjdT/K42NLHI1bpqWseTm0ZAH2vMICH9/Wd+6ULJvynih8wa7NCNq7
	 t04X7fSjW2NX0WkR2lYGoRIv7o8WTUZS7DPSlVfHVfR//bnPsCcHJFig7NzjEpqP9r
	 5CjikiUQRW4mBeitelCTNo5ftui2p6bw67w2S4kKHJj2fOElx/wpCgfc8aNYJwPXMK
	 COx/ArtqZ3e7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92548D5E39C
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173121575359.19538.9026741672590822193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d17a255bcc476de75aced98a36b994a2e1bd7135fa052fe58c87d72e833886b
Date: Sun, 10 Nov 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731215753
