Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFAE336EDA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789962034; cv=none; b=Cie8M50MIchUEK+Pb4V1jwixAFDussI+eja4qYKV7wuMKRfEGdHWRz+ov9LoNAIUZW7BhKYE8VPVY7P86/nDV133m2woidaeL+MT/AneSEv6L6j7oQ7LOtEB5kjt1tLh+qIgeu63Kdf80Ps9T9M8vRu91bswgirM5k0hnvjRkaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789962034; c=relaxed/simple;
	bh=7La7sisk02dpz7d4aXYbFHQYNFQX1BDFFz0h6r6n4tY=;
	h=To:Subject:From:Message-Id:Date; b=cbC4xw9dQnm3twpJQWEzSdivPP3BofpygEWhYowMLijuJ8OER8isw0ZjQ8zPNC91j56H3tqYpmJSn48MmbJZYZymrPn7ex4MSejbN7Ju31427kKkbhIsBDeI8YrI75WbmVhIz95ozxL3xQhBJERsv9wcAgGoqDISJuWzI8bS8Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7cb4yeV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7cb4yeV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2C7C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789962033;
	bh=7La7sisk02dpz7d4aXYbFHQYNFQX1BDFFz0h6r6n4tY=;
	h=To:Subject:From:Date:From;
	b=a7cb4yeVGFep7lBrH3h/XeKDRe4RP/Xh/OFxqgwOG8atte5fH7sKhC4wgLwaPRbO5
	 Yo8v+uuz04X5kIZsnqyaq+bgqo21IHX2h23aGO3WS0xrWz9VyWgkBqzdasnu7cdd8z
	 gS+WaNQPCCXhs00Lh2U573Aiptk5875HHXlnovXDVaJ9ALuXB3z/1bYZHm1WmPPMwD
	 MNQSZQZASAmUpyTeqRzD0hTBbvrOtAtVUxwoRkomhDDgFRX+F2XUZFhKXCpQ7EcXYp
	 OM3OfsWouSta/cZ8o3mFdXR9o7GpcFDnOnIAcrwKyiZelNxDJRxtJqItgTFuWRrW+o
	 KtFy6GiC7cSng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D1EC982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996203374.22575.4489811067123549578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4555e5579cf6edb123d875c973b871c8da31a3c789d5c6fa72afbacb8567f40c
Date: Mon, 21 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789962033
