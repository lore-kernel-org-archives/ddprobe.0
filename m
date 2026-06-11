Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623CA31E84E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781207194; cv=none; b=VoUZXe43cUrMkt/ak0SKF2aUfLztDNGGl/j45drLhjjNQMBET5nd8pGLo1zKxXvYXMjHhtNKskkh177TtM6UXtKLpG+CbaiwwQqqthfzxJ5vrCcAQDzREOmQ7krVxF60Kl96C3Ty525omEDBriW60lbzR0glaoDEychtfg7lryo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781207194; c=relaxed/simple;
	bh=hONdcQQrSnDDJx1w7s9f64ziz5/OXle8Mx8DLgVclmU=;
	h=To:Subject:From:Message-Id:Date; b=frSFdaGBLHKicOhECVENZt2KDCqvb0ekuowdmXjeh4smiNZksmAy7MKo7YByRAoE8khFTOyPS8jbUcPU+ANoXMNX1+//wgSQIQ8w1hkMBDNqz4S++fyt71Io7M4r9FPX5lJlcH6Ye/h2BHCe5MmdjLrpEx2vdm9WulQjK61+csI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhcmHvAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhcmHvAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF4AC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781207193;
	bh=hONdcQQrSnDDJx1w7s9f64ziz5/OXle8Mx8DLgVclmU=;
	h=To:Subject:From:Date:From;
	b=nhcmHvAAvvlYXtkUkCHGXDcthiyvfVRX+0SjrpWo8rSsLQuDgOgoCA6dirjorz9A/
	 kmgmgQF2xBhBZVNfwF+D5eAoG4GwmjHEllhf7PzyXwdfHJglWRWCdG64tQdt3I3ERi
	 1ZtobTAwZBDvjvsSK4QllLN2LIAvAOoIIL/PcEAOlQpCHNRlFoxQpgAtKwvVdZxJhZ
	 jscGI7MksAkyeC4zphE10omveTndWy92rl1jTX07t4w9E/XAFgZC5tfrg1SfDS3EGG
	 f/6pZf/kkTURwgIuPdV8sf6QA9i1J5l+MeCK7WducOvBIRVAzl4Q4oYjnCA95EgGUD
	 f8fkDBEUhIJ7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CD8CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120719373.20736.9605439930952949632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea95bde838113359e78f7810fb44a8597588e40c8cf249b5ed2a615f4556dc03
Date: Thu, 11 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781207193
