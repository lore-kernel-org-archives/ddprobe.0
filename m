Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3001D4BD5DF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767869036; cv=none; b=qcsL7zGAwnKEWZkecfLLC7biMvr/MqrNV8usnBvfSI6HWwbg8z8Z8r/f7VqO5o3xkO3aXxrkPLIuDSzn0Uz/f+Ig8wx1Q3aX1vq9Xshr6cmTYrFXJvcs0+ru5sdoMGATm/xjw/VJfrpk//S/Y5jsZUaSYYV/SoI+kmEyvR60Axo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767869036; c=relaxed/simple;
	bh=AaRGncEpWlLeYXmRK5nGb1GurNbrbpfj3T88+eXly+s=;
	h=To:Subject:From:Message-Id:Date; b=VOhR5dt57Uj4di+okSYiJ6HtMXKENsnKONkp09D09KKCRciE2KxWqdGQxw70ntAxiJPu9xJDAVGzvQTPKNwJsYQBhneJUweWrUoyilD3wPI67Q5BQAZqnX7FDZVdOykTIreMtpf6lN0RPQruJLlaW2aONQPLler8Cj5RCBM0dIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpA8oLIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpA8oLIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BAFAC16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767869033;
	bh=AaRGncEpWlLeYXmRK5nGb1GurNbrbpfj3T88+eXly+s=;
	h=To:Subject:From:Date:From;
	b=OpA8oLIxwQ8SWRozQHAQ4yosGUAvS0uj+GN8r9sS2tNdJM8zQY7OguqL72UyHcS64
	 w0CRFQbV3XEXY5YA5YcYyQDLvBAZ4K/wlxl02HuajiPFbgzONYNbwVC1MbibL6xrUn
	 3VUlhUD3q82cH4OZY/+yrpWFDL+JNT6OtJ7m50oIuMq5PcoiX5X1eGAWeCB7y9O4Kk
	 JLq4NESsU6/6uNwyLr9fq04hbj3P2ZWS15SVXLIm8M0snA5PjqJMNPx241LhJ4sLTj
	 w8lLZqvq2HzKSUsl3st8q1SqdhkKzuz6SaVV893SjpQMXazdz9i9BPJ3rnihI/S32V
	 d4QXLd84PqN9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1D3D185C2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786903357.23408.8585366745910543498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08206673867f1c36f343840116a76bd04eeb46031e24d8076050d73be7459019
Date: Thu, 08 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767869033
