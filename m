Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B89D36134
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717124663; cv=none; b=fuyPL58ywfBcCCp/KqbfIQ1++YkTlmH2T5LXob9DsvrT8eeCm7p+A2FhDkYGLXB0FJq2p0o1f37ccRchVtE/exP5ly/0Gbubvo4vU62mIRB1nR8Sobo2ZEcXAJZOyLhMxvJsc1JjBZSBo0gyepTrdolSaLxAzZZaBsbn09KEAfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717124663; c=relaxed/simple;
	bh=r5nHceHeYddVDqfXUlmT0nwO1NEbGhpoCUf/E2ox1JQ=;
	h=To:Subject:From:Message-Id:Date; b=NqzSGAIeq3QKIuaJUKcaLs6LAmkQa9mthiqxba89nOJzPGp6CYbjgjrwpSPq9iCnBIaRT3JvqF3ADQRHwO+rLBgTSVitVImWgpZ4+9jyThjc5/dNoFlxr/hfkopdj0osVgyoZtYwL4yxa2xihBecEvIDZQUgiUuTR0Yx6N2zgtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhjmbWGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhjmbWGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2CE6C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717124662;
	bh=r5nHceHeYddVDqfXUlmT0nwO1NEbGhpoCUf/E2ox1JQ=;
	h=To:Subject:From:Date:From;
	b=dhjmbWGon8wWgq4CGnFovgIWjrwVJCputnLpenwRL+raEUPQ3x8LVgp32XMdrwpk+
	 2AI+q0Gl3LMC9XrdyXHwcytx83Lwcd1hG9GUxESS8HRMVTWTf+rBLM1h7GqoZUNC2J
	 lc0A7B+7vSTXDbKDeocAGtETHsVulBbrJmPcubOnxtOJ4ZQMLEysXhXcXj5EzeGn5H
	 E+l5B7KsfpIVf9VNJNG3FpFB0+TBBl7yrAyAlw8GOyIh5U3bpWSTo8qkqyD7IHbmTr
	 Z8q/3xzrqnwc7s8TlC2EBFmpjrEhTFyERznJKQIwPJPDxkTk4oPK6bQRrqdpFBtXLF
	 5x8AZ0TliTsGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C717DC25B76
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712466280.14493.7260809575215428043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53de16da75618a31be82550738b1c53dfc565deba6e9ef083ab96ea62c150204
Date: Fri, 31 May 2024 03:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717124662
