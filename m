Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F6A1DEFE8
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763305914; cv=none; b=t60ld2gPmORNfr6lEqG9e8ZRGqe3uCQzRo9B4PKILJ1MCPH2cbXLHBTIdT3eQ3M6gIF7c9sU99KM+Qz6wGBrZIUvdWlpyHyAwUY3jobZPpfbaLW1KOaOLkqDiZgnRxYaqXfUINP+BZy3c6wi5GYiWcwT66gwD752kORywlWElC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763305914; c=relaxed/simple;
	bh=tGYsH7K5AqglS+FieNajWKi7nISyZhX3AaI4Bj3jQpo=;
	h=To:Subject:From:Message-Id:Date; b=uPJhxG0/f1zyVL0XPk5fHxAW9Y7nhS1sSc639YhRYpkNNCJOs7Ci/E6Ax2jgq3Fuh5eSyYcnbnAEE89lgkGb3L0lFtmyiqOvP6d82h2nz1CoCRTJrX5D6DIeDGam9ZYYkrs0k6fAsjVE31tItMLwj4Th00njdbrsMWX+9Ktfza4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESSGLkEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESSGLkEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4D5C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763305913;
	bh=tGYsH7K5AqglS+FieNajWKi7nISyZhX3AaI4Bj3jQpo=;
	h=To:Subject:From:Date:From;
	b=ESSGLkEju1Vn1nYgM8HK20AgIFZZO7dDNIXp6QxXuUnmgXl0aFsikNHBasO9lv2WS
	 Lc7Mo/wj5Ne+vxNmAIxHEt48ljnxq0fYcn6gW8Avxe3HL5OtYd1iM0DrVjwUvk5LAh
	 xR5WNqkHCuytjpyjeG8/b2DUUfvRSfZGHL+z27hebJvs6WegtDTDaSlwxCnnokCegD
	 zSuPBnI7cUAES6XBncw08mC1nfma3nYJqY0QgdBhdTyW01Aley86cUrvgLCmf7jVfM
	 FyG048OfJ1RCqj8fJ9SSh15rb7RlSkU3XPQJJnAgZTj2hnjLRNplek7HkdJg/OykRY
	 Yz2GTkl8RJyuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8E8CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330591361.19037.4819583316627133656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f47f0a2d65f9cb3cce00d7aae1d0fcdc5d5c0b3122eeef69c15b657fbf414f
Date: Sun, 16 Nov 2025 15:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763305913
