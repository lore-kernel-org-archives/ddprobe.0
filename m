Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D7247ECE1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781710594; cv=none; b=jyId5Ga13gUATgXRzkg9XfEezWrAFjsf2LWvckVUC40a/8paz87Le/53NkVJuqwO+3VQ3fxJj8JCSZfw1maekPaGZJpwsXU17b3RgRI1731LfKAUEb0qy3b6Foh7uW0uEFsEh3aqkl5qqNWrq7i1QUAgqckeXZMRbux4JqWAiRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781710594; c=relaxed/simple;
	bh=1jkdIS/hptMSKo5aVBE43MVKNp+yjRQorRbVIC1UZTQ=;
	h=To:Subject:From:Message-Id:Date; b=uR1rkdsXToiEQmH1AIKzGReBrkoASD2AmiJezr1Nw/sYwfiVML3sh7t20OKioqXljJ0zqprm/9iKH1Kr2TwZco14lxXdvdjPb4EwODn0NmSmSzW6UcQnwoiD/zte6X/6dA5kfQRag91ocUkuFNT2mRIF/aIYva1YnRP3L0Ve7+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W57k+fpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W57k+fpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDFAC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781710593;
	bh=1jkdIS/hptMSKo5aVBE43MVKNp+yjRQorRbVIC1UZTQ=;
	h=To:Subject:From:Date:From;
	b=W57k+fpu0Rc+bcR+MFmizx4jHw9DT8m73yn7/CC6fZkEcDkylNpNtqNCIO0dTbSFw
	 kWiIbQiGTZdSrSykmSr5XtT4qWzrdRTp1YXffXZkUgtIkvwIFDrk6TNgdw81+NicML
	 7l6HDxIA4klHWjo/dLoecoKpSCe3hmbZaQShomLKu936rho7Ay5sw8GCch0AyN5+pl
	 RSwk4dcHQqKW8vApDVMphKH89EmL/6WhdfTDONEznD4gGW5KgAfWKX9kDPLQbXUORZ
	 tKugNSHYZdPDh8qYjJtLuWMSgBCWKhEOcJWbNBBrHbnNAcmVdbg8TPvSez51pJBhWt
	 Y5/qFBaqiSsDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E89CD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171059368.12718.1480787845836200460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a805b1e419bf2c1b6fa074c9ae3147ed9ff8ce9e5e72853dee0bfbb07e0af2bf
Date: Wed, 17 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781710593
