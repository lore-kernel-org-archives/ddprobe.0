Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C531C8604
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774758894; cv=none; b=S2Lu85+Y+guqbbj/teTTThlratk0iVnfnRi0zXU17DaB6kuXwd7ocn7PZ+Tth8LWVPnBnM1GSmaj/8S3CZ7BI86q/R3ETk0HF8jh690jDA9ReEaTORwfZ957F7+n/XRdlqLIGW9FMgQhf66Mu3XLXjUihiSoXyd3RfmITunjVkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774758894; c=relaxed/simple;
	bh=q6ZYlw+zlL165FTKo8/X70zqZuv4GAk2EMnTy1eSxLg=;
	h=To:Subject:From:Message-Id:Date; b=CG0TGYYHGiuhACI5o6z2i5LHpzQT8m1ITgVhqpHghSt072u4Azt9iqqkyABH1LtPBPx6AloH2tx1QR31OPYrshkF5/n8z+k/fc2wZ01grJBj3CEK7Yf6Jyfa7O9xvs+4N/ELlDi3o6NzClmxhX4pLXmPkHsQD9IZynoD81BRHLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSfablPz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSfablPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC71C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774758893;
	bh=q6ZYlw+zlL165FTKo8/X70zqZuv4GAk2EMnTy1eSxLg=;
	h=To:Subject:From:Date:From;
	b=DSfablPze7QMKhNHAdVAtXqb4Cr9N/5swVPl9mfcPvFOCoVypQpPGK0bijeqjLBUs
	 q1pVTvm3dbWIcsQxhIdKYJQtph4p51SBaDWjkrWNnoHPKhN7441L+uT+NSH9zhwFN5
	 P62uVD/lF0F4sI3r0CGyTwtz5f1Af42m3hwEvp1x+CbXNk93zVTCnLf5inDjWnKREx
	 QqJkOZA2dI04m8+X3CqHsPw2k7OhkwQn1EMIzX2Kx1QelmMkcHdq4W0QNKg7UJ1neD
	 G00uViU5nTq49J8zR1L0jkVgKdag1JYqhZB8MYlVpekk0l8Gn9+mhEqxBahuQCnF7W
	 v03+aePFkrj7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9906DF3D5EA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475889358.8218.5314228079725704289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e116d141bf6881f94ac4e4ea733f7cc483bcefe0406a943c2cfb860877f5d7e
Date: Sun, 29 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774758893
