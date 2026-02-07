Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274E833B6F0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770491634; cv=none; b=A4dvOqoKM42a4p0DN4NVx6iA9aDPFJQ4hWVVDMMtj4bkZ8M1B9fcdszD5CpdMn0rzS3jf1eZVkpNjiw4HOqHToUDUXKneZ890DjEs1FDWyi4brt3MXPF5MSbJ/M/m/fQp9008NhyblcaGvDF+xWaqcRJhFGk4WD6NyEeisDgASg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770491634; c=relaxed/simple;
	bh=NLmfKLSAu57PKzUjmTb8b1OKFHlRIrFwtsboja2EtAI=;
	h=To:Subject:From:Message-Id:Date; b=dg5I1ahYflq5d8/ezmEZbjMYhM/dZXFWRI3gxvWtrfQAdVn+Kjt8YSvan3Sma4McCKcpNAG0r1DQS/iBqWlPLF7sNJ7kukqIQ2zqSBB0MkeDvGC9khoMddoaMsBdRfJE2ebq1f0iZqQLEe1DlkfvUrRw0cs3uLIO/LNOBiu3a/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVh0HMkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVh0HMkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4C5C19423
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770491633;
	bh=NLmfKLSAu57PKzUjmTb8b1OKFHlRIrFwtsboja2EtAI=;
	h=To:Subject:From:Date:From;
	b=TVh0HMkP4GP9Od/b2A6NZ3r1EM+u/AHa2EKQri1YVjew1o4cytFrGeTTL87Tho0or
	 pD4afqcPm4ZM2kbHliLT0crbZvAQ2NjJn4Im4oFFX9mfXlVbzL8Zea9K3GY/wAyoVO
	 4x78WNaOfW/lVOFzXjrcvINjQF648/e8+wLrvlm4148SQ8PMQh1Y/NqFOg2fpCsjdX
	 taM9sdh4o7d+4DYkO6n7/uTpCcXb6JSwX9wKVUqc+s8K0lXD772aCMVfJTVFBYCU5O
	 rLP8NjiWgCWn9fFk+ofVtY1b0A8+y21mi6/Wan5CkjpHyymW1+Bm1XJxqCpe/HqQy3
	 QNqV991LfC14Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943AFEE0AF3
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049163358.24345.16099010628612788719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11350008d8e20052d60f51484df676275d8266f9c022265ea4eaa2e97e415e4f
Date: Sat, 07 Feb 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770491633
