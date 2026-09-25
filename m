Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586833B27E8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790369434; cv=none; b=Qoqp7FI4+Y2JJzOKkwt364TKwdZaB93Paor8xPm+WI4S4UMwteKh207YwqyiFLzMmYwu4QdX922WmLKSjLHWcCUxZhBV0xZxkAdzTDXfWIyTmtCjnLUA1jDoTAMXjQG3HaoEXDgxlJBoUkaZ0iIDh8nQLZF7mh6NtYXhRIp/y6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790369434; c=relaxed/simple;
	bh=9r8SWbv0Qbut1lIISvSUaH+3+kXErUOz9nr/FIbiRTQ=;
	h=To:Subject:From:Message-Id:Date; b=IA1dN/kNBxcHQ2qkrNd9g+3+4N6Lj2pawsDCy9w27oUUOvwj3sSaWNLdtuZ7sQjA2BEHhDsSYEUh7cFUQTlgm4kk0nW+MV5wJiCHhaAC+YxCLT62kZmJiNEcAtqM/MfXLiyQ9UcJW5W5el+OQasoMlPsmkgyES/a9ORQ5Qre/yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdvfhlHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdvfhlHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FD0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790369433;
	bh=9r8SWbv0Qbut1lIISvSUaH+3+kXErUOz9nr/FIbiRTQ=;
	h=To:Subject:From:Date:From;
	b=AdvfhlHHnI6d4Z5pMVSvffo21TYD4zYdlVovKLTJVqJPWpK1tBUMAL/67COc1jmub
	 IwGelLOjiFOyIUAqfKZuIRhYQMYMppQm2AnCB8aI4vXxcDsdVmK/rk/cDqlDfh0YHR
	 3XSf9Fm+zMzjHrzoR13jsXHVtIQ11SkqaJqjUbVSBTvS/e8pybIV+I7axuuFkmBgyI
	 jQkugoRmAp2EbNdkb7FQKTIoBWQUe7JSV0NyXwHmo/yNwrXSKZus2hJvVkz5Z1gEeI
	 B1ZDGCsDWlQhY3FZmB5l9VDnsV0an7+agzoKKZoT2nGuEq12O9B7aCAIsQsHLwi3Bf
	 iSxza8GAaovdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2A2C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036943369.28692.982925695074860804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21fe5b34d2b90bebe4b4ce027297b9db6d20ec387c851ba0572bf1b8ad3237f9
Date: Fri, 25 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790369433
