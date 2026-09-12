Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EC7478E47
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789213234; cv=none; b=CoXCDTbKfzT3ybXpEfwMY3ZBFP52PXW5ZXjqIN+nEJErQ2qo2Mys2RfG9jAascml/0iK3E4E0eKuaovVtWWn8ms1rY8ZoZBTrz4DHCGYQM5yv5S1XagAdH7sMCyRgCQN1Uxv2wWSndaGqBpRGRYJM4IHp7b6OzfsuqRYuiP2UrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789213234; c=relaxed/simple;
	bh=K/qctxlL2SnNBm/j/t+/N+PuXt4+3oGwl6xtue2BO4k=;
	h=To:Subject:From:Message-Id:Date; b=K0ZyjQp38F/L9qetTSqTCIGIXYeuDf9u7jB8rtH+pd17P9vQ1m5+wEKpk/aTnoga0Ha/WxOCS/2He8Q/cORgGY0TNTAgxz9oxkvtLPZzruaqFGG1APj9InfoMFY4B5sIRNhga6KwJVxYLeQRmyl5s72I4vpanmRbUy7UUpXKUcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/bKH/uL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/bKH/uL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD89C2BCFC
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789213233;
	bh=K/qctxlL2SnNBm/j/t+/N+PuXt4+3oGwl6xtue2BO4k=;
	h=To:Subject:From:Date:From;
	b=t/bKH/uLk0HfdmCbkM4BZz8Cxg7MPCNwd72uLeL0DRb/C1GtgxW9MYcH2zB44VTqK
	 xMjuCxx4/6wZ/VthetZqUHDdzJawr6cb4Am4rHw8VHJ7B37lviQFsLNDXg9AbEJsz3
	 Y/wDJ6Akis7j7jpg01YNJiV31ccKhfNhE701ZcyFPmoIw7T4dFhwBB1dHV/jHxkSgM
	 BC7y0xZSQuHtOWVui+AjquUYIBg/tmkF8t/DeOjad5Cu1gSjl/kAmdWIBP+khM5iK7
	 73FZp+lEwvRJ+2zbJ5n9g9YACanp5VBiT86yaDe6jFFhIIHf4COR/0/i4D15gPi3p3
	 1439IWF5wRCFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E26C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921323368.5857.7093883866225420518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4adef8cf37726e62a7e56ddda7d0559b0111e9f36684af3008765fad236d9eaf
Date: Sat, 12 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789213233
