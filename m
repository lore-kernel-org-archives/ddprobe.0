Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B41424BBEC
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750680594; cv=none; b=dFDZsgTimtfUpt//pHsK6/uGVfIc6rxZTLOIypbKppzAI1Tzf178oNwrDnSTHLlLmWWwskL+R4wGrrhL9nFa06vuib6My8YUBJjcmMJSSayQos09NT7+9cx46FOSecZK+rWfzigBP/k+IxAbRtfoHNSW3Id4hLNOsLQ6oiX9KWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750680594; c=relaxed/simple;
	bh=Se0Lmt+a80pQjUBLVvhhPntCR1mDntZUUwXNjUez/bc=;
	h=To:Subject:From:Message-Id:Date; b=dKiTHWLJgfUFVBhWjQqRrEYjsy5obGU4rH69UDLuB4HKIYn1JpwNOFTCWT1ecwX/oU/NmqiuM+N8WCjhoyklNnxa0puiE7L0d2+FdEupwhX5x7vZWNZOPjQQnpBBBeHmC4ikU9p/9IqId27PflZqFYx18745+9mjkc0q/FH+KmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XT1j/0GC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XT1j/0GC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC01C4AF19
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750680593;
	bh=Se0Lmt+a80pQjUBLVvhhPntCR1mDntZUUwXNjUez/bc=;
	h=To:Subject:From:Date:From;
	b=XT1j/0GC4aR2t5qEaeDSW8NpumgvhvRh+tEmb248iYQRo1K+3tSDVZg5WXHEl88b/
	 HnDCNbjptyqIejyR3OQlDAeY69hHt2GczjHWTfUyehlw+dd/BbAaOCgGtAvCrryGmv
	 t0VPm831fASSN4Cgd0cRBwdnACmiIB5h/+vafasbNsQ7EF1aBfaZzxLLfO3gsBa3Kp
	 b4hv5G9s+VYmHiRhVVvon7W2wzwYGqklVibyFPsrnTGTy0lw+0BAojY4V6el5qGz29
	 kHCHPmN6mjen/h1MNaWvzR9uq/ZF86rIBRJCoDKaW2+vJIawrEVvs3euKaj9wah0Vf
	 UXzsYSORFsceA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EFC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068059358.7389.10410939690422433816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b04b766396a3152e1c9ffa799ebcd3949dfeda672f6e2467f90192a50df3fd1
Date: Mon, 23 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750680593
