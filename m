Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE211F61C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720217123; cv=none; b=ahEdbYMV2tujk37F3TxjQ9mRypdNp9CkGVMonHaLngdWUl5Dhp8rXzTfUndoNSw75TUCnoiDGTq6g9jmaOsl2ReCoD2C/QpEsMMz4n7RL/RieYe7Ych6weJokz1y3ZM6+5pNMhcABQXKjYq2Ptccxrji8tgGqAagPoTjlXGuneQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720217123; c=relaxed/simple;
	bh=9Y/WBxDRfLRZ8L1kA48UEq+nAcQfWkOTowRZ2Xdlhis=;
	h=To:Subject:From:Message-Id:Date; b=aOMdYU0hA1FHcyKVWNzNCdvUZBTzs75pihY2NBgZf22Hfr+n3P5JknxcyhP1inJZQUEXZjCLDt78WSQKPxPXcjTvb3XJoCqjecPr3jRilx3TjZyOK8mX0XnTZz/Jytojgw5VvW/8rVLwTP2mnqVbTChGboS2aPaR1fIkkSHqhXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/vvaTId; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/vvaTId"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B58C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720217122;
	bh=9Y/WBxDRfLRZ8L1kA48UEq+nAcQfWkOTowRZ2Xdlhis=;
	h=To:Subject:From:Date:From;
	b=X/vvaTId0VdjQjO+D3gFSvGR4hYl6tivivlYgdmtwdkmvsapshgqxwnQjAh+Kocjt
	 zaqmA856V6Kqvghc+XJfBNhKsmG5MX/KQm6FgW2OwhXhwEwDrd5cvlrze9riUolXsC
	 AP5aJBFnB2wMq9VPIexMCz5ZiUUKc+UJiOxP9wrVV15su7VSLnf91rYw+yF0gJEvMA
	 H7xdkW/QKQ396H6A6ideKBWydRCSrXTJ2l1F1mHhQA2uRfT2nM8yaAzGWPv1XARGcj
	 S+4cvJ/NPKEsnKPp2LySwGA8LNPN2VINZc7idhIRrf7JLEM33NXAScUuK/ynRzo4nM
	 l+Qa6GkIXbw5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8071C38150
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172021712280.6184.2375988712254170680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d54293137230dc055f68feaa52d7d358c6df86b8e4dfced585ae5a8c1acd41
Date: Fri, 05 Jul 2024 22:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720217122
