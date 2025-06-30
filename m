Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4F825395C
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751278193; cv=none; b=in5dUSmNfPmzaSRFfc2wqTXrofZHj711PMBJLzw5PwVQ+Fjnmho8jftiNguR1i550qhfMV1kWNsNP08sIebEZsboA3OiqMUChEX3nzt/8PS2TUm8+rSgEzWo4SZDaj8Wg+rhqJLUWv0LoxO4mABPu2AvLjBIXHm4eelHKjdbmck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751278193; c=relaxed/simple;
	bh=wZzr7SsW2UTCj+6AuC2RJR5OzNAxSNGDMKjFUdBugtA=;
	h=To:Subject:From:Message-Id:Date; b=iM7bqt+atu2s3qBvOoRF7Ks0rrvDPQB0LT3s6WV43KPCG4Y8GFid55JGqWcivGtBmSnvLgz9YYF+O50uZMqtun3yif2NghSoGE0kUC+wPKIMeHFJNgJ7vqRU0ZhAmxuMyQwJG9IKLM2W4cOcRHVfLZxtrgN9saIdtxSOzJe+iBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnGpW4c8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnGpW4c8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA92C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751278193;
	bh=wZzr7SsW2UTCj+6AuC2RJR5OzNAxSNGDMKjFUdBugtA=;
	h=To:Subject:From:Date:From;
	b=XnGpW4c8pzmb2h/N1U8sUSTrYY/OmR4sawzxWVmJERu5b5SHzBxR+ZlJnzfM0/M+k
	 qeIGFGN7N0iamXcO4dDqNnHiiMa/F4lEt+cvEC87anmLU2qQcPK9jJcBxVPf34VpTN
	 dWtBT8mRzmcTaJh2hMbncWQqZb6zDMdSD+Atpx71aHJmxggLb7NBFWPjDhoOCWfWmk
	 CZEkyGnyGttPo0ZTHz2pTzV/jfP0JpiqBN+Q/9kW6oLot16Ngclx07ju9fTlDuML7V
	 AInbdyAzzdfOCd5B5cGwElYGper9UUhi1Te86rH9MdkOpkZFO+5xxwKR+0NX/vZGea
	 oSHFbQA3PNHcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914CCC7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127819357.15641.12593327392844484643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d371fed9ba1c69b07a49f118019613b2ee3fb383605e543682c1ae8ba94c1d6e
Date: Mon, 30 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751278193
