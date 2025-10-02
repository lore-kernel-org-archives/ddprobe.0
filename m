Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309EE1411DE
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759375795; cv=none; b=sb6B0mMycIvfmQ/1Gwr9+yluFICe2ZSIQgH6hMpG6JUvtUTSsDnSuiweZHKtB8+nc4wh1CLXHsc8rSh4jPT+bZqL/9gsEylaOtgWciqTFx9cTWNKA3uty8qyZBrQHMQ1a2jeNkF6OvdU8wacHHP2Scz/sNdTQEqecaN5+BZ9xmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759375795; c=relaxed/simple;
	bh=SFsY27aAtZOkYFzB8s1cHR5LpcBQ9yWMWrzK0HhLMsc=;
	h=To:Subject:From:Message-Id:Date; b=OO2IWbTLEcN1xzW9TfW4vFzyqiT6fCxPXXhL3y2mhX8cCoiYvDZTkhbwyRPnTptVaAtxPhncINuJC94oAjhUnHbJbxpY4raoyfLuDwgy21IpNFYQv4j2Yd/s/0gOwhlfbCvm7Q1CZ/2jWIWLkfTtrTYn5dm52qFhP6PgyFzD1V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gw8JWP3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gw8JWP3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EA3C4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759375793;
	bh=SFsY27aAtZOkYFzB8s1cHR5LpcBQ9yWMWrzK0HhLMsc=;
	h=To:Subject:From:Date:From;
	b=Gw8JWP3CaYeY1wPksedHzhleeycbMJ0SBk5O+fbQTaxOvFH81NIxSXi7Wg+9AF7p+
	 00Dc5K8sPdNMTr+otQFp9yRRLE2OcGwA5/TargCkkT35hURbg7C+cpnBjW6CAsRxTs
	 /zC5TKCw2rkm7mMgl1pnQ/jwhiaXiu4N81E1+7ybgzKOPW3VA5/JIR31dTGtXmUUbB
	 XEFE/n7qaPgRMZNRVG3jvt99CJpkQ5P8dCEdIWxINBJ7TcbTlft5xQ7uZos59O3D4u
	 thRFMDY1tG0LHPjmyqNoXJE1wkmEC+mXi6GR6+Wv3gjalzKtK1H8KJFb5ipFNI+HgK
	 ZZKRnSEGro/0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC6CCA470
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937579359.1556.5085754351827535415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed70a4267ffcc6a84bf894b28334a92fbf77d8a6ace9f55aabe83f2b99098f30
Date: Thu, 02 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759375793
