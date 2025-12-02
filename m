Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1843D1E7C03
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764673974; cv=none; b=nGnWsD6v9A/le2KHdzSv9HWdF8oLYaMgUaTb3Qz66JXN1sgJ9cPMa8IGpBOwNjUMG5BayftAShy7Rd7plupSSLk5Y7VQ5FGbK1z3mHV8AXvakS/IHFsMy3KT/GzqPYfnn6f1A3T0XAyZYz6WwwEht/8mWOYL6xSvwPkdYG9dDGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764673974; c=relaxed/simple;
	bh=woWexagfOXaHlkICgqvTTCskPbENo868O9ydieq5qys=;
	h=To:Subject:From:Message-Id:Date; b=UnCceQu4hlozKH/s+cLSoFyXqEkF9ecGpMHZaTvHEVyLA9T9o7/pH9S/+/BzEHAM/830bat8dMtANh58pVEDb+ErYAOgdj83C9hQyPVOVaobwt2TFBp9rL87WmQ2j8wI1C1os1/RdpWlHhDEjONIfjl8Aq09bfkBt/5hSwoat9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIa/CGTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIa/CGTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3148C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764673973;
	bh=woWexagfOXaHlkICgqvTTCskPbENo868O9ydieq5qys=;
	h=To:Subject:From:Date:From;
	b=CIa/CGTcv0Ak5nzqfQ+nbzyVdB69V4M/jkJanv37HGONg6b2pxmm0VnTOeZ+xezPP
	 0T/1Dy669mzep3+cyImt492PlVa+ITH19NRNrRsiCGORqUInX9MhsWb8/Z6qmqinFP
	 HEtX/wy3NfBPnC67vWe4O0AsRGDSDL+K0snp3nFp6wY1VSUqLR1dppGRMQZdsR3nl9
	 GUJGAez8yrns8cNCyMEQkqUuMtVK59a6d+yNOFUpXdS28VteTeN30jsqyvwKPhRpLR
	 Tb3Dg4er3x0eYukhVVJvhmGOjLbPRV0UX9ZwBNSZ9WEdIyW1WPNVL5ruKiNPNCdQdS
	 ILf2Y6bR83RQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F73CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467397358.17912.477850253595452649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee5225c52e7ee49e99e0f6038f8ff33dea2e1e36beffc51a5693c4d57095c96
Date: Tue, 02 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764673973
