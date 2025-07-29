Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F59726A0C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753775394; cv=none; b=AkWVLsgj17dtIg8D+eFpD2NusoBy5tBZyzHNIL+CMR8nz2/jq2RUKqjHBJjZTSYZ463r1TjPS+3dtHi+dwEdb25qoef9WIls8t5BewWn5TMSEiWL5TepVpMxsqXE1zZZ2jF5fI1/+lTXcbSYm4LkH5rsQZr/77AVbIwQ9mY0hkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753775394; c=relaxed/simple;
	bh=wGBaNneQdf/rNV8PWro8Laub9GSfE3FTptswuZTezqY=;
	h=To:Subject:From:Message-Id:Date; b=ayjURHOdpPF56NmdPMH6L46DhgqI2z86HavNXFVkl7xaUM6e0wjJnfT5Gh14gRAeM3Y5PiupeueP8KAMQ9l+J5lLauAnJMSZNgeqP0nWXR3W2lWZwi81RgI2p9Y1BN3RVZ0LLqpwoi+bX3Bu04n7fGUxuSveH2sbiO4EPZI5pCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjGtQ7iO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjGtQ7iO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FC2C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753775393;
	bh=wGBaNneQdf/rNV8PWro8Laub9GSfE3FTptswuZTezqY=;
	h=To:Subject:From:Date:From;
	b=jjGtQ7iO/9BCvDsUWjCjG7m4UNAtCBJ0FJdZcf3GUuFsVCUXeIiu7W/XHFmvwKKvZ
	 CGbj+HRyUZLDmzOzJvnD1yoJx8nfD0SrqBBtsDmWUVxaZ4M3oT4iBNSvPNzrXjUhqI
	 YoBxeVitntg4AUBb6ehVkBqtQaTbI0MFaDUQR7gxSRKT+x85d1D4Kjvpp0IMvzCwff
	 Yx8xe6FIGvl7aHmpIcwbcQdTMYOyjt49xDzLjTpPYfR4av+olOkQMrWJHBIC8vzLY2
	 gkcHPRkuu9vlyYAszIIZR1XmB7GO3ry5P6pe5cOlymWyXjHm0MF1FpOzEZXsFveWt7
	 ByAtNZhnxh4RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936BFC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377539358.16894.14871501947127324964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e7f7e98542f1c7668ffceaa656041aac0b5923383613fc2c24cd08c16528f6
Date: Tue, 29 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753775393
