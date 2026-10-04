Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488FA2EB0F
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791129634; cv=none; b=cg+tfbpKRTD5U1Eu0Bw7L+A0XZ2N8EF5Y4xUW5uvFaHDNSQl9h6SL79FHWvXJUEoed0FFJYJpXIcKpJVy5570oTNqxCRRo8LCKStd63tJjHGw9WFmOgQfcmNDa2Zh82OKL3k0iiMlhYeHRW4GVxAgt20Ca1uCUp9Ta3GSykWcbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791129634; c=relaxed/simple;
	bh=hsAtWhdpQASANwXCDf+y2XKY/vSPXMzVYzjNyhnpZYY=;
	h=To:Subject:From:Message-Id:Date; b=f3Mg7eo7zMXSeVZ+TeyAU9LJW9u3f07BsmajEPFNH8RfBAkbLNCC0DEX2hkTBCNYIESeAPeGlIUDON5jxncLf3dKWzXsWIvgQX7AL1vateTEj3GT39ltx1ZZCwYch4raMwYmj4GWdFcScscViVRppMSd9t5outwOlGMSqjVvImY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NU7XR3A3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NU7XR3A3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB96C4AF63
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791129633;
	bh=hsAtWhdpQASANwXCDf+y2XKY/vSPXMzVYzjNyhnpZYY=;
	h=To:Subject:From:Date:From;
	b=NU7XR3A34Uy2T+oQPdhyxx3tH1O5YYDmjOrP6oeOrIjhrN+6OVHk4QwwbWzn3XKeG
	 W2kfkEwDLKs8ZKXowY4ZEYAeUq9/RnvF4u2mzJaP6pltzTt/2noRUjVYykxQGoLvbS
	 LaIsTg9MRZXtNCk8Uh5Oq3eOgJaEyP5AkdGqh1dBHY3u8Lu2EQYy+If4KjDKgX9F6f
	 LLPIqloBoj6vniy4OKRwQvTOfRfBJHur9cuPmUYzJ2uynkEhBeFTJ+ZbWJXaT9P6z7
	 p5bg5HbuA2x/IE8iaEpHDXPN4+rVnjCpazvVEL4rzsyIIdT2euRParG7qEhFd0T0W4
	 hCzwIXfSsALIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B65CA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112963368.30146.6379564458103197394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203aecadfb40141f7f61d92a905c7ffb8a9c72e6719638442d312161b5a1e3f1
Date: Sun, 04 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791129633
