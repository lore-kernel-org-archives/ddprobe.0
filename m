Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF7C2D7DDF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768331034; cv=none; b=aOxnqzHfYnZb6dgAOagly6fNBdB4ayMQYFBBOEaAn6xy70QYlZescMKL+Jg7lDXgSNXlGQsct0pn4g+45WXphx4wdnUJwvRx075hBWTA6Pj7NKlHghLNUhFhGIzhRJOW7Kxf/VcYVwbZdj9oLX1airGEN52AkLItTO9CNFZOUFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768331034; c=relaxed/simple;
	bh=RtQwzd9ryqLV6syp2Pr/of09O8qrSqzR9iEwvmquJOs=;
	h=To:Subject:From:Message-Id:Date; b=Nghrh8EH19ted2VOdQ+HxWmeyI/eWZxDw40kinCj//fMjHW8UjCQBuuLgtUDffprnVwBPrwW0LymMXERTvoXedL5m10QwlX1RTj93l1dKD1qURyMj9tmfBcRsmshP9SVMFKkVTxhNEW7Sn/TNdHG4Q/+zuzphNBD7cg76WZbM6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epSUhy/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epSUhy/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C817C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768331033;
	bh=RtQwzd9ryqLV6syp2Pr/of09O8qrSqzR9iEwvmquJOs=;
	h=To:Subject:From:Date:From;
	b=epSUhy/eLqyNVDd4YvVkBxfOwiJ2sRt+Sy90BmMVhIRwYllxLLk7IYAb3nJQIa/FJ
	 bKieM7N3oJvlXojYHfGGWNfriLlR3sxXXfZ3ocjsNSmbrFdw//GZ0xrSkF+bWJh1t6
	 m7ftd4TCfBDMNLqI52CTvkUP+UCPpQ2VtJ0DhKybEUd2qXbOpS6guvNFrRmRqRAuU3
	 qfKtlweZmIaUmgXylLHvqF0Vs+iNhjOMhQzSWsV8Gy5Rs3DlhubY4md1PWlFjG1AOb
	 ksiLmSrxQ91lWuM5fqUIJhAYu8HCN/B7pjscH1g9wemJj35fwiLcaq1lDoWT7qMxpC
	 4Bv9pwh4N5PDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8BAD2F35C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833103357.6462.2650737691082955540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473ade6fd53e6c7517be2c490725c604d972c9907622dc1d93447efc24f60cda
Date: Tue, 13 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768331033
