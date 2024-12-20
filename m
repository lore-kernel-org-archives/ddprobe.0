Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251AC1C07DE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734737154; cv=none; b=HuOhqMQ0zQFC2phqw4iGO3iTEfB7yCR03Lgrs8ugSgvwGJHsEQZ9Sef2j3oz4e5e2kAi9KxypFh3dNCMu6I1IsIuKjQt2+TEbqUujd/BoZuRgiRFYSfWVdtFwk1na2IDqR7bUUjF6UVt4Hwkl5ReKT1LWz2J9UB2xpw4DCaS3MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734737154; c=relaxed/simple;
	bh=faAUxZI2ooQjP4tjMjHHlMw/gJ+D7gUnAXX8l6aZsGc=;
	h=To:Subject:From:Message-Id:Date; b=oyCSE9hFgyx1Nj/ssAO8kdRneERj/wkmID0DZLHTcOUFP3HZ/ZzHJxah9pcRtuggMSlueFH0t4woRYtqPMZnTZlYhynkbeaeu1cjbnKfGuWjr2WKPf5VlVZL1AwGDBQklw0MJffpaxDVkXfBQojk+HCCQbaK9o0vBbndK0Ar3Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1jXpALL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1jXpALL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31F9C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734737153;
	bh=faAUxZI2ooQjP4tjMjHHlMw/gJ+D7gUnAXX8l6aZsGc=;
	h=To:Subject:From:Date:From;
	b=d1jXpALLRAOK4GyVlJBRmYb3ohK99y+dUg0GpNJqEI+R2fROZgxNEGyKElFM3BWBP
	 BYd9+ZO6gfXWGYvbe4ukJppMlPn1u7FTP8hZTFyFYL3gn+8ZrOazMJWddfN3Evz+dp
	 6OXEwZCr1dTnApJwvp/JeSjyuibqhu3aGSioWG6EYJWNdPlByQT2G5Keoxw0hJl6aJ
	 8HsZOGoTRnQCZiIteKKWR2Kyk/1GMnLrogrLUG/etWY8owe+3GhTd3SRp5naSeAups
	 S0Ez4hk8cv6lWWMPeL5Ox01ySuz4s8Lr1AotRSmR9v5rfTTrT5DKT9g/2SDyuyRUMJ
	 D0JFhLBN3dS6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E22E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173473715357.30672.1074394172665783928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc020f73ee6ea93d20c1d12a2841c916276118124c48c435ea8a0225b1a4ad4
Date: Fri, 20 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734737153
