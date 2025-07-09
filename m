Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199555383
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752047394; cv=none; b=lUyfD1vMaNfozSUYiUfNgAQMgCDaAYLCwSagIAaydFSafACHp6OdyJKh6EgBP/4Zu3UVWjduWy3kkh87+KPECikR8Mb2iLCSbmQQ5KwVDlQ5SjxNutsyTgLLelMov8eKQaQ6QU0AgEBUNnrjkLE/jNckWTScUoXrTltLrUEUU6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752047394; c=relaxed/simple;
	bh=4QAxWF+F8VVXfW9PyZZEkbL8ge5+uKVw79NGIRlAl5I=;
	h=To:Subject:From:Message-Id:Date; b=ohcbb8XSaUyLj7nSqPVS2MgCrVzUptCFqfrNtxDzz2ki1IUGCB+sRoqTceYKi0Ih9EiERWWDm26jOP5M9cjNm/ioT500edlGqn/6AwdDfipG8WO04Er3ewEjUaZb8wzU3pQ/aJ9YJCzjMfsxqohlAFmIlVJsOvBsA9fgN/wylsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rG8JQTDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rG8JQTDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED6EC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752047393;
	bh=4QAxWF+F8VVXfW9PyZZEkbL8ge5+uKVw79NGIRlAl5I=;
	h=To:Subject:From:Date:From;
	b=rG8JQTDZQ/vSUl0YgEOqY0G1bky1F9ZD2QCxK52kunzsha+46UBLa92D5hApYDv0W
	 M+DL/2C4GLj4ZlDpC7s/eIyaB6Z0P5qLEiXlBXvEVyIoK17KDsVAZU+fLxLh4iJCTp
	 U+bU1EZ1/79I2BaY/B32yyhqtK+BPfsFNmKfrDz38CqwOrv6RwDQdr/Q4chOfdBBol
	 /Tjm290inqBPYQrKcNCWZaiy462jDszrEUYhzbe6tQs5A5BLcppLPlhcVDNCEFWZZl
	 TclJ/x3Lo2oRzWjhgUzklSKoGE/g8VGZntRUjbqBp2zMwPS3gFpioc+AT7zGW4Kfhy
	 DEfvjKp+YwLJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1ECC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204739357.25959.5806421145904348755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a3739ded7452be53ce87882411b4eacec66fb2a5336bf3005120bf07bd1670
Date: Wed, 09 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752047393
