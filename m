Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA112E06E4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787667034; cv=none; b=RY69jZ5iwC4/BSECA7l1VfFPqLsUPSNWNBBOc8pzB0LqWjQ9M1od0KuDm9HYbWpmgL5FAceDwiRX3vUKGC9EBePDWzaD3ZLRAAo3KnHpqmJMoefOnNssh9vlTxwk68YhAKPFf8uVGauney4cDrUyVPGYgXf0jxSEyFbWg5BVdGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787667034; c=relaxed/simple;
	bh=ZVpVfbQwT1TVBaK/NBwk4KKZ3Ep0XfvtYTkmDz2v/fQ=;
	h=To:Subject:From:Message-Id:Date; b=djEf5Ns4W6kG8v7YWdeqs6qLQJvOQjb1RAhosxi/DSVwGUq4LIAWs3KEv/hnnkSywA06S2ArRhSXFfoY0zQf2rtjzbTSAjR+HkXIMM+IASH1BmWBSgavUOpS/HY+ilHYYNGnSQUf3uyNapFkr9DHrGqEnuijPfkqrQNNR0ykJR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uyafzvcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uyafzvcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00ABC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787667033;
	bh=ZVpVfbQwT1TVBaK/NBwk4KKZ3Ep0XfvtYTkmDz2v/fQ=;
	h=To:Subject:From:Date:From;
	b=Uyafzvcf/No0fwdgoXDz2mPWoHIvrv7mbj0gad0X6++X9SlhsedEzxl+ZHZ8mHdom
	 lnDVTVsok7QVNu47rcXisTHTke+3J4KgJD35n31TATRbn1SdfZbkXjlc0g/uYTQYIY
	 Tak1t8r4cx2tP9WQDtPcp/5RFH0r4MK040F7Hq0N1QFqLxz1yFMcfAMIriBfAu3rMt
	 yq2jZTmTLxiOuBYGDtwdhJoslkGOGohckbHzCwDP+HM95Rb7b09m7G0DsLMemC5OMZ
	 dsp7NKg/UQ6NwcvHVSPaKuTedUFb60nsbYa5lVPzqSlcT0p4OS3IE00o/nYu5u3WIq
	 UxiutRdHwdYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2DDC61DC2
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766703369.5970.15883723071635233475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd7c5559fccf144aac1d18856402094523bf76cb23d44fd0d3f06d7fab234f4
Date: Tue, 25 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787667033
