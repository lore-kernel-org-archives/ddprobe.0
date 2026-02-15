Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2623717736
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771194894; cv=none; b=jVibKI3P1BP0wUxIOghKmddZG1VBXHNC5AFVYEoPDpzvuvQjSee/PI3EPWq+RNJBolzwQ14iMavokxScvVM9vBjvn5MxL0yDF4L6WJgxLj8zwVlCqJTAxkEixpWKUm5L+B2qWFGE8W/NDx9hKcOxc26V/8n1+7A1wZDpydrh2AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771194894; c=relaxed/simple;
	bh=M7sprPjGBkkdgOt15+I0CX+lqkV6e6Zk12/syJcske4=;
	h=To:Subject:From:Message-Id:Date; b=T61OPA5F9U9m8C5XaGGek2kfceetHL4j0BwF0el2lvsEhHhQcG+qxW2Tn9xrcTRYytEsvSvIx9LH/2ncbf1TkyxFxzYgHm5sS9AbxFcojniw2ILwjug67dLKNg/gExOW0/kK+EhO6xa2+Kku09Ou6ukn7dgTLhha1Rahnl3nRmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfXJ6Xzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfXJ6Xzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF71C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771194893;
	bh=M7sprPjGBkkdgOt15+I0CX+lqkV6e6Zk12/syJcske4=;
	h=To:Subject:From:Date:From;
	b=CfXJ6XzuZVwTTzqnV7nFGPwfGsfrrbdzj0LQ/AX+p/27iORbbRRWfmNHqpzdgfoaE
	 whMdHN+o5NOGG09X4p3e+N5n7P+LHbFL0LlxWzGUfKJ/MHQHnIWHXXLpQMg0kKY3HT
	 Vc1RdhEaIZSEd0GTHid2alQWNil401zUPYNtZkkiOIUna6Ca3uuz4GhO+2vVHmH3K1
	 ctIJ8vhlP6fabgN/YJuQtaJBeQWi+/94inBlHK4+B394Pgwe0KBBZVgzgEah7FXptG
	 ooSlEFdg21qvw1wPj7B+4pBMgRxQ85TiB9qrzLHhVmunCPOxbF3HCm5AGtWDZ/uA7a
	 oMNLLBV3CSnDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957F4E63F1D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119489360.1962.14873285274028986126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a8e423991a6d99c6b624fc4712492a89cac554bac5ccacaa45107aa16160f27
Date: Sun, 15 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771194893
