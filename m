Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5668A3A267
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720488383; cv=none; b=gictMNL1cBym6/eK0ny8eBCW0gnlfINwgKbGMR3NXvz//dxNG11T6wWE9Eq8/Y8gmeeXqiADGQgigordHbN44yprMfWx3U0+NCTTgqOVgxEkRQafjiyk4OZc1uQik0lDqALzHh4PxOJxj3sHUpjCaX2X9rI1Uf0qi86k6WTc7kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720488383; c=relaxed/simple;
	bh=HkL17jyxavQbgJrjMReJ29UcZyQZyslalQ3ngiATTN8=;
	h=To:Subject:From:Message-Id:Date; b=l7njl+L5MjPiKCidU81Nx+cushTVQNnl7WIHX4baxuRa2Gfxi+Cg3J2OAPLCekP1ZF9a3Q9PMQFknCRI/HRpGEpfk3yP7BPRrM2oZleMq9reDLmQqPPq8iLZhiEonk9Zef5rKJ8Kocyt9XH9hE1v40HByI34TPVsH6iQ+eaXj6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=leCj8Qc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="leCj8Qc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A54C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720488382;
	bh=HkL17jyxavQbgJrjMReJ29UcZyQZyslalQ3ngiATTN8=;
	h=To:Subject:From:Date:From;
	b=leCj8Qc8RYCngmHyExoNUCYeqY+4h8zNstDeE6oXfDDzF6dGFUI+TyaUeHdDTAjcq
	 i8guVp+YCkbM775aSj5CPZFuOHoQtMciZtDJBAYjjnav1QkfjJivMM3F8tlFNYGCyo
	 uVEu/ubYnMJ/TkEEo0Su3IzqXvEPGJXnv1xyETW97SJ/92MHxRtDxXJB2A+cKsLnQV
	 3rJ5mNudV8ciNSKKfaREUNFUAq0OIOzBH3kTKxw4HVOx4r/Y5r3XT0KJX6/C4XN1ha
	 Jmi4kFVNsTvB2HcLErsEYcIZfcq0ViObm2Ju+JHw9uF/7gKQQgp9AAo4YA91U3m3r0
	 +ZX748iqh2z0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93FFC3DA45
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048838278.14555.1549280977550179227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf83d3e4a7731139c89e6c3bede2e5252ef985112424542bd17fd40b17ac55e6
Date: Tue, 09 Jul 2024 01:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720488382
