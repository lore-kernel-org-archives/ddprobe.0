Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63660341AD6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784701114; cv=none; b=nwtXj8QV1qtPlUwOa5aXI0ybTRTUrh3XS3r1bIdc1lwRAL770E62SU7TlSj5WCioEoekFpJWbjjm2cCDfHVbC+ubs8IROqCL4mqCho8oVhfjPJ7jJCfK5JXJfd6aOWO1dCSH1xYKbRTd3DYDU9mTpvTHvfeIQkg3VW6fTsDdXZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784701114; c=relaxed/simple;
	bh=/0S7vb7p8Q/06QkwDQScRR/xfwBOcDHXM3pelWRJyNo=;
	h=To:Subject:From:Message-Id:Date; b=qHIoVFJXHs7v8JJdglwbGsFpM0CpuOW80gMJS6QsJj7B6PzEX6SgQ31fHGl62kk/arR7KTTBCda6ODoHXstI82tuZCa12upAtzkBVmG7iZrMASwyerSdPdPWBfBGMLCtGd7BTW+Mw4XNKlwYXf/Zg6pJuNlAEpPRZ0vjnaUCG9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvnlq+lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvnlq+lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F14C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784701113;
	bh=/0S7vb7p8Q/06QkwDQScRR/xfwBOcDHXM3pelWRJyNo=;
	h=To:Subject:From:Date:From;
	b=dvnlq+lkKfK5p7nz+V3qleHnlD6qdWEtPGtBVtyjl/KMseg1OLsBisalrz4i5hLtq
	 97R87OmIINkTpTYbr2e4bX9855aXkNaZBcRFe6DUFg1NInWRBktPv5gwPMYH+GNjcx
	 4pP9bJR2PMAXbr/tFPLpGYwFAG6b3bdWH87WurB3cfhaIWP9OevH2VtuBlUBAdVG2l
	 pZzmmoWOgkYdtNuuIoCo9r1z0m6C9nQ2Zh5rodngnXVMebtDF3Ktir53+UVddz30FD
	 XmqQNxXMUQm3ZjBj+Ak0/H/IMCiJYqd1Mx8BGaYPg/4hfoDjAOGV9IrvqtZHESnWLH
	 HTSy0qyaHoRKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CCFC4451C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470111371.6910.1590548398330919836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb42fc5b58c296f84fc3e2292c3d646560a57a4656a074819392ce25a952136
Date: Wed, 22 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784701113
