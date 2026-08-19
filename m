Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2E526296
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787171434; cv=none; b=fVFAV1sUCRR6WYuxC6MqBxxM59btEPzFJ3FL3Vsda1JcIOlTPeA275JuOh+vsiJQRhk0NB8V1mufYDCfxsJOuraP1sxugc/J9WdINj6YPSdeaHY9VM3LDOVvQ62t95pwUrGFSRwTZBT4HUC8XkYR0jCQa1oU4M+oqz7wA519fl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787171434; c=relaxed/simple;
	bh=EU6ZGoGleajsb0VZjSBPTSpdRvpqwHhnLqf1zw5/SRk=;
	h=To:Subject:From:Message-Id:Date; b=EuZJmJ4jpZkOj/SMgIZEiDoJ1gFSz5uYd0JDggUBvfkZIwG8Bu7i3RILZhzflJSjPfBsgVM+AK2MEfLTOfRTmk0OsgonNfCddFXt4eQLLDJHEmzGTCABUVWYKaPQotnNNo9Kcuz3yJQ1CLJ7HCp4pJhXMDOA+BmfFPSQMhlz8EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOQASVhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOQASVhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7DFBC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787171433;
	bh=EU6ZGoGleajsb0VZjSBPTSpdRvpqwHhnLqf1zw5/SRk=;
	h=To:Subject:From:Date:From;
	b=jOQASVhFs20crApaBq4phGvgwPgawqBNIxsAvgXL9bqTovaYISVg78T9o4n69bQUp
	 Wv1CCu9mwFG7HkDud1tky4kS6bO9Oyz4ny2zlzNRhcV8mqJNHETEn6dHeGze8oRI3x
	 rkKtbFvs5blrGJsHdjwISO+b+guxuPAN2AN93pCrwLpviw7BIvwxAsHsR6gvzVNPKX
	 Lv9O0MbSxuajPUJJYUVRPoHWUjoo5U5cUAlsmVe/7SXFA8BUSlPmZLdhBPpAPhRUci
	 /Nebo+epYpqprWj8g4iUbzgblUUPAbpiP5+4RA4w33sX3KkvzqPHJSiQOAyB/+vMX2
	 OiYY8ZxUhBscg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FE1C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717143373.11854.10950708304027495643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc2675245b224469d737d8a75fec5ae5f658d7d005663b64240db3f1fddd240
Date: Wed, 19 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787171433
