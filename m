Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253D028E579
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757188794; cv=none; b=B/y6JVm27Qq9Sf/lgQlTaj9Dc+UBCTrk17BNhZrWERhCMfmond+DDne+zsqZFpJfXAldK3iMBBUFd6ozkRVwFSi2Bl7aeR817ewXySTYRKFjvP5FtJCWJgoYzKBhTFV/+qVtzEgVK2L2tt2UHoGKdIvCDCws3vjb1guJC0cj3u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757188794; c=relaxed/simple;
	bh=D3YKKuOIetxV8k7rLa/S0/KXmGyMh4RI3uD6+AOrgeI=;
	h=To:Subject:From:Message-Id:Date; b=n2rZzWtIie/lpXmAo2Oh3yiKciyIOVWKNo1IbJEWCeeSB0fhzrLcfH4Ix4ge0DduNTaITAwVnUUu8fwKJqWvm1X4V344kmIcy7VhohGI8RQEmynyyNXycAtEcKRwX9kS9gYbc65PpIOvJ1Rp8HADkdWstc9lHdthYgSZJRdy7FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhQ3Ya5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhQ3Ya5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A330CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757188793;
	bh=D3YKKuOIetxV8k7rLa/S0/KXmGyMh4RI3uD6+AOrgeI=;
	h=To:Subject:From:Date:From;
	b=OhQ3Ya5og6fTzN7LjXXqczfdG/uoZV/BQfwO7ECcMiUPEX2PLgb/FVV7jWtaeifMt
	 O6j1Vm2OCIYfegb1P2B4BfoDFbTaGpzX0Umkczqh5lUkVJNhRrFzyrs0EnD24k0rMj
	 V90+HW+vy+hnMCKuy5k3VMdi5N83rz2lh97nAnjc27j7g3UQDRIdxoawLLRE2MCMuO
	 yl2nlr3TE7DOM7d+khhoJYVhA8QuMMdZr8lwPxTk+AevaNnOlKxmAj8PK5FdrADPmZ
	 pj7yti/Ef/Q9w4TJPe/YTTV01UVfnm+dGW+PKBuQG1AZaJRv7mprIYYKLxv/yvB3df
	 hdBv8FBN9bCGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E29CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718879357.12748.3440930167759493526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cd8eb5e2cb6a8f1a028d1582c1fa4e316e4cf078cd017063245581aa26fe7d1
Date: Sat, 06 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757188793
