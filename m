Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCED2DF6E6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787314835; cv=none; b=X+cuztofdJCgwAXqlNpczahmpLu5gE8wUbVvE/ES7GAwaphsAun5cXofytyLOx8ygwOowetZeQWqSrjENOVIGebpXIoOylPQGyaUMakqbKScfQ6P/qCcOhaMb8RoR03rIor0FsX7hRLEdz9zKBHKfptdFeqzIaI0bD4vcCR1dGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787314835; c=relaxed/simple;
	bh=R6LNXD5KHYV+F+mdveFUhN9my78u8Olj+1lr2igexAw=;
	h=To:Subject:From:Message-Id:Date; b=DbFVFRVVy32y/J2dMP01hZCS0034UpuSdJGrGi1R2QIWtoQuY+b+WKcUXm4ZrG+IJzyEPzkrf3omGicQ41ntK+KuLdFUBbesBd35p0awgT7YR8t7yLzmDzhA4ljVISVBxtSCXZBWPLBlS31C2YgNs3zXb4Ev3c3BRyxI65ZjMdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glYD39pB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glYD39pB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D161FC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787314833;
	bh=R6LNXD5KHYV+F+mdveFUhN9my78u8Olj+1lr2igexAw=;
	h=To:Subject:From:Date:From;
	b=glYD39pBS5k0yOK4xJOUMCEOoz2f3T+xBHbI9ikfThOfRxbh8iQ5LKhkdVwWEP/hd
	 jLzBMnjrXjGO2IpbsAtpASSSVAhGvs+2hIhc5BI5AkSeQoDhU4VGLBn+MnPuwZV0gC
	 jl957n3XnT4LEKYxr3ULk6bbu6aFD+oR1ImG014urh80/UyJ6r6w7V0LOZ7lkRnwCQ
	 ed8naty8DjmTn6hjqReHevt+qj2lwIWB6HrWoHpxZFvWYpIIAqmLbANnFXJiPUivba
	 yR3IcA8kF2/NG0fEnQ+OW6gPYSMJl0ovMuGMznsoHeBfpOv6hRFsjuNwS7FmOFbulA
	 vfmgYKJaDdzDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCD6C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731483369.11399.3401848636216824597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c92108d5165dbb6d9bbebe154fb90cfd4f67dfad0a1b6840fa4cf057c8cbb3
Date: Fri, 21 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787314833
