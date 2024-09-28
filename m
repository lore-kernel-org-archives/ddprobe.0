Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373BD19A2B0
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727514354; cv=none; b=jKkMeACVtE5rlv+eD02BMcGAKGvvCHVXBzHZ34F4aNc1ERfs6iBt6dhCeJfUXJyyXVudWZa7abyCo5YwyCNCjfQ3NVdLA8SQo33kFhmFqef/hAiECo7eEw5Aib8ILUrGXFsp7sJwkkFLG9OwsJW03bqi1iDrDu8GoTpFfZDR0Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727514354; c=relaxed/simple;
	bh=bHcNlJKNYhMWd93hHfWNTrHGyuy4nsZKyAX3qZynqbI=;
	h=To:Subject:From:Message-Id:Date; b=mzxa1Ei4apKFC9iUHFF/1EDbFS5lMVWt8ZYfvvUt6EG5uw3BCBdYBb/5tolo/b3mgtfxe8q2W3DRkOEFO2w1bZ18+565zMwCQTd3TlxFjBozKJn0mKqEr/Juf0zpqyh0HxNNhs8zlerRo+tvzwUF7iTrnRhXJfCXi9vHPZUJDxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8z08Auc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8z08Auc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF30DC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727514353;
	bh=bHcNlJKNYhMWd93hHfWNTrHGyuy4nsZKyAX3qZynqbI=;
	h=To:Subject:From:Date:From;
	b=D8z08AucT3aldruO8Gf7EO+kKsL9Ygk/Oehl8DPXUkf7IUC62kInhhG3gX4ewA4mU
	 Wd7+HENSqNBBv6ZrnUx8ltgqUQZ1m9TPeFj8Y9/amkoitKiweRQgdrjwY+LufPwndv
	 9Q6BnpoAlthHgoBj1Bb+KHXGc578bBFi3ZsIMY4UoWYc6hYAALucyUEKCM8qzk6sqo
	 2p8U8EYa/rMeuuwRlxxQ9Ud6RBzk/cT8QKV3KYX4EIKku9/9APYfRq5qsFuEBISb82
	 aWpZ4wnM+iNEWSouhNZ7I8qNN/DD6A0rM284Ao3kz6B218gHhUwcnP0KYDo7SxMU4o
	 60eLIzpPQ6k7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD93CF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751435360.5108.10660972691085608143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5248a731bb50219ae4ce78ac92d633f7cb0accaa24c5ea69eb6d0e88d9206bc6
Date: Sat, 28 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727514353
