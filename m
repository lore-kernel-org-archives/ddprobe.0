Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761551DB933
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743278394; cv=none; b=GlnNWWlZmGXwugXDDMwXR6REGU/lUlKLjqPkZUY6JLOJAKrS317FerAxCoSzTiTCTXX7WfXvPyqljC5v3sX3nB5zYAUzdYrNevVSa9Rl7ZyjgMK/KS81xptLhrE+72EeXqANB8L4S3DEHYR6SwDvEeLzwMnS8xbBqQbKfybAKI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743278394; c=relaxed/simple;
	bh=/v94srRfte1Z1lFI52E0vjoQgJ7vjuPmxFXXlwJFB1Q=;
	h=To:Subject:From:Message-Id:Date; b=J4dRvJrEgqBMDtYun8QlImdxlpGhX0Qv+zAA1sGflMI0FXGFCL+BWefIY1xZWaayWjlwcqoXa1h0Ytrsby6EfDKE/ya0ibweW9csDNJnORPMBoHc8uiL4pGF4Yn3gGCqwl+n0Le8XALhXdrVkOGpv5bIJeK4WtbWhKKx5Bcdduc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1NMsK87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1NMsK87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72AAC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743278393;
	bh=/v94srRfte1Z1lFI52E0vjoQgJ7vjuPmxFXXlwJFB1Q=;
	h=To:Subject:From:Date:From;
	b=j1NMsK87M9UFTwEMuzweXWUJ6vrhPyaq5XjUD05X011SNbd1izGm0lSAu43FDGfFM
	 SF4RUS+VM+R1vPBTCvrtRlCwoHxqcZP3kMjsJq2SpyZ38WFT1EeIYR2Ysur+KyEp8H
	 V3784mnr77RB2Jr5aULtoL+AYfueU4FZWwDI40U1afd/VNtEdmIqeyWqCTaEUq0jNM
	 o+oP8OkoSiswP6rtq16OFUUI9tyRf2G3eBuGZxETV1Z9/Wsk8L/KBZf+1SLkoPqJlT
	 9DR29E7+qRe05BQxyu9tsuZ6E9r9/Fi72ZdTCWvwdTwZDbF6Zy3bVMX596s1RnKBMc
	 V8V5uXJHETp9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87EEC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327839367.21264.15393334500637479541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116973884cc6b63e5dc31eb45641d6beea9ed425e6dd05013ec24359ce9a3cf7
Date: Sat, 29 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743278393
