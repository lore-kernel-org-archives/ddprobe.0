Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFAC288A8
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751134194; cv=none; b=sSn/8TVCvfE0awIKgIxmEYxVcGA+CdsT/iBSo2eehEL6ww8o0BXF9Cba1qpJmrCwz7HIuzlTZoLmPfypnv7oi82ENdDikXMMt4FJXErxdWW1AqbFHnsoo+c0NPL18ku61sDuiI/J3BKka4uinQtJ4MBKFkS5CYsmJtonWvjJOFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751134194; c=relaxed/simple;
	bh=NNeUamj0irQYr0Ao44PewBeCtkBVZNF2ck1xQtEeJOo=;
	h=To:Subject:From:Message-Id:Date; b=CLIeFTmLIgTcL2qbTYcMMdN5tjB0p3K7xeqqsfGxxrtPDpTr6LT8pf75zrPHnL0TITLIVbL155PR9dw7sx6IYoKcr76/rmCkufNJ1pr4uHNM0iPKJcvXhjIlOlKeVxnPe8WlQtcpuJ1gn/hxHDaWzyVnyQ5gLwAGONOz6ZPd6YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKZ4aYqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKZ4aYqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA75DC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751134193;
	bh=NNeUamj0irQYr0Ao44PewBeCtkBVZNF2ck1xQtEeJOo=;
	h=To:Subject:From:Date:From;
	b=eKZ4aYqhTmgWqauEuFvEH7sMEdKHhIeEw/F/wGmq8YNvPoHqM1c0qSeX9JO2bp+hr
	 Czf0RtTWmeCHfGPv9lATBDVpZKwoDi6iLb+5ZdKOmWoAZhADl+FH54DhlUOOwfadh6
	 SWCkf7M6EgNplIy0iSzzMmXx1BZI6/2xtk3y/y66Vds3OJASY3KlJRKs+DQreoWvV2
	 ig1T1JkWmvspvHkPF1bYI7TNqpZe+WjatnKqDGnNyWXi7CcRzDDuqTUouBzL5Yhvpf
	 a5DQ/1s36Rb5Wq9OXg1MDUoafU46lqchBRaEJVLxIpImdZW8MdchwVN+PgQPz4D6bc
	 M+zd/A+aTBjgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EC6C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113419358.25863.18034629138467072146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfe8eb3fce464fe79dd37a55d440ba6f6b1a21446b4f62466440a8c4ca6b6ec
Date: Sat, 28 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751134193
