Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BC913C685
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720651643; cv=none; b=fEMBVodY+Z/gbVziZAF8Wgnec7tJ24rqwPJkgYLf+A4t2XKW/e0G2eAyGQNmOE+ZTKFQR7o0EK2AGE7Gg7NLIofPfW1AQ+MLZs6ODlFPHhJyiyI+cXDBlCnaHtHbgWM1rf7NC2nHw3wRZLhrH8JFBzkqW/4xe22Jfd00vQwzQS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720651643; c=relaxed/simple;
	bh=Z5JRXdvjoK5f9FeSRMEKfwhN+sMjTjREJ72aNGZ2IYo=;
	h=To:Subject:From:Message-Id:Date; b=JPugJQGFRFm+OSS5dCPjkDnqeFrN5IYNf1TeaoOPZQsSDh2uVCJ8KuC0al0/HplcIrPpmxr6lTNVMrTr5xKqJob5H+FlgNq6eAFjMjhpoaKNQoEppUUC198HCFaHXm6MH3b9sLnmKfPP0xTNvoLW5PuQZxBRzfVm3scApagWQTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqQ2fGZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqQ2fGZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8E2C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720651642;
	bh=Z5JRXdvjoK5f9FeSRMEKfwhN+sMjTjREJ72aNGZ2IYo=;
	h=To:Subject:From:Date:From;
	b=GqQ2fGZ7M2TNd/166dM0ZPLAT5w/Omd0kUW2DQBXjrRhiM0it+sC5pa550UmQ8tiu
	 TXbv7zU8CWM0jifUEfpHENcDOoslh/PyJ+VCoGMtlwiK/RMANdbPYyl4LFXdZK3B33
	 SY4V8KoE2h5OVqsy7xuCCchDD7VyssEwip/jrL4Cs3w+vg3sqU0DEU6RTVBWz3oj2C
	 4B666b/7JwW+HWK7dH1doYkP5GXspXwiDqfQE/VPrtQuPatI/4uyOANuYLZwUXxout
	 H0qEB1I1HnyR0CTaeHLBvoYS8w7nIbiXRx8g1cTwqK5PGeZ/pqN4GUlt24E6Uo0aqV
	 320T8U//mMdDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E7CC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065164276.15404.7904914609423737623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ae0354bdfde82c0e90f86fcb41832664d8c61ece2400b823fb1f187ee9fd657
Date: Wed, 10 Jul 2024 22:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720651642
