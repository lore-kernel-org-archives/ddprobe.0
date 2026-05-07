Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A413222597
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778197654; cv=none; b=Unqn0/7ZjZ1JESPDurUZlM5THX73sHWtmcgSNda0L7hVUuvY+PisGSnTqqRurQ//B6PxuwPAUo+s1YTAUbrUdsOZNQMknZnwwVHmtCFNE8tP9JNxBP9YbMGsaaDEaD/Xqsx3TUJNqOLCC36TVVjzVpXgF9ZSSyvlA7COYxvcuLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778197654; c=relaxed/simple;
	bh=VB2FMFFVeU7LmpqZ2wDFUHu2i4sxHIw7e3rcee4dmoI=;
	h=To:Subject:From:Message-Id:Date; b=PiXO2Q+1XmOSF1oi1iEubZifV/ySQ4vgD29GleL0ZmzP3tvg4y56RgNa8gblHW4TSvScmkIwRJftYY7IwvpkXC7gB+Wx2S8kTIhMyubdNlXewqfTjuU0Ol1UOgkhtmJUns10lkHC51QClrucjrXRd2WGk0H+ZsjXAvt65WpkrNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aazVmsAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aazVmsAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B961EC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778197653;
	bh=VB2FMFFVeU7LmpqZ2wDFUHu2i4sxHIw7e3rcee4dmoI=;
	h=To:Subject:From:Date:From;
	b=aazVmsAC8HQ9J6dHtOXQXzOsEGyOlTtCJY01fXjDM4uYuSvwUaXrIUnY1sN53zcd6
	 /AztQNi3xjonAhxWYr/5C9xYgC2t5Li6M5Oh6mUHj0Jwp+vDM/5Goe3fbztcwkcy12
	 TL7DJ+4RINWF1nU0hBW42BqtioCObiP+JW3cnjuBNGUtDAgC6ki1HNAecrnxFwR34a
	 K3Db87llR6QbiOGvdsHydmQ7QcyeGmShP9uJZymPsqXs8yHtWTmaDNdhFlrolPF/Zb
	 nM7FP2NmsxC6XrEh0hRkkvkYDUqvr/N0+jjBdL6C6un4hLeFk4Dtj6AbwoD0vb+C9H
	 K1UUn/l5OZzpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAECECD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819765369.27353.18139425953279092272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84655b96113be3a0855ee8cc3de2e775bf8cd36b3633e5eb1aef316f827a9042
Date: Thu, 07 May 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778197653
