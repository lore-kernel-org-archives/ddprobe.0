Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567E14C76
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742778594; cv=none; b=EL3xVie4TQz15Lg9G2ETiEXIZu43IfnzMuZLoxG6Rlx4ikBJytv+sTBNZLUxTQBbslKOggbOSTSpk9lUH51Be1xLhcsysCj60MgBZ5lDqYPfv4NcIzBNm0Ru0SLLKCJJJYb40rNEJgNbqucs791j57GZ840Vvszt33z0Y6Dx3Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742778594; c=relaxed/simple;
	bh=QfSS8BN6+jDQgHBWXcJEKUd3YiIWv5t97iWIo2RvPS8=;
	h=To:Subject:From:Message-Id:Date; b=ErYFpYoFi2xWosUn/DFyJajcxXdn9DuSDgDx3QZfAnn+/Tv35MU3uXqWYMI6ZuhxNzSO+4llIWC+qldqvMWlWwPbjIOKWfoEJtGpaGfB6pZCg+FyeXNUhhIZJX6jz2iHhnu8IEUP5mIXTT7M8HWUKInlUkT/8NUtMz2+juX1GOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ucd3vOR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ucd3vOR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE39FC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742778593;
	bh=QfSS8BN6+jDQgHBWXcJEKUd3YiIWv5t97iWIo2RvPS8=;
	h=To:Subject:From:Date:From;
	b=Ucd3vOR/u8dTJMkn2yHuzJ0ZM2eMua9CDGodG6XlrF8TwO8qH0XE9x/6lcWX3n68J
	 DkTBwDnsHB3Se+GbzQcL/aO90ellxV9aH+oVbtCdI9bzAMM4oCNvP0tTlUi1IteARu
	 /Uj3bQOSXCON0RRUwc3hCQg4tIuUG8d7seK3ZjqLX6TzRp++aFz2Ddglb8X2x3zaV2
	 EH0CypTwXOySYims9egmDdUFCI/sIhXn01wp7OKwrsJjmpCYzupAp3AQ2630WCU8JY
	 7N849efGr0XduERYhS8PHdcM7cFOGUPFyJK7dF92UKRAGfBP2ishxcV6HJsby2ubfY
	 yp1xcv9YCyrbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8566C28B30
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277859367.27073.3946249448310417929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ba24287850a9f52479ddfe9d8ee4ef7be1ec9552905fcf4f6c1465bf05f5df
Date: Mon, 24 Mar 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742778593
