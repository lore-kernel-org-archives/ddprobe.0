Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7631459FA
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778714434; cv=none; b=ZfCSjSaOinkHpQ2EFz5aJvIrlqW0AvT6Bfi4X6bIVa00bFAYuvRTwPxChPgWio+HWPQzWgc+B+CxJcHYB6awV7rFhvXyx+NP5H4GX+dqL27xfopBZ3La2agyHfAgk2BHAOmFwmQMnZpU0F3IIx/YsRvMtzYMy3w/Ce+9y+uyNd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778714434; c=relaxed/simple;
	bh=oi6L6SN85X42BaewHR7cyOa2JkNAtGU3ci41/868uiA=;
	h=To:Subject:From:Message-Id:Date; b=UKoCAPAkQXZmlwUwcCNnvmbyUE12GHRdFUgCs8zgrtYcxlNyDcx/ijBTra6uhdeR//q2JadrQnnsla0LCb+dE7UoIvzebwG/yfSHHymSuvafEbX9lr+eV9glfCvtG08yebNHn7lfGeyzaRHYT5ij+xDi6Fri4Lj/j8bKrBtg/to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cde4XM8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cde4XM8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CD3C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778714433;
	bh=oi6L6SN85X42BaewHR7cyOa2JkNAtGU3ci41/868uiA=;
	h=To:Subject:From:Date:From;
	b=cde4XM8XS4v8oqAR2FutCbNCFHZXQRu07BZShncr+rHSS4YrbfRzrXRLZmsw1h9yS
	 ikhFVMgWQXDB7ggCW/X+93gJ1MaVjX4ze2holkjwAAFV04bSzPI6NogOnNN8Tx+Jp2
	 87h2Z78ToCVWcpADUGguvhszwao0/HWFdN7r7m7Bfn6Vs3WatEg0Wp++mO7Nd/aOHl
	 DnVWLGUuAHS7nXI75LhYHGljp1m6NYZ8BeoP9awd3OlKCcZ0eu6dGl+I2T7wHto/wb
	 k94dL1ZMm+PPkymcic7PuAek5+X9mYjCux5m9lN8aTe+Uv8yvwdOjNYITekckbZ4Gi
	 qqvsy1ay/vwXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26C9CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871443372.27287.12113708452854654800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec93ad0368ac189685de316254b4dcdd1d65641680881f8dbb5bd54da97a36c
Date: Wed, 13 May 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778714433
