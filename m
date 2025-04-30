Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3948439FD9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745975394; cv=none; b=FV8XxMGsHD5AMO7kB36PZNccuyKRixImeK0xx6p2YYpyNUHk9VHpVpj/1vDToFEWbxrsUmHmBQwxKcsx+2IZapNVISIgRUHnMEo04FboW5bDCtQl/p2V9i0kHEe/oPEbORtauNB+HTsPEP5EZGX0E13+bAblYtExoMraxHC7knc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745975394; c=relaxed/simple;
	bh=dt7n+dp/PZdznxliZDLL7hg2lW/yR+RCGWf8VXmUZSU=;
	h=To:Subject:From:Message-Id:Date; b=FbK76mCxfumNZ9WfplpXnR8xf2Z3d4Zkq+v5EMi5Ax3egnehOZ4RoKkiUJRZ2cBPCKoBYp8PqBn4Xx/L+3gEEYYCj7XUqd6X85rLrCrcZ0UPMOd9oGLZkjwU9/xQH82CLynIRpAwAKYd5wY594fyIV9M62ETwIDsBFjw2nYDsks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqvOu2Ld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqvOu2Ld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ADDC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745975393;
	bh=dt7n+dp/PZdznxliZDLL7hg2lW/yR+RCGWf8VXmUZSU=;
	h=To:Subject:From:Date:From;
	b=XqvOu2LdCHmv6gkJjPJL1tW6SC9i0nS8wS5dD6CCXFH+yx8bQXkfeNzqZ4ByASyA4
	 AMzocc/seFmAPk5qUEuquZuZGOiZboKRfGTjn5kTxtFRH/TIZgemLLFOqTgg7w63d9
	 V0o9jv/9uSZ2gJc6XSk4Ux0h6eu77BZ6JW26yLjpdDEOVNrM2f7Y3Z4t4JD4/nawvl
	 8s2M+m1Gg3q+8z1UPDaxqdkrTlgvkNfatw3kyKRzw/kJ/do0ys1+MGuoCjm2M6pipy
	 y/jxPqjkmIkYmRgjuLpAqmZT45tZa5wIsU0n4I9H685Dx2tKbJv4rpuE1u3TdVE1/t
	 PvEJcIXyM/aRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0C8C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597539357.14811.17779344045829434449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e5e694745b11846e98f5955d7c1b3f84bcb978418ff009e59aa94525e699583
Date: Wed, 30 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745975393
