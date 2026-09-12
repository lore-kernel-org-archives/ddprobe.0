Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941112FE59C
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789241434; cv=none; b=eE6J6vz6sFir6ur67hhXiNR8i2htMt74WxEsg/SBi/4va6P3XYtmL/OAYJiTu5yNttF94DnjL5ERVeO8S9Jh+eg6dYG8K1z7WO3fvTazXUqwZcN8ywABBKoO9/egl606KCpmIzLqidohj8nbwyv8n+QEJ1bUDA0tFDk8lUfeNPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789241434; c=relaxed/simple;
	bh=UzcBxt/zSaX2PgoqutfoIPxC7xUw5H7YitCby8SZMUI=;
	h=To:Subject:From:Message-Id:Date; b=W62pYAIaf9X6eQBg2VmG9siYQZ7DOgxdYN64gZrLHQBkesU8SziQ0fwDAgjPu6kEQ5URVSp0+YI4oUre5mmy0o/L5KFr2/0z05F7SZaMv7pEXJRKVKidLu+M08DIsBvnV31tPPdKMrC1Fl6bt1ITnni718A5mPzahdec0GxFqmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9T7OYOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9T7OYOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58B4C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789241433;
	bh=UzcBxt/zSaX2PgoqutfoIPxC7xUw5H7YitCby8SZMUI=;
	h=To:Subject:From:Date:From;
	b=i9T7OYOLWyEG9lvzdwUnTuNQxJ6mvdFS+qzQJw+Nxh6GElBROkU/FfAR7jpRLjsPN
	 WEYDfcy3ArUA8v8UfTnndEX0HJoaNZ1IvoKQFJZFmSpgrjYWfj+bkm3nZOT+PI3Bup
	 v6gxEJiJMrMZCjqiMXf7O9URemu5ThA1VEeND00ytidmZxUDtltKckYrgcDZYCDg3I
	 neiSnHlwV9itHer5nbD1yVfqWif0+KcsyHFmb7pRLUd4mOJCyHZdr+XyTIwczwjvon
	 m6wKiuVet3ks9QBAK/IZcZPykwEOtCpgpS8XFd9hwYGtq2tA1jYsI4WALqMXEbfIBI
	 i74VCihAdvztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBF2C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924143368.15282.8998872646998020700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b892849562774a4f9012c137c96cdc89c70aaa17dd7c11af8ff07fbd9c8064
Date: Sat, 12 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789241433
