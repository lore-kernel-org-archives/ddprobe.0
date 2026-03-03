Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DCD1A6810
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772508294; cv=none; b=VDa5ZyAFAKpd2JNAlBZ3WnlT2gioYGdJBLksnn3/0TqLsHMzHBlxCgbb7cR/eGNZjzHDfW3vOsdwjZdIuwqc9XgkkHBcd2yYZNXc+d/wb+R20caUMij6qJYH6kPKLu9gRqPfEAplkwxN15MmkmAs7muhyuWICEhl2J80phUMr44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772508294; c=relaxed/simple;
	bh=T+Vk9B2vezUBJSGvgIzNp61kgf3qd6MddCIdf8kX/E0=;
	h=To:Subject:From:Message-Id:Date; b=YLOjF97lT3uny2g7GCyRRqcCQ+0vIC1iFzV5P/OCG1RXzi5lkdF2XHe3qx1NnOK6R3ELMKbkifgjTp76Xc9K7owbTSRZHEd0EORHgBIy850/QhEqWiv2EuBBqqV51QJsdaz4YwIWi4d0IN2tltnjuXM3+2Hqb8RzOAAs0K5OeC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbggZWBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbggZWBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF539C19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772508293;
	bh=T+Vk9B2vezUBJSGvgIzNp61kgf3qd6MddCIdf8kX/E0=;
	h=To:Subject:From:Date:From;
	b=cbggZWBZluIp+237zAINPdMPwFhO8T70DDp1FTSZglwP+BMdYHbfbBSRjPGMmKxYf
	 katzjnuV6/WwMUSEQXP/p99IeLQXAeqQQei1J4ED0H93DU9eUffsW+R8UY4RIJoAmW
	 EcXfLqr5zMZ+9cN+V6SNmHnv/EwLEl548e6XjHf94BmEWuintP7ONJXICD+D4Sjkub
	 jNxjfcBABdIhwECagXAlezgHqh2t7NbFXaJsyi6V9eravVXprRMj7qbyTLw7XqzOET
	 xL1KrLLpDF234P2Bs5mCj86qzExERVqHYfe+3mdbohBJfg+d10hORv7zQV3zdYdo/m
	 UCG61arbEbl9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985AEEB365B
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250829361.29462.16467304664660907573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24053100385ecf5f7dcaa8a35ab8cdf22d9510c47265b40af39cbd8bd76d1816
Date: Tue, 03 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772508293
