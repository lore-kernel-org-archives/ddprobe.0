Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A0235979
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774232694; cv=none; b=RePB9fHQA2E0C/PCPi2MgMrSRtp25MkFzV+wF46IogRUu54OQ6iCFbuG3xPfG6RKaELf7Am98R8dvQWC7f2KVlRvPIDyvbcmyc1hpIrujAX8aZ4P2A1C+YPzOKUWoc+6SO1kUFwqaqOd7FV7fB458E6Yl3a+zy/rGN7mGSpvp6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774232694; c=relaxed/simple;
	bh=TLiFySvehvOnlGsbGbKtGlYZFHjMYVyW24TXs4eN8uI=;
	h=To:Subject:From:Message-Id:Date; b=M4G9eamGhxAyUAPF0a+lR57NMXr2IQa5ssr7on4xak55hwzts56CJavMBYD4zQEe/wB/ZhfdysqfqH93bjZUBlbL99UMOlM9juINjcGSN/X1EPogmaqeM34dAHqwyPxtrbyrcp+kpHhGCeIIAzK7tYMS0SYWLIuOfciIhoj/Ez4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvbEqlbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvbEqlbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FEAC19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774232693;
	bh=TLiFySvehvOnlGsbGbKtGlYZFHjMYVyW24TXs4eN8uI=;
	h=To:Subject:From:Date:From;
	b=FvbEqlbrr7Ui9Hb7bAfnxEpieQ9ldX8ManfUCQgsZ+au5rlUCjVXd0Go8tCLzi5M4
	 QnUfR3my/u3WcJh8L/WMWwZcziuPcJdwbmucpC7BmC4BqWesaXFasunQwkQyt4ZMVb
	 1zht9WVlYHtmpOb5h4kqA3lRxeeBCKBaK9CuEXGTCLhgnyTuzK9r7QBOPFWyKnMWP1
	 qvQQq9WEZu5/p4rxpG98KiJ/wneGSRCF8njao48Ic2215Lg05UsjUxM9rtnhOlUXgK
	 L4M2ULkcAzjWeKh9dYO3jOaofbxZnbrDIxL7sBDdePEcbo82UspiZNRXMsUOOVpv9X
	 VVXDbBVNuqQXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE38D58CBE
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423269358.18666.768268117480109975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f383cf4f5a60d8c9bbf56dfe133d2d5c582364b78f7fc08a940e6fd2b32f1d
Date: Mon, 23 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774232693
