Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4BC1DB92C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792197034; cv=none; b=Bq9BbqD/4eGpwEYqjQEwqfxno74rPNyxJjNjibka2kkUHRPIJpeJUr2W5mBhsSy8HtmAPi+FE75/hGQG2rTtGFJyQ0r1LkTTukQ44OlNel3r20V7rEcLKz0PY2Qlg5xxvd26hQtlPqY6wYMZyaBSBqyaQ60mHOdL275kOX15z8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792197034; c=relaxed/simple;
	bh=NdueXqpgNCkF5VBvfBwGYH6/cdhqWwu8DgdFnz8AomU=;
	h=To:Subject:From:Message-Id:Date; b=BweeN5ZIu/AQcoz8RW5/PxOkUeB+UkvdKu4octUAQJRxE92Syn8IheutO6WwISOaUBwJLytvRsXdwa0Do7jdl2F1VfLXutzfQh/AshsYRNkWh7Dzp7Z6Xsh6QpUsNL2v/GDyni0iVxQwHudsu7QPM5Gr+eygp49FS5R9uI6WiDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sODcYxym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sODcYxym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1317C2BCFB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792197033;
	bh=NdueXqpgNCkF5VBvfBwGYH6/cdhqWwu8DgdFnz8AomU=;
	h=To:Subject:From:Date:From;
	b=sODcYxymAEcAOr0Vf4bAoPnhpswI1OmENupmQrHgmZGgXrdDkyamKEEeQfpCuhRRd
	 dwAHgDR8avJgKVr4oFfqLEOB6HKHz/zWeMCKjnzE+DE4/6zoOXeVMxws1LE6XS3GIH
	 yIE6aiiGJ2Igev95zn+FJKkDTd3We6QV/ZWVePff05C2RxR6+QF6AJIS8eK9GhTOA5
	 t44u84Ed9ygYd4Ix7T/MTOY4OrenKZ/3+SNsCH/Eu5ohVweE30m9yZWlPRy1/kEARH
	 t0PdPnSkmescCa4mifNIJySIzdarULghDaUsFAV0UzfmTdUHtgUxTO47Zm0ZlBLKf3
	 kuhupRPwMIRSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0F4CCA46C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219703369.17658.14153883317937470337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52793c162e8e43ad1fd49f08dd411ff3f991ba3d583197d60cc94db59066f9ad
Date: Sat, 17 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792197033
