Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B512EEE6A
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782411454; cv=none; b=rrU+dkkFA7mkgPloBe0YUgRVXfwE0PqJQO+w0ueRnadPhYJJ5f4qlrwv28NIhCWtfzVeBm5VQKlArMme2w2JXR29jLtGJfFwfJlAedVxVW7telnnY4sCK1qjzc88hAHzBAUG2y+0iysE++6vtm4mlwQlUE3GwRS2nc7HraodNJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782411454; c=relaxed/simple;
	bh=jwCkpL0yIShizmIiI860UcolcGLkzQ6gAefQi4MYtOk=;
	h=To:Subject:From:Message-Id:Date; b=SOe04KJ3dIRPjAKORLo6bVp+KrLe746I8JeTHP0ax/YrC3JZLCV8xczG9BdQEWjZUqMedJCW48bPGIiBQ6Advw2kIy+R5I7ancQpjaZFiOHxkiHACfyLfyf+ayUMheSKOhwXPRrspV6hrzi+VZcFtQs+VSWoPW1e9YqHkFUPW0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egMTt9ft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egMTt9ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6CCC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782411453;
	bh=jwCkpL0yIShizmIiI860UcolcGLkzQ6gAefQi4MYtOk=;
	h=To:Subject:From:Date:From;
	b=egMTt9ftX0JbPg1qAkP1ds0Fp7aGlGdyItrJKzBR8J6sFAHvaPPGOjwueJ2XL1T3q
	 jzZMEZR0aBiLRLSivhEGg+RHVR8bd1WZjCw4Yaf8VIzswklkpSNxXLnVfCr7iAk/mY
	 pZ8jci7oG9qi856lx0jVZuuQCdMF9fTwPir6N6V+xtqImGOeaV0Q4zHmZEKqLfXpuj
	 Rlf0hSDD0wJgZ2mepnOH2QhBWaRDa9sdpiXkauOyHBMhDAukW8BihdbGutR5wm1S12
	 l/ZQAohQ8k1q6F3+54RfKz143pUe+0zad9X0OAEPXvmdV2tQbHP/f+1x8TZYmJMiBh
	 bR9vnq1NXaUmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD831CDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241145369.4661.7908350753864912105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db88431d9893b8ba749cab112e0154fd98ecbb1d2ca2825a7350463471f254f2
Date: Thu, 25 Jun 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782411453
