Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABD081DF27E
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 21:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742333994; cv=none; b=U9QyjVP3nUmhLT/MyrhztzTPya69flBteQFsaH1guQcerpcxXEgqhjGMD7ICRQYLMMSnHwKWfXIeQWgfZ3Gu0OERJnG8bXkJkxg97RuWDcGNAJa5UZRj2k72AJ1S0fKJzS+uvOJdwqBDguqjhJh4U4JoftqV3A+5v+sQmFB3SU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742333994; c=relaxed/simple;
	bh=vDc0uxL4jbH61wzT3pg03wcIiaHy+eXnGmYJL6bOxY8=;
	h=To:Subject:From:Message-Id:Date; b=rBB7SqCO1A3mUoAsiN81Clzp9LMrhxcQpg/Fb8lUX9jI/bF/Bo18hBVJeGLfLYanumVU9guqGCTQkyfd5dXJNWDOMUKI21YuiUm+BNR6TlUgg9DSEg6TExWQ6KVskaPpawzrHcxZLgKpHGPAr7EjHVNFuNQTr9PQfKctIHOkFjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntaefyJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntaefyJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 32898C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 21:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742333994;
	bh=vDc0uxL4jbH61wzT3pg03wcIiaHy+eXnGmYJL6bOxY8=;
	h=To:Subject:From:Date:From;
	b=ntaefyJzR4FBR15mWsanWw77FJY3PjUuteMEqgsWZ5sVvDRU58neNPsJwTwdbY8P6
	 jcqSDQp5wgFUdNQ9blkGvnsB7U1mz8Uc0ONzL5JqVM6nnJKSUCVLkSQ9AyKY3OvNxp
	 yQusK+v0jlQtkN2i5c6D7x4qauu8roHAJQIvRVKAxiTm9rJhx9N6hDD0mHZqGk+2Oy
	 JOAeibetOxx+e3AAzSilqnIs5wpw3BZqpKRgvBA75dOsDKShuUyz8IBARnfGG+smJF
	 NQQCc83iyMByEeQW5ExDO95o1O4wADWbGHTqoYk8Ac8A4Bu0+zasntOqo2nEoFJg60
	 YKJLcD0PuapvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E012AC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174233399382.23788.3730918764594337868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e67422b8d556b29c00fdf9e82bd896fd709d2421b8f64aed85d239cd06ff789
Date: Tue, 18 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742333993
