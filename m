Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78785CA45
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782950914; cv=none; b=isxyseEmXz0s72CPyBhtsXR9l4DDg96isBcyAN6VfuhB50N56lTKpS1fXD8KlN6txaREHWYk+zqXmCOnVW3oUP7APoHNEbkNyyurA6AnMdFc+ETamZ3TEqHKFt9HtD0eygHmHmrkzISRVRWCVpAT2tk621uwBNDgErkBTDD9aoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782950914; c=relaxed/simple;
	bh=frhHbS13yj0qeh7qjBW+Zxtvh+aHxFMz6fYZZdG77IU=;
	h=To:Subject:From:Message-Id:Date; b=SvyA1ABmN7c/ncVWB3tLGiLA6gIz2eblJp++tAn+sDR9Wq9Nv+Z71ba4ZI7CASNN7gZBpeAiWvsMN4Lcqr8bJBLryDJrCYMKK1EpnqM/f+xBloqQDE0KwQu4VTQjiMZ+K/DHrDcLlJnXAVUpzOn4tdW8UOqkfukoOZLIF+HKGe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKvYCVXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKvYCVXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C314CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782950913;
	bh=frhHbS13yj0qeh7qjBW+Zxtvh+aHxFMz6fYZZdG77IU=;
	h=To:Subject:From:Date:From;
	b=pKvYCVXLjzZJ8ErkO26zFXn4dJzrZWI52QErdRi+hgBZjGEAJ4EPboW8pA8ns5VR8
	 GxZaVRUcbeojK790ZEdaYDfqmvDWhbUe9IHm2QC2m/sB0WQkuh5iZV2HgREXHVZNJx
	 8qr8gzGL6E9wJ2x2SDKmbqH7z3akdTQwtvhgFmPRe5/agHdULu1YsI9x5jBASltKZj
	 +yrQx0FxZ7UB/lBrod9mBF2DiZqA+EHgnHB82cAvKOWAll6OG7g6NgKocbc5anrWgE
	 vlEKeQuephPd9VCCHVtXdQ2Ppm1iNkyuukY3IlhrT3xu92icoLF3+9KQzNaSUCkI7Y
	 XQP7fKBfevBzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A910AC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295091368.9571.1225845057043020600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87705b162ff03b287fcd2e9c70d887df1a70dd3eff5a24ebf67c24470ee732c
Date: Thu, 02 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782950913
