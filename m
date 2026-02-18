Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C8E31770E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771403094; cv=none; b=BbnyUfCPgVj8bjfxYPzlWyIEDL13YACj3AMDFdTeYZ4GOLnMqlmJghxWuiTupfQHIVqWsy3YOFNx9YOXBEJtHEV3FxD8AXGwt5Aw6Qa0ga3ibXF9g8qIrXYmnNDkYFMSBFJ9aBI98SXZngagHZS03c71nkiuIfUetVZcxv2xSbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771403094; c=relaxed/simple;
	bh=ia32/9SsZtsSEu2pQ+TJgcq6cDAj8plXc80q8NLzhXQ=;
	h=To:Subject:From:Message-Id:Date; b=FmnqhJVC/ViMharbS4S/0c2TfMVEOwDnV4WtkHt6Py1xwTdw4K5btRFBxt3hS4GYL/aE53a/YKsqRKkh6+TVRq50BuG18a5jooXqdOKj+Lk2PCdRUysF55Xlk2x53EuT2x8IGFQlCbzyUzDLDW3vLjYvMfSf3lcaoNgvtLpgdYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuVWv6Uz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuVWv6Uz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8548C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771403093;
	bh=ia32/9SsZtsSEu2pQ+TJgcq6cDAj8plXc80q8NLzhXQ=;
	h=To:Subject:From:Date:From;
	b=GuVWv6UzVax3/lMbgmI6kgauQHZRi/tnuDCQ8GSbRKgcPU2I/gHb0JFDbhMLkct+7
	 BQSo8XrV/ELg4zdSnFXeVCyOtU40xPbG9NFD+9C3yXDDAelQgXRGqhmua7SSkqI68u
	 U4zhCUJM7Y/UstMGbZLzQW4UkJO3rZJKWNTxUfCtmN+Ml8aHrmeaacLnAjOsziXg6W
	 mLO0m5TbBZ4of0uDkyp23tWkaVNapDg5Udngotbpap5b0ueL1xZS23VpLrYcEHJnY+
	 1KJdlNcCiLR/TX85k4ujSCJmAWjEov3sc04Y1chEicSN3KCBpdidOcVtdrJ7g9Vtnc
	 ycSuZo2p+1Efw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957EBE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140309360.11369.17838376848008155823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa452f91870d480a7bc79032083703ea148071cfc516df5029a8deddf1e4a79
Date: Wed, 18 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771403093
