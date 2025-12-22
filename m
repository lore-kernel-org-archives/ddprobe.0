Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237D033993
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766370834; cv=none; b=YrgFW5mKvvq/dsZap8zktmLB7wtI1uMN7obtVsbkpDJLvye6GaU03RR7ZvqsXoai5GFmD3Y2OENaRF/Z8cEG0z28cPkhIaiYD62SdozE4MPNhppH+1gCza3qAyYuQtbS0JP6Cp9EYoFqJGdqI+gDAl6krCw8upCotzy4fhR8kKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766370834; c=relaxed/simple;
	bh=Y3x+2Hfit2NfPRK5tblGBEXTSJjivGJdJh7u8/oeAus=;
	h=To:Subject:From:Message-Id:Date; b=HrqGzwiXONUOKplDPUuSFsVPtsvpHW0m7xd6Ho54gAG/tBvTCeoc/AVo7T9BMnlqWOZK8PMN+yCVXd8JIb71WPROkQ+AZDIH60lTXAlI87hagYYvm6fnyJoxSQM50GUoLBeghP2amlnguHhL3SsUkLxw7OcHRP43vqEfiDMBaJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kexhL9v9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kexhL9v9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C6DC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766370833;
	bh=Y3x+2Hfit2NfPRK5tblGBEXTSJjivGJdJh7u8/oeAus=;
	h=To:Subject:From:Date:From;
	b=kexhL9v9Nqf2h8n6uC+N7R4KV94rOTX8W9DAMM2zcVeRjr84ggciZ79AY/KaunOm4
	 vXCkZ/VCFrxYtxQS4AYtvfoE7lZVndIfnTcuK3gLki9OU/zi2rmpIKS9UQFfs3kRjE
	 DmH8WAQV2RxfAmI5zKKXpcyIayHupQc6yeWsFVl64W79kqSgRpPdu4y4YXfHcvrRc2
	 4Ut/+ilkWXCIi+/XKubjAmMpYEfVimK/MtYzrtXEgwRme45pB5r2lCHGgDjti+cJU2
	 xq5cd1Jry/xSGoDBUUIcpG35n/SpwNYE1yaKobcbPXu+H3ni/0keuCIrIWvlRz3J0L
	 PSticYbE1lsiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923FBE66886
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637083357.31541.6307650408339566855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb113096ec0608282643fe872095d88754c2a1371c197b369aea231c3232b9c5
Date: Mon, 22 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766370833
