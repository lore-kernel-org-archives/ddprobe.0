Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABA81397
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792111234; cv=none; b=j/4pZyjWdVoUVKUSyCAWJnptfsIEEpJuE/k3yxYuKxUNr8JtEmxKHPCgjcK2jZykGQ2YIsnhe6iXhXXTzNbYUL4Orf1Jk7ozocbveOO59RmMtAWkCs/LkCT6j3hF18E6JfwBkdWsv/PZEcsfPI0wngyKDWZggcvtmSAXhRZVh4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792111234; c=relaxed/simple;
	bh=1t3n2toaY4jGvkDpVYpVh/CwZPe63qrLEQL6Bfr7zHk=;
	h=To:Subject:From:Message-Id:Date; b=ahehfKKEBef7T4XCqcP8OAl4GODvQFnUypdKHFqwQUYTsMJ8NBsq80GLuYtuUGK6Wde6jWq7eRQOYLZvtJDGXwDydZazAJqBpFxSH0XeNv7xeXeQEBG2l4MB6d5KZ1j2ukraH/opaZY09V9toQshZwvX/Rkg3brwvlPTVrK4jJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfl7SWrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfl7SWrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB4DC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792111233;
	bh=1t3n2toaY4jGvkDpVYpVh/CwZPe63qrLEQL6Bfr7zHk=;
	h=To:Subject:From:Date:From;
	b=pfl7SWrno3l9DeZfS62PpqetoKr1c51YX1SaAYYi6sWmjMK+FgKoBcxwne7mCqzqj
	 oELnBu5FNn/S8YwbL4gSvBbfyjnSKprKdkWLDYCtjgyUZarhGqQQiyg58di+e2Fc0p
	 ZKi2rP2hWsVEy+vPWhCcVBcSIPyCYXUxrDcloc7L7Gb06z1ItTOVWi3a5413tQ8H3o
	 t1odTodM9L649FnLWmBZqOn0Pbg03r37qJvwxUGvwKIxHQyIPV7UKugMD7z81hJhfZ
	 MaQmIG7cqQGHBZheNsn5BXjY8dHmQbpDPeGAQEkcPef3lbNG9nK9qe4iBFSQByMmzc
	 wtjFFpZGx6Flg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9178CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211123368.19194.11234175670915757955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cbea698f3f332ed1c7f85249dab908aaa8cef75748f49bd64018fc0e7533217
Date: Fri, 16 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792111233
