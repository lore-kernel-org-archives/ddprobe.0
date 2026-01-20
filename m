Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF9336C5AB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768890234; cv=none; b=ThABgoHI8znC9ce8ZSUNcj9c1JUhGzo3QtEGcF4tuFRhm6QYoTVcMHdrCjM225B6M0bDnxqvyN2/UJDl/dIOdNxNVbbe+f0Micgdnf9b0vpVd9PmSym5T97H1WxpuL4Ur/lvgwTFB/4p4JpydHvwqSNd5TqtnU2J6ThGDJtbI8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768890234; c=relaxed/simple;
	bh=/PiIupAb3ODPkLfTEoBey/Dnxcn+g1nGZfvr55eNJ74=;
	h=To:Subject:From:Message-Id:Date; b=fwPB4upGW+YHICeyRpbPC8YPA3JBXkip8Mm0mPzkgJFJYzgaIrsPx+HzM0dd3+GAHOxnGXzAO/4DGFBD3lnxzz/veDAQM0N1aQbO64jxm4G0a0V5ZBTmNlFhpvJsJucQoBlvj6NejYPH1EtfdkO+PjJjkA3cIj3w2blVRFim8/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPLPs9bu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPLPs9bu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB8AC19424
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768890233;
	bh=/PiIupAb3ODPkLfTEoBey/Dnxcn+g1nGZfvr55eNJ74=;
	h=To:Subject:From:Date:From;
	b=DPLPs9buKhjI1UBn1qKHXYQvEcPqo3eKEgGiQ9rsEbzrFsimeAqkML/jMuwjyfzan
	 8LyZMcsd9UlJHNeR+gc+N5ba59lf+S24klIZUUlsFGHTCegmPuvgAVqSWD4A1RFG4b
	 4a8Qj2N3GPjzpLU+lY576zh+G/15cBH3TfmB6v9thE5ZHGPfqkLu/7UVlrqOIBcOrh
	 No1suydAdLoF1iJvgNudSwUBttWBi1f9Bvbl5EmmavVICEtc4KbyMj3UKEJGKAU+FU
	 XvWcOUYOW0aBY7FL3ceyPz9bs9TruJJUseld/G5WJfZsy8I+FXAH1KHKypNT5AG/13
	 Lp1jAo51p6Msg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B45BD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889023359.7743.7272103820044441037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba3dff5e84cc1a7b95c4203e5d5cdaf9de362fd38d15b62e504529f2dd36b6f
Date: Tue, 20 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768890233
