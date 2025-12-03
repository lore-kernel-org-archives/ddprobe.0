Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABC332C936
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764790974; cv=none; b=oh8miFq9/GITH35+BaaX6X5w5cVbUzYu+5prsRIC1cubSVsSL0qk4BGrRjsjP1lKydLcXjiLhM9sNeRLXVeP7TmA88XwO9SxjR3q4x2fWcD9SdqVq4N3PoqSsvdjxBe4q4rIxot21LnWTJ3O23EToiZiFipEf/76po4weBIrAd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764790974; c=relaxed/simple;
	bh=9G0nD824qVTVbxMjZlUEVcJ6dgrtcBgixA2JOUj4cg0=;
	h=To:Subject:From:Message-Id:Date; b=pSBXIlKCnABWZYKvybgR7OBWnT7HpRKWiu1rZqIk7pBv3v0ZpRJusW9un6Z4TkoBVJrhnuQfo//z94KqvXlHO18a6UyTqrz7QjLHfEzNLjVvS57LmJmDC0yKvnVtsqrJh4kEhGiA/QwBSHZIT91lNUh2GSVPZ9m4BmKRAzzQYRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzgI8esj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzgI8esj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A335DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764790973;
	bh=9G0nD824qVTVbxMjZlUEVcJ6dgrtcBgixA2JOUj4cg0=;
	h=To:Subject:From:Date:From;
	b=VzgI8esjb1mA/SrixuvxZydkS4h5pMHIHvYt4XCkA0IO+Ng5Y3Pe0p8cqijwT+6Nl
	 fg5tKwe9ZhGXpY36Xfq8fihzSMIG2y+krymItSZFsknZiyCHNNmQIbgNrSXQCIPXRg
	 fkGQBxSRL5jS1ocGaBR1j+iap1TFKqBZxqTiafttcXaB3uajwSZzSMuDrJ0w9MKHIj
	 ZmtRejzNQdfiztdDoftTJgSCOAOvCocFt0jwfR2IR964U2E5WNzkJ4EHBoByghn4W0
	 S9QmdhxRdCYEv1v1Y6dqKhkbxtB9X2R7XniUfyHfKqq1ul1wJQh7peSfPa2MvNSCNL
	 xKxiEXOVBhb5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91267D1BDD6
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479097358.9116.5555217829371109638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69a6850466152074289b9001661d72468eed4d070a680ec71887da9d6fda6fd
Date: Wed, 03 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764790973
