Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5037B2472BD
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748490594; cv=none; b=mCyR16+dK+k1jkalmhxkkzGKlFYMZOLLGLYs8ZkW9m+U4BcNy/nB1OJLDtFFN4FrvJ5D+S8jxUTNIo34O3D1h3XcgcHHiY+4erix+5Wya0TWJ+IvjnaYeNbBKT7fGLjw4Ssf8iOvNQXw0av2Y4jX2QrwFXbjyIQL/ipC5Ni+7fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748490594; c=relaxed/simple;
	bh=DMqcCZJc76vzLgHA5rY0TU8MDclCrWhQYGzKPtmuRzM=;
	h=To:Subject:From:Message-Id:Date; b=hZKKb0PLAXttDQD54BJj/KRhc3W5gb/rB5wpTdhzqn6o+o43lvhEl7PZgVbe5I3UZffm6e+JpO6HAhrPjAdpzMdNlz5pywewc8cZZa9p+FRLRFCz6jLd/Becm4OlkwfhUF7IkvQ+tloBy8hnpIXfttCpgMoF5GhrzwsPLbpbwqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKgpQlpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKgpQlpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE35C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748490593;
	bh=DMqcCZJc76vzLgHA5rY0TU8MDclCrWhQYGzKPtmuRzM=;
	h=To:Subject:From:Date:From;
	b=sKgpQlpU8h+9sgUfsAKjiHqz2J+mghX+3gHusMuelw4aiIW4/26utbhufY8G4xxGR
	 bvJr6eSWE2gmLcl18a6Y/qF1sySgtbar4UGKg8WVhldZzxD/LaXTDr1zrBedm7ZsWB
	 68zZ4tomJz31CFGoPkaWqfQYyg6VBqIi5SXw+NVpDGigDGGFYOQ29eQNex9Umfw3bm
	 FnQI7gck3wBbFCmWy0y20hjZgi0DFPg1tjANxwk+wzcLsyCsomb4Kz9V6qBdduLRqa
	 Zg4CpKhsjADoh4cQL3CHdd6Na+N4/KLtrecUASXJ2yFjzHtDf6rNI49g6TZweNn3Q9
	 FIb7BHl75Pn5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F30C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849059357.6643.11806374989410163152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5dd02e2bebb4aa8adce2f35424c3e62e17d0c22fa9b440f473546234dc35b8
Date: Thu, 29 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748490593
