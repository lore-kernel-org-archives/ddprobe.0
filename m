Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E6B27CCEE
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762469393; cv=none; b=CpiVbMQ5hQ77F/20gclUaK0HRhBwhGtl/9F5QTSt15JZQElyF6x6rO4lj35h5+hZdbD5fIkazJZbWqeWzikuReVhvHqI+9LgpJ+mU1Rgk4ZxRqFUMsIBQrwoWSFmVQRH4lI3yNaWNr4eSdeN/hihWTQrOE83z9fSnm5AkBovMYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762469393; c=relaxed/simple;
	bh=4dOA0/V1TweythQS5QYQ5IdQbL9se0oBSFLvo1kSjig=;
	h=To:Subject:From:Message-Id:Date; b=Xuszne+FXywu5a5WIb/GXo48/RTRQJsQktyRMIJlxz5y15F+TJMCtmzy+tvYRoENUHUscadEOWFGJTjewAA1NSS9JFfKy71ikFXun5wqY2VS6Fua/URxdYp4OJzAm47hggbq+5ERF0Zd/FHe/8gwZxJ9x1kO5dEeuY+ccE9plYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIcjb7Hy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIcjb7Hy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15D7C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762469393;
	bh=4dOA0/V1TweythQS5QYQ5IdQbL9se0oBSFLvo1kSjig=;
	h=To:Subject:From:Date:From;
	b=bIcjb7HyklcD5ebhAnbkDt1v4jKegg5ewdbVvTGJI013rtMOGGMhG/q8P5kSzyYwE
	 8tFvneKdGPpb2MPZiHq1VL2rKosntta2r84WygM60ZSWmM3OdgVsJRsnJa94bu+Y46
	 7EB2SoNdJdT0NOPq6r6GGxUm1siul8LXV9df0lJJYgffF4zrrXgeRhE8kk17PsNiaD
	 Gh0ak09hbhhoK1qYtZLe0Q+gGI7FcR7GZGe514MTy+xWxuCn2nJ0N+RwG1Md/f4bYf
	 nygAFLfctHeqUUkGwWNrKbQbWA9dNsFahZNGYCXEoY1cq0Y6DzdtrveallW5q0S+UW
	 ura8ka1/feACA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F58CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246939359.23431.5121391226787498528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f220769c168acda13e457976ef7fb57243599f56b6c777c708a9e0251007b2d
Date: Thu, 06 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762469393
