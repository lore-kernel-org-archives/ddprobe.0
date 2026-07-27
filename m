Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2A1429CC1
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785187234; cv=none; b=itv+zMANDYGoG5Dps4FBeeJSB4Z+FoF8eUIjsbDpYvnRudzf0wMxrDtO9RWE/PZRptbaSSS0lPZk+1hfVdAi9M5KfBzv6rIY2OWAWaglmMJ3xzqk0+bESy0ccIZC+dUMK+Bp5FnBJ2A2/D1FBTUuKBhhzsvnalAg+OiI4U4+yVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785187234; c=relaxed/simple;
	bh=lW73N2iwBCBXqefmzlYAAqW+C7rqjqqKgtCKyDLmv7I=;
	h=To:Subject:From:Message-Id:Date; b=tnzX5rhTHTgk0Br+vvKAIuMo4P27aLnRnh2LNwHM2Sd2eZCACPv7mNuS7nw2DO3KX43a8PyIRn44jakTYPbl7yxmHv6QsDz5DZZVzFmLBkUnzFmzh1cqBE7QjRRRI6wsrHZtg/LLMBvPslya0yCyd/VLYSPDoSzwSKvHHCtc+f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOGqJSO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOGqJSO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC464C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785187233;
	bh=lW73N2iwBCBXqefmzlYAAqW+C7rqjqqKgtCKyDLmv7I=;
	h=To:Subject:From:Date:From;
	b=vOGqJSO9l+UtSIjvDOHzsxgNq7Kk8p00Lpul0nQnH3Rky+SF51nksITWoLzD9vPfj
	 cf1KJZN7OmyAAbhkLvipFUVILcV6vPXPaVZiDhrIpt1alohYz74vHPr6orvWBTn0+/
	 cbJnSAyEyZBM+yFySYI/TmquiNpap6nRYjRRf/beQzGnAkhJkt9KXaYY2yt3o97Yr1
	 hpq1NkZNJk1VbplbD/uFf8ZnE5RijmfIhJBeEzKy1rdHdL6Dbh4ec0omkLqgMyzkS8
	 lFsl8YVKX/a23dPxZJthq9vPTl4VFFd4/XHG9zxdaFvLFIWi2I85GXq8PaIgU43eNF
	 eRF+KK+OfDWKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A970EC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518723368.15562.14317847378919812135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59cf81d361bcc26c9cb1b40cad6a85197a2cfe0cca813e00c50fbcce4f700bfe
Date: Mon, 27 Jul 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785187233
