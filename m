Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394CB559300
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790707834; cv=none; b=NJdIlHb5UhWwKSCOGny+t5JR3NnSuCLE87Y84k6cR5Fm9g/o1akDmO2vMzNeLhKLhwWOx0E6+XmJJTH0knsx8z2TJ+5/h3yOLL9wJTzZS8aOxplp07GmXzTRZeG+Xl0CKEogtodqFOT4cZp6hU92CQbpGgHbDlHDlXQu2ME4wkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790707834; c=relaxed/simple;
	bh=lmfDcN8SNCKUwfWk/Wu8XtVCFJupifAYKM1qVOaQAkc=;
	h=To:Subject:From:Message-Id:Date; b=hNsKe5O76pyRPJZq8yj4LNxh+gj8RdA08yvrqKvxEf5Cd7H4MSVx4mjSKMl0Cp7521T7Ksvv1XKLvY9w/bABiDEiiuRFkXp18OK6wFNdav136WxXkZPcoSw+mZpkguJUZXqofdRlc7l461w/IZClUu9V6bnB34DPh/rMUg8htr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsrN/TGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsrN/TGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D284BC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790707833;
	bh=lmfDcN8SNCKUwfWk/Wu8XtVCFJupifAYKM1qVOaQAkc=;
	h=To:Subject:From:Date:From;
	b=NsrN/TGZBLYsnQLYdoLKyTf+rZco8sQWuEGOC7ery6MaxcRi2hy4f4VWd2TL9vliJ
	 P6NN2rvDelwnMbsq6zvIU2b33gYEdqf10eZ9FU5k/R2ZV7dCCzM+0qJUd47qafIXXl
	 SWuc4dR79Vugp7TXkjyJHGrYea5myDgLoXdH9FQ20Fg6Y4JQEivooCRTwQ4Nk88Pu3
	 SUr9kjv8ZH30cZVMsDw0p95m4xO6vWnuFmsir59L3bZyBULa55AsEuCGjx1pMxqYTw
	 PviT2eUi6Vv1FV3amWDU1Se4XQG6gbSrXGU4q7y/PHpEq5gxkdFBsVw6/pVSGL1Blw
	 ZxcjGYDUk1eLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED84CA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070783370.26008.16732298395337371278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d19fd94ddfa6dd2b06a958189c36097e4a16c83d5dfb89a70a93fd0ffdc7ca
Date: Tue, 29 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790707833
