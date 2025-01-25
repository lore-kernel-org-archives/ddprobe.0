Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4332D1DD0E1
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737844554; cv=none; b=LhQbyTBA5rT1E3UoZW4Jw7YTy3S4WNVAvo94h/bpm+2xjqsvYUwwj1su1/NRd/O3IfJpw7baoSu+W8Z7Zgs32n10PWcLsK6sq+iKHdrZuip9MifLUEHHMLIAwTk2sk3OWNd8yuIKVG4UtU5WAsg0aEr41NOCRJMPsncXUGhWR/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737844554; c=relaxed/simple;
	bh=e9wUKD33c4qjKYqpkxCqVfLQJK5NBOg/2vrZDCsFA7k=;
	h=To:Subject:From:Message-Id:Date; b=FxAl0pPXVXgIuQ2THyPlEIoffzp+8hErzU3C5rhwgdq0GWgn4MnSrz0f/h9vkax/YnoZaSaGlgrC8ri2CSGEDPyx2bTnoc+zsTuq9wPAvFpfbneUYwxWajUNiDn3HstLF9jt566ca4OymeQohbcDX6mLBD+nsPBXW/QOcl4KIAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1W5651J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1W5651J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8947C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737844553;
	bh=e9wUKD33c4qjKYqpkxCqVfLQJK5NBOg/2vrZDCsFA7k=;
	h=To:Subject:From:Date:From;
	b=U1W5651JKyfTfzKedCyESN318698iitoLSdFQbZyVB5z8k9rwZ7JgbKX7KjCTtWae
	 90IDzb0/GBSeMFU9SXOPlybPBfZk/qRH/1DYsL8oPDCuIqlRobknmNlLvX29dZXMgr
	 85xivYlN7mmpvmem+8YDK5vAM2u3p62ykOyanGI0i26axABhUjJ4nusozwGJqh0CiH
	 R96gIJKNvmv4ehHx6s5grxw/+p1sj98C8zf+LyWOA9Z5g3zk2aNLY8NEqz+7vuWmjk
	 8ZlMBPTOsBR2qv7puRC6BBmsNBbAr+u0FJGsLrVSV/DNA6EYrnG4Z4rRsSOQk/W30V
	 9mUwAdw53zD3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96850C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173784455358.31837.5431343782983450084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e38c4887f6c0c3e83b6f0c6a8109a9015d0001dae6c7aaf8291015843f56f8
Date: Sat, 25 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737844553
