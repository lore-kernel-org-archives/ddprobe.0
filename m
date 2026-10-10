Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F02253B42
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791596434; cv=none; b=Y7y3qZUl3joz8/p269b2V9OGwD85t0PlNBC6Ud/2TfkY9Z5FtYdCK9yzNsySZdeRv1yqkYVTqwZVoZosKq+0vuYtx4RmBe/x7IywK92lOT76EP8Fc0pK6PE+tdn7uo4fcHs0PFBTzAQD8DEHC5apqh0kxfNBzJbhk2cHSWKknms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791596434; c=relaxed/simple;
	bh=LkRu5e1yg/0qLkxEizkGwUXRuogOxFJZkLexkNkp5Ug=;
	h=To:Subject:From:Message-Id:Date; b=h5f3X3XAQiY9qV4NaEbh6nBQrXDek8IHzw9vvF61MEMFb0eHDE9mmP2i2uU6QNu+Ul2jtpC+JoaqaURtlXN/9NFcX6iYCjRUVrbcy1SztCM4ebrpdMX1S87o1GImAk5uWRcM4qvmONLYGImAa1mKXa683BPHvXuHxVda1oRVsDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qe5WbKrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qe5WbKrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB914C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791596433;
	bh=LkRu5e1yg/0qLkxEizkGwUXRuogOxFJZkLexkNkp5Ug=;
	h=To:Subject:From:Date:From;
	b=qe5WbKrJVdlvrpEw5a0vrmjuMOby0k/XNx5eyKEN3MX9il68TH3Rv+IFdSvna1rel
	 P8gmpypEddAWC/EiLvK+PdjRSlYAfBy8hTTFT/HSt6v+Jr7mR5ozlspxGkqoq9cm4g
	 UH8tseV5i84NQnmipz4kFUYSMm+Bmu/IZqC9/upXjsr+PC11ZITo4i9LCAjv3keyJF
	 1I/OjJ0RgE6DzblM1xKb0e4LAsrVhgep+tZvm8n7g/F88ZUDympO3G0BUsoKdLnrku
	 5gLlhcdvOlmhYcKjknMtiN6n3k0oHoJ48wgRayFvh8AtCUuXjxIErJaqF71HL/1vrm
	 j/b0EhtvCtycA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92AECA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159643368.5779.5847988269473523924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7cc50e0d1533dda9d6526e8c0f0231f88e8dbbd0c374391a92336afbd0e6219
Date: Sat, 10 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791596433
