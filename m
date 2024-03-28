Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49107CF37
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711634297; cv=none; b=OlT76Rxi9LCk+1zg/0icYLtPXBRYo7pDmugw4Hlgz7nQ6HGgivWlCTlgREXRfo3I/bgkB7MhBJRMzYIRaOM4y2R3PmwKJUpEi254svHeN8GT0qwKfnUkT36jsw9oPmnMlSghQhgN+YWhAy19VZhSzfRYbwCAFKGJpGwKGvLSsNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711634297; c=relaxed/simple;
	bh=WPQVtWcXcobtKu16NiEt1GWw4RGnGFdfMMUHccdyRSQ=;
	h=To:Subject:From:Message-Id:Date; b=aVYkVtXpdzSUQdgI+xHJ8VIHZLhhW69MCchr9jQxGsztW7BbI20wfU+TWxnT+42DDkz7I9E8SU79RnzVaaZ7J9oFLswAanEKC9Zf8DfJ9/yO6HzGtvoAJ5IT088UC7XrOTiZIGPnZvgwNEbjNtP6Y/oBV1Y8dH9xjM//xWaxGk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyxW0PgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyxW0PgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A347C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711634296;
	bh=WPQVtWcXcobtKu16NiEt1GWw4RGnGFdfMMUHccdyRSQ=;
	h=To:Subject:From:Date:From;
	b=AyxW0PgPxuyTDddRUdPqSMgFXU4ub+/Gb+wrNDH4rS0YGu5seHRWYJSUnwST4jr1l
	 sJqHWkAuPJXscSerzltu0iEshMGZqtdxCcl9n4vVlvpfDt/IW4UsjHwqSLU2tHw7YG
	 xUf44XVB7sgjZvEHmykA7P1OfF+m3NA07UCOdoLvnj4RmrHzt/ErGvzFpu1bAvdYX1
	 p/y/i/5pH2QtzYisVbQ/GamF3F89wnw1tAso01qT6J2k3c7o5uodEbS2KB/pjT21Q7
	 2qywL6yQyukQBDQubAC96fRRWaiA8UobUdA9uljnRlOmXi6/ls5VUk9Z5m5LFdpc+a
	 wf81I2Av4nWXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60280C54E64
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171163429638.16682.8442380944130350981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39a70b2f4aade32660482bf194b45f695eaed7d083d1ac74cdc4c931901fc0c
Date: Thu, 28 Mar 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711634296
