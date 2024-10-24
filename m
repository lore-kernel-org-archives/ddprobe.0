Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490D11E3DE8
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729782354; cv=none; b=ixAP/Zybo09H5/M4MZ1MVJySIJEtdTWvAgx9EwJ/0f8jmsTecgxZA5xeA3MDdiWrMYXoqTcYPtlJa2aoqi7Itb+wSpua/oaw25Mmh9jZSRM4+lJiHH6HEiLn5Zh0VPDpTojFZ+pN/4kcPcYZb7bXT9L8Bke5bsA1s8L+5N3WoQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729782354; c=relaxed/simple;
	bh=2C9oUXxp6n+b08xtcuSbXGe8IeJFB7igdwddJMCbITk=;
	h=To:Subject:From:Message-Id:Date; b=K4OL5wGlmTFmYZRn0mC5YXZha9bdM8xY8srbyCWz8DAXJNvxnuYk2OgBNmBpwkYcPKNmtxuBGb4CT1yTDxOKv/1GjD8o909GYqGPaYE4Ec5/ibtYd6+4TRdTo4idbeDNE5f+xpC4Gh26dCqzog7/z78eclvm2roLclCdmQa59dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTEzEu3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTEzEu3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE954C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729782353;
	bh=2C9oUXxp6n+b08xtcuSbXGe8IeJFB7igdwddJMCbITk=;
	h=To:Subject:From:Date:From;
	b=hTEzEu3f0ughkP6dfiagMapyvgIOuzM0vL0TqmE1CaOd5/zfe0t5VWBE+XgZbZKS0
	 hQEF4CD5vdAKTuDlXncsXAXeB67XYy/cvlGMW48MMaOnjktOjTyW3uXRaJf7IzAghw
	 CfYlvAy6gVdJKG8cS1bWfjhFF8TBhwI0rNQ9V2YVbs0LeOgJSJSUd/q9/NrCP0vpLQ
	 dMuMmvwU8p7mqEwaiMiOmH9kre+QRJurWQ9UDrNAy/fGlhHrtXmfZ1ORwL30e+HFCG
	 QQAgb3wJ+IKXJ0Y+2KOVw9BqMuq9XFZ8QFzpkiCe5QdFysuyGpspVv7I3bSl3NtP4g
	 6jkXuh0qUHQnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970F5CE8E8A
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172978235360.9565.6415170203230389889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebaee21b57f5e3014a3288534685f1a51b194fcaa912453574156e703f354c1b
Date: Thu, 24 Oct 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729782353
