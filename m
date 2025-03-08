Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4C214D2B7
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 06:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741414134; cv=none; b=MhhLl1jpB3CRHY2/zDiHOqEIkfW2ZYm8Osfz6olWdVQUZie6vyH0B3Mx4YEtR9qzhC+U2nNhzuYkFj1ATbxrlyQ58rXkLrDn46bLgYVjTDgpf8uS/wNmM1Gy0blvqzBoTd9wWSNx1JoTJQBHCVQmm/GOXx+tYBdnbghX2FJOYRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741414134; c=relaxed/simple;
	bh=85M2jvj+5EQ6R0Mh9wFeDezAwZjqUeAt2z1A+boKu20=;
	h=To:Subject:From:Message-Id:Date; b=CL9J0vz319HHuD6F2tMHrlaCheWLfHYQZCzkoYMx/SQaeveZ27eXv2lk06js9lgmD+8L4FkUdfOFFQrq/OH1YkyfTbZzPP6hSnREo4n1OTLKWSeKLirUalU5e34RPyhzdMffPW1rM0y0gpWynTKhyn4Ti62DJFWJQEcrj/KCmkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAdP03K+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAdP03K+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF945C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 06:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741414133;
	bh=85M2jvj+5EQ6R0Mh9wFeDezAwZjqUeAt2z1A+boKu20=;
	h=To:Subject:From:Date:From;
	b=KAdP03K+qc9HSQ/FlbrGt2MpTXMw6+Xj1aocx9q9OIaQt3onylqsNHBXVhhDZv/SP
	 1+/JUYWZxDG7lmlqFuCOyG/OpI3K9rgX/8zRdzSn/beaW5Exir26sH+sybc5zluWna
	 /CXPzZ/yIAoxBvO66R/AXklZZ/72eca71XDifXDevZsxlAsCHHwVYtpP2pCJOhnLgt
	 FiiBEx9OV38Y+Pjiem/RRTeYErwL8i6t4SHP+unRXvl5rx5ZsLNMYoXNTMinoKcsUp
	 TUg/GmeFu4qqjPWlPpRsQJXE9l1kc5N1cfY6awFokhnmLfdi6s4H7JXAe+0Vo7Bsts
	 62Lg6cNxvLI7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE9CC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 06:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174141413366.14751.6733091361049971471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4106de1cc1698a0de556e2a79e0ea31235ce740503bf601fe264ef9734b12fdb
Date: Sat, 08 Mar 2025 06:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741414133
