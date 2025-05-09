Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2163921A44B
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746780594; cv=none; b=bvFKy06zziFzgQFClgyL6GXP76fOC+4VIkAlPmCJCFBy4D0C5eA83zKE7eeeBTKZWTzDwkXx4WiciYRv4gkID5AOrF1yaDv7fkIbdk2JkyF41GeDhDMpaXFB0grOMrcq2ZlMchpFGFgkOkSzqO7wlpmnQ2+a+tvmwIFCBowUAeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746780594; c=relaxed/simple;
	bh=eM+Dl6msN5lX0c+bzIteD3v9Kgdb7g/Le0ZqI19Vpm4=;
	h=To:Subject:From:Message-Id:Date; b=BTYRYSSuN72Y8YpjqFJPad7VZl+FSicJIVeuD0fS/wkrKWMhA0EM3dy3wA/QS68QntJ8IeMuB9WEOl/F6Voz+AmdELTHewd9MG3IWg6Q/vr+sH5KYYndfbYJ5TQe4EndtTCmwOdXonlSk3CqoCISgYGtB6kGlCH0phr+FRahH4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKInnc/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKInnc/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AA4DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746780593;
	bh=eM+Dl6msN5lX0c+bzIteD3v9Kgdb7g/Le0ZqI19Vpm4=;
	h=To:Subject:From:Date:From;
	b=hKInnc/VmMANPCk2VkgCrvgba/UiUQDUZcchqagk8aiAQ87ZggJgi4owDXf1+GUYH
	 /JmmK5BIdbB396z+ByhTh86IeQ+KtOyBxfy+8E0QemwSDEqNoTC/3WpwQXL8omg4WK
	 9KPjAaFyv/r3jAYURAZxNASBvxFM3g2XLhxDNQ0t9ZmoBVDo42PiQJivRm+Vy1q3Ds
	 wxRyDK24pvVL+UDDQ3LXgOioSL5Au158dq+o2hDi0/J3dk2NbKrBQlw7RIUUoc0BZy
	 SJWdq0Zz3jMtjL9EH5eyRQguOiaSkia4zdHrBksDvnE54VKXie3pCoiycUfhlurAi9
	 GxMUwYvMHK6Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE00C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678059357.30384.5610360505526979083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41760b269a7f1583c71f1ab4946f5f34e53c338b877a8d452d1d7c741bce60ec
Date: Fri, 09 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746780593
