Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE1639FD9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782634714; cv=none; b=eIUNgLeb/a617uqnuOfNStWJs6NZrCjJfKrEPXu3+OArIYT7l1oLz+lEAj32l9/bPIWwOD/qDlXpFWETeocen696X/Mz/wFWuToKqThKqB9+n6DFfue6EdieWSoZsK9cw+Pmdk60ifvB4tP/QYRhmPfZG++UQuoPfRsLM81QKEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782634714; c=relaxed/simple;
	bh=kDSE1xzU8qrh6yvlxdNDjaVnfGhTrgPVc6LchKZI2n8=;
	h=To:Subject:From:Message-Id:Date; b=ArJgKyN0SUqx0UYiW/tAhSNvljPZZHF19WtS/KFeJb6VRcrCOxGaoo8kaPdeKnML89a7NfY+q5YXI78XoCl4q/s90ZfHNkBmFpw22P1Aey2FYtipppiV4S4tt+g9Ai97nXO03kp2PR7/aOKXgaURF8ZkJMKeSyobBJTTny/LLUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxhsBrA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxhsBrA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5D5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782634713;
	bh=kDSE1xzU8qrh6yvlxdNDjaVnfGhTrgPVc6LchKZI2n8=;
	h=To:Subject:From:Date:From;
	b=mxhsBrA1xjt6lf02tmY4nyNvpjzszGNZnvU3pUx9NSe5ULX7VSpjdralzFGsvyc3v
	 l2ZzBtfpAFoUguRxnWO+PLp5YZjzaAUtwvqyqaSr5jpJ2eazioxN2fuX/CeF3ADSFE
	 J13EJIuVVVd9P7Oh/KSUdFkjRrXNIIHNGOplFvM6UVJKfRqrXnAZ0UzQ4YMfsgkLuM
	 GzMI32aPwLAdhJt56TA4tRiOcUEgest2DoAiwnAUB/jrwLUQ0i6nIz8DySR10zF0JG
	 RWtGUdUkpqMnVN+dHWa5dSLrCEH0fKZfOpKsS91issV0unXvJpnPQfiQceio4eg6lY
	 XQnb51JKbW5aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04F2C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263471371.20710.6611953176669956652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1afcad71dd1fc57e1509cbe4076c24f7b0047a38be32089787184f39ba497e78
Date: Sun, 28 Jun 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782634713
