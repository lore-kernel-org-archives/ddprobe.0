Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512F0149DF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782582514; cv=none; b=aHYjNVXjqq9D/vg01EDOuJUI1+hDd/E/W+ImVXraOYo2RhE10z+wnXW1Wn32GTTEl695XZ1qNBpZVqRshxq8AcREdKxDS/ehCe+4Wjuv4b1+/ma72RZ1Kn494A+i52Jf3v7vR+Kz8lZwSBFpjRiQKYt80X+AvcT8SYDvB4mOzOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782582514; c=relaxed/simple;
	bh=/YPxFWFKwAHACV+41Vw9pPj9eJCE2c5r1ktscerIJt8=;
	h=To:Subject:From:Message-Id:Date; b=RLpgmMZ0PVpacnMVhYZdfoi37PZrF9CfH95/5lZpDRyvnpxd8M91sBr3rKEmD1/Im0pUoHUI9ftA15wrPBaIB51tGciCFYJ7F7lKWPCgw0zKkNlD5ouOipaWFOsV4x81fqe9xM9vG+OGUU/RqbhNjEuHzJbaXx63oB4tiQZSAyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEn1zxHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEn1zxHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A64C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782582513;
	bh=/YPxFWFKwAHACV+41Vw9pPj9eJCE2c5r1ktscerIJt8=;
	h=To:Subject:From:Date:From;
	b=cEn1zxHYVQAerN/9zwVkD97bjBhVFF6f4QJ1uouhUvExDB6zvoZ8UsZE/37mSxQnM
	 fP3X3kn+fJa3Jzoq8HKcTWxWjmzFGKM7w4wWnBxbq+8bGelpAbQOXHniAM+L+c+dVt
	 XBkN/c3ADjx2Wt9Z++R/4/98zXUavaz7o5ZJjt6LAEe0ljt+Xiix9zO7tsMxjQ+NfO
	 aH4cGAoDSjMtITJs9Orb59p1UsjnQeZUf5HyqAu82lOhZxhBq61YC7FujvBBFUG1q3
	 GgCz47QfeITbDBGTzOb/VASQSYIINViduc2lhzRjKVkWitdLWtx9YzifKWC9KAI9pX
	 a1CZOUmwDAwEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F61C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258251370.29240.11976170259336645242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3a9356b01ba87242ca3362bfb20e3f4c38526d86e20c93dcfbd075b5103d39
Date: Sat, 27 Jun 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782582513
