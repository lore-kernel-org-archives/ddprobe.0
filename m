Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F284A1F4611
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769894634; cv=none; b=Mm5DcmkhiB0sUBRON1Ke8zoMnXpntT4XJ42qRT9dk0gF+lyxq8OwNeOOb5ie0wXrz4MkDUXt/o1drHD46CUqqucix7KCdrmLWOZt9a0Hf30eBO6HCU3J19JFPpO5ydeH4Uh1oOkreM/J6RtZamuam2EWpoNq4xd1AXq2WpY5QwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769894634; c=relaxed/simple;
	bh=0FTkYQWSW8MsaAyMteeJ3+I/bArFZfDxHm1gshRNuuc=;
	h=To:Subject:From:Message-Id:Date; b=j9Jx2VmtFWB/W0CBkeXCRt8T/NQF4U8FNTe9fvvAN78joD8HOqnDOMfMrPWNuQNfM/dwXRoIvnGQ4DVxXKlG9Kf19/kN9tLruLAOebfR70IMMLFd1i0YgDfNIJYYEwc0q9GfqkdkQK6bUqFVcjFxRmWcNIG1xh/FtLJBxHaoTeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMGiv36v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMGiv36v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D1CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769894633;
	bh=0FTkYQWSW8MsaAyMteeJ3+I/bArFZfDxHm1gshRNuuc=;
	h=To:Subject:From:Date:From;
	b=gMGiv36vSNCuoy2S9o2VWxwtzYhHjFCMNHrIMMrFfZlAOj8b8ETVyJizB3K1YMl+f
	 X+iuFnp4zTQAgnqowvyGgLz7kaNvXE6z93n6f8pHyZ6bCnV/KnGEXjI4le3klGtORa
	 Hjo7Htu/FjkizKiT9aUfiz5Z/PiVbmcZbjSubNHsTvB9zlH47xN426XMoUXUYAPSwX
	 KDZdTdEGuelmOL1GMhm4VYqWwmdZQO/ThnvRFiHXd3XEQ2Kh/Ph2viUwBhUnEZZP3s
	 z8vpq1pxsIKQOt7PXXQSXr+xJG1NGd+B9BBgg/nK7gr2C8UKqFJfq7S/nhRLPrUWlZ
	 q0xhjWE8Z8hAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9145CE7C6E9
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989463357.12872.3435655717681554021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7300d1dd3cd96f4dcf12c04fd162f4f5d83ef47ceb2e4033c00bf55de9469ba8
Date: Sat, 31 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769894633
