Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2FB76026
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766969034; cv=none; b=lsFfdgAA3ATTUYqObooYWrBJpt434dQ6gdCLiXt16wnb3t0m9pdDEAxBzPizlR31Le/GaEAD4UsKMo55AZ0c2/Q37h1xMOH8SDf9QC+dB33ifco+k9FTJ9828nREu1icuCNBFMK5UUmwPCmQcdiUEtkzmLuApsx1FATyloX2NvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766969034; c=relaxed/simple;
	bh=cZeQNMF339bTpcHBpUKW5SZPGZQQzz+U/x3mkSPOjis=;
	h=To:Subject:From:Message-Id:Date; b=NY9bHnabO6oI4ukU4SizLpvxE9EpGL9t7v4LXttNr5GUdJ5pZiwS1grrwwgqUMqC3suiIj62n7Re5SIHabOOMV7TvuHTEQtjys/B3WxAAK/Dy2fB+wYFL3P/vvYhPAn47v+D0YNVGy/tcdQ9OtKfitpbgZX1ByIvK6vaTTr8dF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoyT9mCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoyT9mCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DE6C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766969033;
	bh=cZeQNMF339bTpcHBpUKW5SZPGZQQzz+U/x3mkSPOjis=;
	h=To:Subject:From:Date:From;
	b=BoyT9mCwCCT9TH/GTXPqH27GLZ/ZqFKQY9suP6ES90uMYgSii9HJAWvK98XnBO+a1
	 tM+YxzxuZkGq8TMLLdkkW30uggRTBRDaJPe6cjI457xoljWDb4U3YIhmR2CUqep+mW
	 65OkwXitCHwMJwYpa9xS8DVkvAZ8UMr8jxd2OSfpGFzxrFNE8uyh/PPj/9/BRznrnb
	 JCgCzyL1qx2101eQsqt4ue+fpweqXWD60NYyMcKzyIGo8kUcz36YwEF7rwsPD+pD56
	 3PE7gE4ZydrNGRGE1cqiyj8q11i3s+R1kou6DW5WflNoHKMysuBLhHV37bhm0xZqfU
	 rf8pIcuru3psA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0678E784BE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696903364.1330.17285057398897522528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f47213e2fd38df3f4c4a8810716c5d5802563b81535e83c7a10f9dc1c5829f7
Date: Mon, 29 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766969033
