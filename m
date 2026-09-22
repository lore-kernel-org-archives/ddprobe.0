Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDFC24501D
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790039434; cv=none; b=UhjPSvPUzd47QSK0LjiV8DRlWokomvix1qGSQUAatq2FhjNY5VlYOUrejQMkugGr5HOAslSjaJXpWf0cFT3TD+dZ6aWXutJkq57yaN+V5gLFYYrXhjVxd2QqAFmIfIgqXZB9/PlQMJy62FRk0WCpyLl263Cr4czonCnOcbRxsfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790039434; c=relaxed/simple;
	bh=JQRNu41G6xH+09Q4OC8osMjZ1cspALQv7v3CQN8hL48=;
	h=To:Subject:From:Message-Id:Date; b=n07O8xgverXO5rijOjITEZSooPr/EXnoGFbXVgSeIsYJJxhV8Xia4IsUT3P8YKojZv5qZpzZQebbWgBC7vchqfvc7aLvbFkORr0e4NcSTkmpnFMBew2RrcFExyf6qyN/Yid6YQlZF/ChsXKkAMuhVriQVl0RDU0Qhr//FZW53yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQ+avdl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQ+avdl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD894C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790039433;
	bh=JQRNu41G6xH+09Q4OC8osMjZ1cspALQv7v3CQN8hL48=;
	h=To:Subject:From:Date:From;
	b=SQ+avdl77vjw4GdHCFyRADZnJGVUyBkw5cl+eZ6Ft5V222IhiuC7nCGxg2bao/vaq
	 TYiFxr1hNTNbt5E5o0eVOkZCVnn+hW++/kwdgebGdGSAjvAVDhwHJ75Y+IpDQ5ODKB
	 Ynj7b5UZhXP8+uXFB/KtWMEojnV66GAm1BRhm2dGJeoaLDcLUh3VPLxweRkq253r7h
	 VaVwvASG1ww7uBMj9BqJxTx8u8AeciWfu+2tKUFqVKnj/c4Kb9R4an9pZTynThJ/7v
	 7uHj8mIOUJzKbHwCPjznbPWv6aQhaCbH7rJboVhAP5wjaoUkUKTD2r9Ud64qbewYjr
	 LGYSrWe4+/3gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA986C982F0
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003943369.29777.5133613334048213450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24cc062cc2e1e20c3371361d1abfd4507367a749af55f8dbe8b59d0a9eb61bcb
Date: Tue, 22 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790039433
