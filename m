Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9701D9A5F
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765082574; cv=none; b=ErL4Tzdti0fK+2AbaPljQJYnXoYn5vhrWksjSTUHWQmbrup7flbLHtELzzoa1jd+y6cM1IhQB61FTJEwfhpdAodSedv79Ijj51w/awdhpS3IkHsZ0mJGXoHi7n4XgHMMueuZfw3RAhL1Z0T8oGkEjghR9nmz8rD2EPHw/r4VVZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765082574; c=relaxed/simple;
	bh=9zd0Y03BB/8YROzYg/6we/pN1R+CB1HNQilZAl3osig=;
	h=To:Subject:From:Message-Id:Date; b=GgJD9qcwV9TVKYSu+4w6ov19DhxMbBYJ/x/nUKlk8xmMGNUKlzQWyHzPUshCQZcGF3LXQS/wJlWOMdXFwrSRTGL/+g9q0/FikefqY/6OeotboqtE0UGDzsyqPJXnpdnY4b/ZympDpEPUVVP4XbSXfPz4/RNs55E5dQT7Wu9oQW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kf8Bf+CJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kf8Bf+CJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57B0C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765082573;
	bh=9zd0Y03BB/8YROzYg/6we/pN1R+CB1HNQilZAl3osig=;
	h=To:Subject:From:Date:From;
	b=kf8Bf+CJ+I8glo5FVFNUzK74M3d1+l1adr50m/kZimyDm+f2VoCgq+lPSd0/vbM+o
	 p58JyH71mQv1ZSW6z5ZZsDYqm5liWE9H7k0Ikz/+u2SU0mtL/8a9vvIa2AqLRRmQCP
	 Zmea7oYBtV1G7G+b0jGNig3gqoNErUpS3gOxSpJqrIZ4flD6HHvaX6VoqNaFiCmRnC
	 xz2kiq/zllgtUs80BiUBFb/o9+N0wAbMYcDwqPQgVGwW9JsZOshFdOxb866OSMKiZF
	 00xS6NlTWTmq3EoojVIBEn0zx+sHJxR/fz2JjqI4xpY7k5J5KFvFRFSZZU5G+fz2JG
	 BqWYHod9ekVnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9348DD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508257358.21262.7790086660484847865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b10a0af5963b94700efce87124151d574c069fdda938d29b5e0d86fdbc0fa4a
Date: Sun, 07 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765082573
