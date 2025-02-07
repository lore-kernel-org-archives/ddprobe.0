Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB4319F422
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738959954; cv=none; b=JQt2ySz6W8S735nDtORjQbJ81RucJeZGGPI9o7mV362Qc2PzR1Sc0NOez0O+1EX9/VHCuEi9kdnTEeWxrmYf99H/q0NIANV6kAx8/U4vDqJyV7wyaG29uIALVIDRdagHXtNpxYNF2FlUz68kQvzwwip0xMbrVb47SKG6EL1OVcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738959954; c=relaxed/simple;
	bh=T3R3AU9w4yP8mqXn1tE7UyGDDky22IdBo6vT9PI9gTE=;
	h=To:Subject:From:Message-Id:Date; b=GuNmDsfi+4XYfSMnsBAekzoOxYHTWhCKTo/kATy/aVSMttKwKEvs8atIcWvU7B8t1fleDbByvS35NLVx2FRoe5Vtq4oVVe1JjQlpwG2OrktfKQUMDtTQDOFToZQU1Hv5oRQqp/dlue+RkFp2gP2WAuytPAPso+0LXz2KIXii2FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSAR6czb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSAR6czb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9A5C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738959953;
	bh=T3R3AU9w4yP8mqXn1tE7UyGDDky22IdBo6vT9PI9gTE=;
	h=To:Subject:From:Date:From;
	b=mSAR6czbmh86v9H8yQVbtXPui7gIh5P5Lp2sQ3T85IB+Lx0OyIwwmR4/kNfBiWOpO
	 4pCuwg78FhkkmWNfeGAzW2VjMqwQIDDutoaMIMmqVQVg55y/9/1YfIRsxkhvc5r8Z5
	 yPIzk1kKume3f81Emna5OnGhlxVk8yfrORyZtm25rHlF9WEHg0gVhmoJSJqKhI/MJn
	 cuBCmmpM4N5EC5afHzkpEO5XFmiD7Ahst+FPinLdToF3h+x2dEI087iavPqH5j796e
	 AnqkDzP9O8YsYwXJyYK5tLOWq7SYL4dOnR9tytg4AIVYi0B24Pkhl6HGDRfQPHXpJF
	 WKJKBdCVFDCVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99761C02196
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173895995359.28623.13779262673810220524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77710bb1595b4330ea7132132e2eb0550fba0f402fab657e0cfd3ba66bb503b5
Date: Fri, 07 Feb 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738959953
