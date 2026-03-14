Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA54384224
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773521094; cv=none; b=ZUBpjuVsN9gqMbPbsc0SzqP/YGRssqyIv2wwuIoyHGnMPq4O8CU1YzTiw2t3JTckcVZ1Dnrb3Sx4L8V5grzf80kg/3YyT9ra0CVgFsFkNreEwy9kGVs4JiEocUnF/4g+0l7coeD6N7ZeA/pjKwkwp5cShvVnaHwtSkR/M+gZ6ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773521094; c=relaxed/simple;
	bh=aygpqN5Dw6gy0HRHFDDZOxKf7h0eIFHN2VDhY7qllH8=;
	h=To:Subject:From:Message-Id:Date; b=AJ2cAUJq1/zyjwqjnD06wFZevb4Jgfv7RZmpastEmNMRl5+bk4SeswfrzyaxuKNJLXqigAubd+21QI8YqIawy0DWw32wl8pX9EbyI5PLEyfAZCXuponlv4xUs4YtGPLygUS1Fz+6/dVoIn5hGLZ3t6goFJSqCpdDBwhtyPpFVp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7pQXGgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7pQXGgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E31C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773521093;
	bh=aygpqN5Dw6gy0HRHFDDZOxKf7h0eIFHN2VDhY7qllH8=;
	h=To:Subject:From:Date:From;
	b=i7pQXGgfsnzPSJpNWlzbCyjHl7oxMVWHafes9rvg27TT19OmPbgDgtu6dbQzKm7M4
	 Wg/7cvpTLMTznI6NtpwKSwtLbhukSSCY1Q21TBquU3PXdh2yLcXt2j4Efir6+XUq4o
	 8xJ2dNpqZGozuznwf3XWczeCB5qa6fvftgCJqYc2OHXZuiWfvkEoYivFs1P0ZPTIeE
	 B5xO06zLO85R2ARdf3k0bc9oA6kqQ3SP6Veb1zuwRwOudquHUFjIwVveiGP4uzwoc7
	 jdxugDjhnORG1Kpd4GFB/J4kqk1Fo3uN+SW44FLxynem91EKHtUJ+3HtZil5avVx8u
	 85Kvw0pEufhgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE6910854A7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352109358.31469.14819065090269318058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04b11dca5dc011c91c23917bc6a2a4b05f2027725ef929cf361ae237716554f
Date: Sat, 14 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773521093
