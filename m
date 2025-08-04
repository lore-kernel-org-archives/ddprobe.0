Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EC7212D83
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754308194; cv=none; b=sxRzr+jCI6R+Qlt5s1ISQPe9gWrxckALQxI+NQ7NLuqcHXcNEnN/jTM+5SULB7surG73nJF5cDD8Zy9tfb71zDw7owYqeB0cF+GDdq7ZeiIZfXoGNBlcQibaE6OeZU+Zr2EADvrNZpGMbbxnXwUHDu42rO+QAB4Pt2Ak9CujXKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754308194; c=relaxed/simple;
	bh=kSrOhEJkj/HDdY+KincGFvLBG2MOREwB7oeiSqaR7Iw=;
	h=To:Subject:From:Message-Id:Date; b=Z2tiyC+nP1DWbnM5j14nH1whIQqG/2QbxX+HZnJYx8fXe3A42TYeqkTd27xiOsoT64y8IpHKwTuhhEqEH3h4jJ32T3J1XKvJKp1OgqZgNtPeFTQpj6BCOpcz/I3ZLW40liuHp6ZK/rQC5o80Wy7xSQ/adnuLSvJr4ZxxlymA3Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0UXcyE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0UXcyE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2292C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754308193;
	bh=kSrOhEJkj/HDdY+KincGFvLBG2MOREwB7oeiSqaR7Iw=;
	h=To:Subject:From:Date:From;
	b=R0UXcyE72QpKsjuXWzLpDvGZUHp2yDE9qoptHHc2V0aNNyTX5kY2N7OeXyE4VOX7d
	 /I6xQKZgqyuQ/D7ejqeCuhcuUoh8nwBFBA1xfg0qbGwIgWEIn6OjCS/xytpIUahPe7
	 h06GyeF/XyQ0zraGyg/ZxdCHprSkAjrGhFzzk57CkafJyiWXtZpJKCTHQvYd1d4409
	 omlAZDgTA//jalhndTtsfWuwbQr55IUv3LSFz+WZ/pWS2ZEaBSn/OQBwIkaGOANvfE
	 FyD+9b5uBrR0Z3giuSKZ/OLzhYp9KiEG62eWee3OHtu0SYXqhcS9iUi40o9gpJvVhq
	 3PhQNKghPAlLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91122C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430819357.1510.15143344546888583481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96641826ea2e7b598cc337594d9dac422e7f5f43f013b3c6c3df5b480b8b97c8
Date: Mon, 04 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754308193
