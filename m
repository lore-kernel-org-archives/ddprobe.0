Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678BD1849
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 10:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718447303; cv=none; b=Qozdx5qtjM+/N0/DGIzEU1nO5HgKBm4qXcm5iddDkNzJiUyxKCgTQ4nm82QNMH41BQTCP7Pw8Au5nJ/lSuq9MCKSHJ3kchtT7HhcOBOOnfRn20LYMDkuv4MiaRs9VE8GooCC+0zQ67dFOAvVpuiPKFC9JyqYPwYxEw4HVBqmGbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718447303; c=relaxed/simple;
	bh=/miiA0y8aTIhhQL0POYYBCy/O/4Y1MowzhHU9vzoh+U=;
	h=To:Subject:From:Message-Id:Date; b=gEVCPt1F/GYZpTXaVQEXjuUFpw23fd3DpFnlvrTytK2LUBY28gc/6ujGH0CKrWOj3jE9dFp5vkW4K9dHtzHfpdz59nV9FegfWjKXqnIiVVbpycpiro5iC69nfJYsE+7SvlbOqjH6/0GiBrP0t8F5TY3jLnMS196CM2Vjyw/KcrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsoTGIcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsoTGIcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF953C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 10:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718447302;
	bh=/miiA0y8aTIhhQL0POYYBCy/O/4Y1MowzhHU9vzoh+U=;
	h=To:Subject:From:Date:From;
	b=qsoTGIcSUGYvFehSB63cr1v/dWj6OF642fGOai/jg1NOwzdWMUwe634mexhB2oVPQ
	 /4s/gvrtwyxAnsIaXEe/SReRlXKehcyY6KXAEw5GshyPryc3bt1jn2hMTMVe+mu3BQ
	 vzt8zp5lB+XDLx+3UAvrABmdq4HxYH4iD0lzOE1kg/AI0KWw+kw1RCsk7yM0bwKXqZ
	 Q2csXP1F8Aa8s2AcI/FyuvZ7Kg9VtUF6Qk60Gaj81xMcaeWO+OX7q48hySJ1TXMieh
	 3OXVkupPs7U+2byuP4Jis34m4XIbO8vCdHszcNkNsXP7458iB4nZ+zxOS5oplveZyc
	 U5CaurwMWRJqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CA4C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 10:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171844730277.27771.2637561384086449745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240c7c6a1735a1a1f5bdabcbc60d99e820b0b1a0e235bf1a344247d453d7d293
Date: Sat, 15 Jun 2024 10:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718447302
