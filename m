Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB0E1A6807
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774080294; cv=none; b=hAZkOyVSDX4wDq2kTQbqTT3WZ/i9m30ky3tkw4aX2lyehSacS+kCKUIHL2PYmtNh0ADt30N+m/iwbXNrzHprC/fAgPDNekKnJGgBSz0dcM7u6tolIexYS52iaMf1Z2UDT6QMK+pFqgK37D/qQCBMYqaFPQZ3L7kF43szRpdLu3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774080294; c=relaxed/simple;
	bh=seI56CDn5I4kF+qxztlpBKJaSFRCdjRN5mEhP7ZTlBo=;
	h=To:Subject:From:Message-Id:Date; b=mV5RcR4kc0dNmk1rYeDPvYqSrghG2hcD23WvGD1bZyBTTRW5xzdDlTkMlCZkxCQH3sS+gbRGov+d6BnUIQ/BYK4jvA4UbU/55OieKuxIcXqp8SI7HjFl4BqdnOyIhPTi9S46oYNF7An1QJsS1bpS19L/MUIzP8ouMINbl2jPfuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SH36iYXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SH36iYXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1237C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774080293;
	bh=seI56CDn5I4kF+qxztlpBKJaSFRCdjRN5mEhP7ZTlBo=;
	h=To:Subject:From:Date:From;
	b=SH36iYXkmCFp0cDZbs53CJXFEyy3MqUdp313a36hQ7GKc9788ws3/KPrms2iRCA9C
	 OwLAHaBxgUoJLRD0Im2XCJWKX7sU9BRk4zMrnRlyYL0g6u+hXiLc6nnbFwziodchFz
	 lJxv1DUm6Uj4RzwrK9UsAqm1LpbzFlEYIgow5YnMSZQ9tn5fkwqI17Mf8QqfotpMUH
	 mT38r8N+GnmSDbZbd4df+WslPBp/LXIO8xrMsTxdcrcg7saAxJiYH5n1yHEbPsb2Wg
	 jFdmzbguhiJvQRUVCemgrk4/dUSVuqIGJd6avIUWujggo9ojrww0ly0xRK9AyyggtU
	 OufIf/YImeJKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE5A1094461
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408029357.15325.4289067031348677336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb63a234563a6b8c0253eb34fbb56dcc38fc5766192679447d14b1f6e8a8ae6
Date: Sat, 21 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774080293
