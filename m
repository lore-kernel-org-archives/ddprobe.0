Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B09175A84
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784399314; cv=none; b=uWcD8MzRELRZJntuvqAxJlPw7Ebmoy9dTz/OExIgRnmTtC/Ic0f4yYrEiOZAaAUk10UhZJ0BjciaxJpQD7IOkNa7TSv3hSidQYRAy1N0THOH3n38BN8DKk8dgzcmdMyHnccS1m4MyTDGig64hDpdxZ106OeBJTRVCoFdNCb9J8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784399314; c=relaxed/simple;
	bh=txJhBQAf/I/b7R4kNvfhuCVGTe/uRWxYmDnyDUDewXg=;
	h=To:Subject:From:Message-Id:Date; b=eF15skkCU+hvQrr0ak69X82fwvMkxqft0CaC8hJkbnobYVt9OfD+mfwv1g1ObslrKB436GcwsCMjgES/QjlmQT00kXAbYsaK2jyWpIAInw0cNGyu4nmndCZCtNyYMAC92WFYKKPO2sUlOyFhAuUmHVU8Z3Q3HcbNeiLgkJKEY6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7iWh6fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7iWh6fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB232C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784399313;
	bh=txJhBQAf/I/b7R4kNvfhuCVGTe/uRWxYmDnyDUDewXg=;
	h=To:Subject:From:Date:From;
	b=u7iWh6fyoEOX5G3YnudRQvfpsCiswHuonBnALivzbgOPDGoHbZGmhA5jTAzsPwTLd
	 bpdoFlRhktoKgxjOQHzS8fWapKe5y/EkANfxKIejgWtewxlMw+leJhCnQ8hNx6Noht
	 yE84Eg38jR4vNTA4YvnnAZVqUygDvlmkN1DHDy+5+2j2QTl9guZXb/5ee5C/Kcheo3
	 APl++BZm/sI/f0Z1GJaPhIOdARiBY6Bp0MmCFzZ74MauvKQY8Kvhf0KzAQ9+GVrdVH
	 B+wtTsOxYVEt83a4OTaKEOvuUdtvSpCMgjbgApgp4X57g7am7BJwq/0vvfw9ctAszj
	 Q6ZvRATU4rBmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC837C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439931368.30128.13288309388103544383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e2a931940c07d6b372090939c648ed0e85ec4a59cd2353df05c33a8decb914
Date: Sat, 18 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784399313
